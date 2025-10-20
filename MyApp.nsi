Name "MYQT"
OutFile "C:\MyAppInstaller.exe" 
InstallDir "$APPDATA\MyApp"     
Icon "C:\Qt\37-notebook002\icon\1.ico"             
RequestExecutionLevel user       

Page Directory
Page InstFiles
UninstPage uninstConfirm
UninstPage instfiles

Section "Program"
    SetOutPath "$INSTDIR"
    File /r "C:\Users\jhn\Desktop\MyAppRelease\*"
    CreateDirectory "$SMPROGRAMS\MYQT"
    CreateShortcut "$SMPROGRAMS\MYQT\MYQT.lnk" "$INSTDIR\37-notebook002.exe"
    CreateShortcut "$DESKTOP\MYQT.lnk" "$INSTDIR\37-notebook002.exe"
SectionEnd


Section "Uninstall"
    Delete "$SMPROGRAMS\MYQT\MYQT.lnk"
    RMDir "$SMPROGRAMS\MYQT"
    Delete "$DESKTOP\MYQT.lnk"
    Delete "$INSTDIR\*.*"
    RMDir /r "$INSTDIR"
SectionEnd