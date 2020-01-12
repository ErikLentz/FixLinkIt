' By Erik Lentz / 2018-06-26 '
' Kills LinkIt, tells them to unplug/replug PIN pad, wait for Welcome, then starts LinkIt when OK is clicked '

option explicit
Dim objShell : Set objShell = CreateObject("WScript.Shell")

' Kill LinkIt '
objShell.Run "taskkill /im LinkIt.exe /F", , True

Msgbox("Unplug PIN pad and plug it back in. When it says 'Welcome', click OK")

function Determine64BitMode
    dim Shell, Is64BitOs
    set Shell = CreateObject("WScript.Shell")
    on error resume next
    Shell.RegRead "HKLM\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir (x86)"
    Is64BitOs = Err.Number = 0
    on error goto 0
    if Is64BitOs then
        Determine64BitMode = InStr(Shell.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir"), "(x86)") = 0
    else
        Determine64BitMode = false
    end if
end function

dim ExecutingIn64BitMode
ExecutingIn64BitMode = Determine64BitMode
if ExecutingIn64BitMode then
    objShell.Run """C:\Program Files (x86)\Demoteller\LinkIt\LinkIt.exe""", , True
else
    objShell.Run """C:\Program Files\Demoteller\LinkIt\LinkIt.exe""", , True
end if
