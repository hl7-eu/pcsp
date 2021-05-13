


call :generateMd index
call :generateMd logicalModel
call :generateMd collaboration

REM pandoc %in_dir%\home.docx -t commonmark -f docx  -o %pub_dir%\index.md
REM pandoc %in_dir%\logicalModel.docx -t commonmark -f docx -o %pub_dir%\logicalModel.md
REM pandoc %in_dir%\collaboration.docx -t commonmark -f docx -o %pub_dir%\collaboration.md

REM pandoc %in_dir%\sequence.docx -t commonmark -f docx -o %pub_dir%\sequence.md
REm pandoc %in_dir%\sequence.docx -t html -f docx -o %pub_dir%\sequence.html
REM pandoc %in_dir%\copyright.docx -t commonmark -f docx -o %pub_dir%\logicalModel.md




echo off

:generateMd
	set pub_dir=..\input\pagecontent\
	set in_dir=.\word\

	pandoc %in_dir%%~1".docx" -t commonmark -f docx  -o %pub_dir%%~1".md"	
	fart %pub_dir%%~1".md" media/image %~1"-"
	fart %pub_dir%%~1".md" "\<" "<"
	fart %pub_dir%%~1".md" "\>" ">"


GOTO :EOF

