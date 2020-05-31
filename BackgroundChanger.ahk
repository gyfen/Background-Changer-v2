#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Open an explorer window, where the user selects a file with one of these file extentions.
FileSelectFile, FileName, , , , *.png; *.jpg; *.jpeg; *.bmp; *.gif; *.tiff; *.raw

If (FileName = "") ; If the variable FileName is blank, the user didn't select a file and nothing should happen.
{

}
Else ; The variable FileName isn't blank, the user selected a file.
{
  SetWallpaper(FileName)
  SetWallpaper(BMPpath)
  {
    SPI_SETDESKWALLPAPER := 20
    SPIF_SENDWININICHANGE := 2  
    Return DllCall("SystemParametersInfo", UINT, SPI_SETDESKWALLPAPER, UINT, uiParam, STR, BMPpath, UINT, SPIF_SENDWININICHANGE)
  }
}