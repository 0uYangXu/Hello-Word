@echo off
set c=%0
set c=%c:~1,-8%
echo ��ǰĿ¼Ϊ%c%
setlocal EnableDelayedExpansion
for /r %c% %%i in (*.cpp) do (
	set abc=%%i
	del "!abc:~0,-4!.exe" >nul
	echo ���ڱ���:"!abc!"......
	g++ -g "!abc!" -o "!abc:~0,-4!.exe"
	if exist "!abc:~0,-4!.exe" (
		echo ����ɹ�,����:"!abc:~0,-4!.exe".......
		) else (
		echo ����δ�ɹ�[�ϵ��ļ��ѱ�ɾ��!]
	)
	echo ============================================
)
endlocal
pause