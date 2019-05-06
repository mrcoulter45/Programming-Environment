;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls -l --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

mbedir=cd "C:\Users\miccou01\OneDrive - Arm\Documents\Mbed"
home= cd "C:\Users\miccou01"
docs= cd "C:\Users\miccou01\OneDrive - Arm\Documents"
desk= cd "C:\Users\miccou01\OneDrive - Arm\Desktop"
subl= sublime_text
gs= git status
gb= git branch
gr= git remote -v
gl= git log
gd= git diff

ci= cd "C:\Users\miccou01\OneDrive - ARM\Documents\Mbed\ci-test-shield-fpga"
i2cnucleo= mbed test -t ARM -m NUCLEO_F411RE -n tests-mbed_hal-i2c -v
ioexpnucleo= mbed test -t ARM -m NUCLEO_F411RE -n tests-mbed_tester-io_expander -v
aninnucleo= mbed test -t ARM -m NUCLEO_F411RE -n tests-mbed_hal-analogin -v
exportnucleo= mbed export -m NUCLEO_F411RE -i uvision6
compilenucleo= mbed compile -m NUCLEO_F411RE -t ARM -f
compilek64f= mbed compile -m K64F -t ARM -f
anoutk64f= mbed test -t ARM -m K64F -n tests-mbed_hal-analogout -v
