@echo off

::���ó�����ļ�������·������ѡ��

set Program=%cd%\60sminstar.bat

 

::���ÿ�ݷ�ʽ���ƣ���ѡ��

set LnkName=��ȡÿ��60s

 

::���ó���Ĺ���·����һ��Ϊ������Ŀ¼�����������գ��ű������з���·��

set WorkDir=%cd%

 

::���ÿ�ݷ�ʽ��ʾ��˵������ѡ��

set Desc=���ɵ��

 

if not defined WorkDir call:GetWorkDir "%Program%"

(echo Set WshShell=CreateObject("WScript.Shell"^)

echo strDesKtop=WshShell.SpecialFolders("DesKtop"^)

echo Set oShellLink=WshShell.CreateShortcut(strDesKtop^&"\%LnkName%.lnk"^)

echo oShellLink.TargetPath="%Program%"

echo oShellLink.WorkingDirectory="%WorkDir%"

echo oShellLink.WindowStyle=1

echo oShellLink.Description="%Desc%"

echo oShellLink.Save)>makelnk2.vbs

echo �����ݷ�ʽ�����ɹ���

makelnk2.vbs

del /f /q makelnk2.vbs
del /f /q *.bat

exit

goto :eof

:GetWorkDir

set WorkDir=%~dp1

set WorkDir=%WorkDir:~,-1%

goto :eof