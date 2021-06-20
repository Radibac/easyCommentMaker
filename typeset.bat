#typeset.bat

setlocal enabledelayedexpansion
set index = 1
for %%i in (text*.txt) do (
    ren %%i FILE.txt
    platex lessonReportUnit1.tex
    dvipdfmx lessonReportUnit1.dvi -o %%i.pdf
    ren FILE.txt TYPED%%i
    set /a !index!=!index!+1
)
endlocal