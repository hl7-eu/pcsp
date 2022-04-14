
call :generateMd index
call :generateMd logicalModel
call :generateMd collaboration
call :generateMd maturity
call :designTable maturity

GOTO :EOF

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

:designTable

	set pub_dir=..\input\pagecontent\

	fart %pub_dir%%~1".md" "<table>" "<table style=\"border-color: #000000; width:80%; border: 1px solid gray;\">"
	fart %pub_dir%%~1".md" "<tr class=\"header\">" "<tr style=\"border: 1px solid gray; background-color: #E5E4E2;\">"
	fart %pub_dir%%~1".md" "<tr class=\"odd\">" "<tr style=\"border: 1px solid gray; \">"
	fart %pub_dir%%~1".md" "<tr class=\"even\">" "<tr style=\"border: 1px solid gray; \">"

    GOTO :EOF