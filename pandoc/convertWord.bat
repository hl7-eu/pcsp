set pub_dir=..\input\pagecontent
set in_dir=.\word
REM echo off

pandoc %in_dir%\home.docx -t commonmark -f docx  -o %pub_dir%\index.md
REM pandoc %in_dir%\metodologia.docx -t commonmark -f docx -o %pub_dir%\methodology.md
REM pandoc %in_dir%\design.docx -t commonmark -f docx -o %pub_dir%\design.md
REM pandoc %in_dir%\copyright.docx -t commonmark -f docx -o %pub_dir%\copyright.md
fart %pub_dir%\index.md media/image home-
REM fart %pub_dir%\methodology.md media/image method-
REM fart %pub_dir%\design.md media/image design-

echo off

REM echo "Directory %pub_dir%"
REM set tmp_dir=.\tmp
REM pandoc %in_dir%\home.docx -t html -f docx  -o %tmp_dir%\home.xml
REM type .\template\header.xml %tmp_dir%\home.xml .\template\tail.xml > %pub_dir%\index.xml
REM pandoc %in_dir%\metodologia.docx -t html -f docx -o %tmp_dir%\metodologia.xml
REM type .\template\header.xml %tmp_dir%\metodologia.xml .\template\tail.xml > %pub_dir%\methodology.xml
