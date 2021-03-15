set pub_dir=..\input\pagecontent
set in_dir=.\word
REM echo off

pandoc %in_dir%\home.docx -t commonmark -f docx  -o %pub_dir%\index.md
pandoc %in_dir%\logicalModel.docx -t commonmark -f docx -o %pub_dir%\logicalModel.md
pandoc %in_dir%\collaboration.docx -t commonmark -f docx -o %pub_dir%\collaboration.md

REM pandoc %in_dir%\sequence.docx -t commonmark -f docx -o %pub_dir%\sequence.md
REm pandoc %in_dir%\sequence.docx -t html -f docx -o %pub_dir%\sequence.html
REM pandoc %in_dir%\copyright.docx -t commonmark -f docx -o %pub_dir%\logicalModel.md


fart %pub_dir%\index.md media/image home-
REM fart %pub_dir%\sequence.md media/image sequence-
fart %pub_dir%\logicalModel.md media/image logicalModel-
fart %pub_dir%\collaboration.md media/image collaboration-
fart %pub_dir%\collaboration.md "\<" "<"
fart %pub_dir%\collaboration.md "\>" ">"


echo off

REM echo "Directory %pub_dir%"
REM set tmp_dir=.\tmp
REM pandoc %in_dir%\home.docx -t html -f docx  -o %tmp_dir%\home.xml
REM type .\template\header.xml %tmp_dir%\home.xml .\template\tail.xml > %pub_dir%\index.xml
REM pandoc %in_dir%\metodologia.docx -t html -f docx -o %tmp_dir%\metodologia.xml
REM type .\template\header.xml %tmp_dir%\metodologia.xml .\template\tail.xml > %pub_dir%\methodology.xml
