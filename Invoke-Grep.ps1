$source = @"
using System;
using System.IO;

namespace Netzwerker.Shell
{
    public class GrepParameterInformation
    {
        public bool Skip = false;
        public FileInfo File;
        public string Content;

        public GrepParameterInformation(FileInfo info)
        {
            this.File = info;
        }

        public GrepParameterInformation(DirectoryInfo info)
        {
            this.Skip = true;
        }

        public GrepParameterInformation(string Content)
        {
            this.Content = Content;
        }
    }
}
"@
Add-Type $source

function Invoke-Grep
{
	<#
		.SYNOPSIS
			Performs Grep Operations
		
		.DESCRIPTION
			Filters strings (or text files) for occurences of a specific pattern and returns Information based on switches.
		
		.PARAMETER InputObject
			Alias:  io
			ParSet: Normal, IP
			The strings to filter or the full path of files to read from.
		
		.PARAMETER Pattern
			Alias:  p
			ParSet: Normal
			The regex pattern to look for.
		
		.PARAMETER IPAddress
			Alias:  ip
			ParSet: IP
			Extracts all IP addresses from the input and returns IPAddress objects.
		
		.PARAMETER Exact
			Alias:  e
			ParSet: Normal
			Switches to only returning the exact passages that match it (instead of the whole line).
			-IPAddress takes precedence over -Exact
		
		.PARAMETER NoRes
			Internal Use Only
	
		.EXAMPLE
			PS C:\> dir c:\service | grep "Friedrich"
	
			Searches all files in c:\service and returns each line that contains the word "Friedrich".
	
		.EXAMPLE
			PS C:\> nslookup.exe "haka.de" | grep -IP
	
			This command first queries your default dns server for haka.de, then greps all IP-Addresses contained in the reply (Usually, that's in nslookup's case the resolving DNS Server and the target).
		
		.NOTES
			Supported Interfaces:
			------------------------
			Result Caching Interface
			Stores full Result
			------------------------
			
			Author:       fwn
			Company:      die netzwerker Computernetze GmbH
			Created:      04.09.2014
			LastChanged:  04.09.2014
			Version:      1.0
	#>
	
	[CmdletBinding(DefaultParameterSetName = 'Normal')]
	[OutputType([string[]], ParameterSetName = 'Normal')]
	[OutputType([System.Net.IPAddress[]], ParameterSetName = 'IP')]
	param (
		[Parameter(ParameterSetName = 'Normal',
				   Mandatory = $true,
				   ValueFromPipeline = $true,
				   Position = 1)]
		[Parameter(ParameterSetName = 'IP',
				   Mandatory = $true,
				   ValueFromPipeline = $true,
				   Position = 1)]
		[AllowEmptyString()]
		[Alias('io')]
		[Netzwerker.Shell.GrepParameterInformation[]]
		$InputObject,
		
		[Parameter(ParameterSetName = 'Normal',
				   Mandatory = $true,
				   Position = 0)]
		[Alias('p')]
		[string]
		$Pattern,
		
		[Parameter(ParameterSetName = 'IP',
				   Mandatory = $true)]
		[Alias('ip')]
		[switch]
		$IPAddress,
		
		[Parameter(ParameterSetName = 'Normal')]
		[Alias('e')]
		[switch]
		$Exact,
		
		[Switch]
		$NoRes
	)
	
	Begin
	{
		# Set the functionname variable
		$fn = (Get-PSCallStack)[0].Command
		Write-Debug "[Start] [Greping content]"
		
		# Get active ParameterSet
		$ParSet = $PSCmdlet.ParameterSetName
		Write-Debug "Active Parameterset: $ParSet"
		
		# If IP Mode is active, overwrite Pattern with IP Pattern
		if ($ParSet -eq "IP") { $Pattern = "\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b" }
		
		# Prepare Result for caching
		$Results = @()
		
		#region Helper Function
		function Append-Result
		{
			[CmdletBinding()]
			Param (
				[Parameter(Position = 0, ValueFromPipeline = $true)]
				$Result
			)
			Begin
			{
				$temp = (Get-Variable -Scope 1 -Name "Results").Value
			}
			Process
			{
				$temp += $Result
				$Result
			}
			End
			{
				Set-Variable -Name "Results" -Scope 1 -Value $temp
			}
		}
		#endregion Helper Function
	}
	Process
	{
		switch ($ParSet)
		{
			#region ParSet Normal
			'Normal'
			{
				# Iterate over each object
				foreach ($Obj in $InputObject)
				{
					# If a Fileinfo Object was passed
					if ($Obj.File -ne $null)
					{
						# Process content of files
						Write-Debug "Processing $($Obj.File.FullName)"
						if (!$Exact) { Get-Content $Obj.File.FullName | Select-String $Pattern | %{ $_.ToString() } | Append-Result }
						else { Get-Content $Obj.File.FullName | Select-String $Pattern -AllMatches | Select -ExpandProperty Matches | Select -ExpandProperty Value | Append-Result }
					}
					# If a string was passed
					elseif ($Obj.Content.Length -gt 0)
					{
						foreach ($line in ($Obj.Content | %{ $_.Split("`n") } | Remove-Null))
						{
							# Process lines of string
							Write-Debug "Processing line $line"
							if (!$Exact) { $line | Select-String $Pattern | %{ $_.ToString() } | Append-Result }
							else { $line | Select-String $Pattern -AllMatches | Select -ExpandProperty Matches | Select -ExpandProperty Value | Append-Result }
						}
					}
				}
				break
			}
			#endregion ParSet Normal
			
			#region ParSet IP
			'IP'
			{
				# Iterate over each object
				foreach ($Obj in $InputObject)
				{
					# If a Fileinfo Object was passed
					if ($Obj.File -ne $null)
					{
						# Process content of files
						Write-Debug "Processing $($Obj.File.FullName)"
						Get-Content $Obj.File.FullName | Select-String $Pattern -AllMatches | Select -ExpandProperty Matches | Select -ExpandProperty Value | %{ [System.Net.IPAddress]::Parse($_) | Append-Result }
					}
					
					# If a string was passed
					elseif ($Obj.Content.Length -gt 0)
					{
						foreach ($line in ($Obj.Content | %{ $_.Split("`n") } | Remove-Null))
						{
							# Process lines of string
							Write-Debug "Processing line $line"
							$line | Select-String $Pattern -AllMatches | Select -ExpandProperty Matches | Select -ExpandProperty Value | %{ [System.Net.IPAddress]::Parse($_) | Append-Result }
						}
					}
				}
				break
			}
			#endregion ParSet IP
		}
	}
	End
	{
		# Write closing line
		Write-Debug "[End] [Greping content]"
		
		# Return Results
		if (!$NoRes) { $script:NW_Result = $Results }
	}
}
New-Alias -Name "grep" -Value "Invoke-Grep" -Option 'AllScope' -Force