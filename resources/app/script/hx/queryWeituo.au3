BlockInput(1)
Global $main = WinActivate("网上股票交易系统5.0")
WinSetState($main, "", @SW_SHOW)
ControlClick($main, "", "[CLASS:SysTreeView32; INSTANCE:1]", "left", 1, 77, 210)
Sleep(1000)
ControlClick($main, "", "[CLASS:ToolbarWindow32; INSTANCE:1]", "left", 1, 164, 22)
Sleep(1000)
ControlClick($main, "", "[CLASS:CVirtualGridCtrl; INSTANCE:6]")
Sleep(100)
Send("^c")
Sleep(100)
Dim $text = ClipGet()
ConsoleWrite($text)
WinSetState($main, "", @SW_HIDE)
BlockInput(0)
