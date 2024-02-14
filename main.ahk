#Requires AutoHotkey v2.0
#SingleInstance Force



persistent [1]

A_TrayMenu.Add()  ; Creates a separator line.
A_TrayMenu.Add("Item1", MenuHandler1)  ; Creates a new menu item.


MenuHandler1(ItemName, ItemPos, MyMenu) {
    MsgBox "You selected " ItemName " (position " ItemPos ")"
}

A_TrayMenu.Add("Helle", (*)=>  mss("s") )


mss(s,*){
MsgBox (s)
}



;///////////////////////////////////////////////////////////
; Create the popup menu by adding some items to it.
MyMenu := Menu()
MyMenu.Add "Item 1", MenuHandler
MyMenu.Add "Item 2", MenuHandler
MyMenu.Add  ; Add a separator line.

; Create another menu destined to become a submenu of the above menu.
Submenu1 := Menu()
Submenu1.Add "Item A", MenuHandler
Submenu1.Add "Item B", MenuHandler

; Create a submenu in the first menu (a right-arrow indicator). When the user selects it, the second menu is displayed.
MyMenu.Add "My Submenu", Submenu1

MyMenu.Add  ; Add a separator line below the submenu.
MyMenu.Add "Item 3", MenuHandler  ; Add another menu item beneath the submenu.

MenuHandler(Item, *) {
    MsgBox "You selected " Item
}

#z::MyMenu.Show  ; i.e. press the Win-Z hotkey to show the menu.




;===================



{
    for each, arg in A_Args
    output .= arg "`n"
}

;==fix null value
output := output??0


TraySetIcon("assists\animegirlbyai.ico")










startGui()

argumentsRun(output){

global argumentOutput := output



if output == 0{
startGui()
return    
}
; if 0!=(RegExMatch(output,"(?i)sittings")){
;     MsgBox output
;     }
; else{
if agrV("sittings"){
    MsgBox "sittings gg"    
}



}



startGui(){
    m := Gui()

    m.Add("Text",,"Hi")
    m.Add("Button","w211 h112" ,"Click")
    m.Show()
}






;===================

agrV(word,stringText?){
    global argumentOutput
    stringText := stringText??argumentOutput
    
    i := (RegExMatch(stringText,"(?i)\b" . word . "\b" ))
    
    if  i > 1 {
    return 1
    }
}



#Include assists\msg.ahk