#Requires AutoHotkey v2.0


~LWin::f15


LWin & g::{
MsgBox "hi"
return
}


f15 & l::{
MsgBox "hello"
return
}

f15::MsgBox "gg"