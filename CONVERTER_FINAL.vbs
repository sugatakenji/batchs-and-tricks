Dim fs, path, newfolder, newpath, re, objShell

set objShell = CreateObject("Wscript.shell")
set re = New RegExp
re.Pattern = "^.*\.mov$"   
set  fs= CreateObject("Scripting.FileSystemObject")

'showFiles
createFolder()
showFiles()

sub createFolder()
    path = fs.GetParentFolderName(WScript.ScriptFullName)
    newpath = path & "\convert2hap"
    if not fs.FolderExists(newpath) then
     set newfolder = fs.createFolder(newpath)
     else
     MsgBox "The folder already exist"
     end if


end sub

Public Sub showFiles()
    dim strMsg, file, ofls
    count = 0
    strMsg = "Videos founded:" & vbcrlf
    set ofsl =  fs.GetFolder("C:\Users\lnaves\Documents\Leopoldo\VBScript")
    for each file In ofsl.Files
       if re.Test(file.name) then  
        convertFiles(File.name)
        end if
    next
end Sub

Public sub convertFiles(INPUT)
    dim  Cmd
    Cmd = Chr(34) &  "ffmpeg.exe" & Chr(34) &  " -i " & Chr(34) & INPUT & Chr(34) & " -c:v hap "  & Chr(34) & newpath & "\" & INPUT
    objShell.Run Cmd, 10, True
end sub

