Strict

Framework maxgui.drivers
Import jcr6.zlibdriver
Import brl.eventqueue
Import brl.glmax2d
Import tricky_units.Listfile
Import tricky_units.rectangles
Import tricky_units.Dirry
Import brl.freetypefont
Import brl.pngloader

Incbin "VoorReg.ttf"

AppTitle = StripAll(AppFile)

Global filerequired:TList = New TList
Global activegadgetrequired:TList = New TList

Global DT:TGadget = Desktop()
Global window:Tgadget = CreateWindow("Staaf Puzzel",0,0,ClientWidth(DT),ClientHeight(dt),Null,window_titlebar|window_menu)
Global ww = ClientWidth(window)
Global wh = ClientHeight(window)

Global filemenu:tgadget = CreateMenu("Bestand",0,WindowMenu(window))
CreateMenu "Nieuw",1000,filemenu,key_n,modifier_command
CreateMenu "Openen",1001,filemenu,key_o,modifier_command
ListAddLast filerequired, CreateMenu ( "Opslaan", 1002,filemenu,key_s,modifier_command)
ListAddLast filerequired,CreateMenu("Opslaan als...",1003,filemenu,key_s,modifier_command|modifier_shift)
ListAddLast filerequired,CreateMenu("Alles opslaan",1004,filemenu,key_s,modifier_command|modifier_alt)
CreateMenu "",0,filemenu
ListAddLast filerequired,CreateMenu("Exporteer puzzle",1005,filemenu,key_e,modifier_command)
ListAddLast filerequired,CreateMenu("Exporteer puzzle met antwoorden",1006,filemenu,key_e,modifier_command|modifier_alt)
CreateMenu "",0,filemenu
Global RecentMenu:TGadget = CreateMenu("Recent",0,FileMenu)

?Not macos
CreateMenu "",0,filemenu
?win32
CreateMenu "Stoppen",9999,filemenu,key_f4,modifier_alt
?Linux
CreateMenu "Stoppen",9999,filemenu,key_x,modifer_alt
?

Global editmenu:TGadget = CreateMenu("Wijzigen",0,WindowMenu(window))
ListAddLast activegadgetrequired,CreateMenu("Kopieren",2001,editmenu,key_c,modifier_command)
ListAddLast activegadgetrequired,CreateMenu("Knippen",2002,editmenu,key_x,modifier_command)
ListAddLast activegadgetrequired,CreateMenu("Plakken",2003,editmenu,key_v,modifier_command)


Global Recentlist:TList = New TList
Global RecentFile$ = Dirry("$AppSupport$/StaafPuzzle.recent")
Global RecentCount
Global RecentItem:TGadget[10]
If FileType(recentfile)
	Print "Reading "+Recentfile
	For Local l$=EachIn Listfile(recentfile)
		If recentcount<10 And (Not(ListContains(recentlist,l)))
			RecentCount:+1
			Print "= Adding: "+l+" >> "+Recentcount
			ListAddLast Recentlist,l
			RecentItem[recentcount] = CreateMenu( l,recentcount,recentmenu,recentcount+47,modifier_command )
		EndIf
	Next
Else
	DisableGadget recentmenu	
EndIf
			
UpdateWindowMenu Window


Const maxvragen = 20
Const maxantwoorden = maxvragen

Type tdata
	Field staafwoord$
	Field vragen$[maxvragen]
	Field antwoorden$[maxvragen]
	Field letterpos[maxvragen]
	Field filename$
	Field modified
End Type

Global data:TList = New TList	
Global rec:tdata
Global AG:TGadget

Function AutoAble(l:TList,condition)
	For Local G:Tgadget = EachIn l
		g.setenabled condition
	Next
End Function

Global Tabber:TGadget = CreateTabber(0,0,ww,wh,window)
Global TW = ClientWidth(tabber)
Global TH = ClientHeight(tabber)
Global Panel:Tgadget = CreatePanel(0,0,tw,th,tabber)
Global pw = ClientWidth(panel)
Global ph = ClientHeight(Panel)
Global pc = pw/2

CreateLabel "Globaal antwoord: ",0,0,pc,25,panel
Global staafwoord:tgadget = CreateTextField(pc,0,pc,25,panel)
CreateLabel "Vraag",100,50,pc-100,25,panel
CreateLabel "Antwoord",pc,50,pc,25,panel
Global vrnum:TGadget[maxantwoorden]
Global vrvraag:Tgadget[maxantwoorden]
Global vrantw:tgadget[maxantwoorden]
Global vrcheck:Tgadget[maxantwoorden]
For Local i=0 Until maxantwoorden
	Local y = 75 + (i*25)
	vrnum[i] = CreateLabel( Int(i+1),0,y,100,25, panel )
	vrvraag[i] = CreateTextField (100,y,pc-100,25,panel )
	vrantw[i] = CreateTextField(pc,y,pc-100,25,panel )
	vrcheck[i] = CreateLabel("",pw-100,y,100,25,panel,Label_right )
Next
Global modified:TGadget = CreateLabel("Gewijzigd",0,ph-25,pw,25,panel)

Function UpdateTabber(goPage)
	Local n$
	ClearGadgetItems tabber
	For Local r:tdata = EachIn data
		n = StripAll(r.filename)
		If Not r.filename n = "* NAAMLOOS *"
		AddGadgetItem tabber,n
	Next
	SelectGadgetItem tabber,gopage
	rec = tdata(data.valueatindex(gopage))
	SetGadgetText staafwoord,rec.staafwoord
	For Local i=0 Until maxvragen
		SetGadgetText vrvraag[i],rec.vragen[i]
		SetGadgetText vrantw[i],rec.antwoorden[i]
	Next
End Function

Function NewFile()
	ListAddLast data,New tdata
	UpdateTabber CountList(data)-1
End Function

Function Action(source:TGadget)
	Select source
		Case staafwoord
			rec.staafwoord = Upper(TextFieldText(staafwoord))
			rec.modified = True
		Case tabber
			updatetabber SelectedGadgetItem(tabber)	
	End Select
	For Local i = 0 Until maxvragen
		If vrvraag[i]=source rec.vragen[i] = TextFieldText(vrvraag[i]) rec.modified = True
		If vrantw[i]=source rec.antwoorden[i] = TextFieldText(vrantw[i]).toupper() rec.modified = True
	Next
End Function

Function menu(i)
	Select i
		Case 1,2,3,4,5,6,7,8,9,10
				Load MenuText(recentitem[i])
		Case 1000	NewFile
		Case 1001	Load
		Case 1002	save rec
		Case 1003	save rec,True
		Case 1004	allsave
		Case 1005	export
		Case 1006	export True
		Case 9999 	quit
	End Select
End Function

Function Quit()
	Local r:tdata
	Local n$
	For r:tdata=EachIn data
		If r.modified
			n=r.filename
			If Not n n="Een naamloos bestand"
			Select Proceed(n+" is gewijzigd.~nOpslaan voordat u afsluit?")
				Case 1	save r
				Case -1 Return
			End Select
		EndIf
	Next
	End
End Function

Function AllSave()
	Local r:tdata
	For r:tdata=EachIn data
		If r.modified save r; DebugLog "Saving: "+r.filename
	Next
End Function

Function UpdateRecent(f$)
	If ListContains(recentlist,f) Return
	ListAddFirst recentlist,f
	Local bt:TStream = WriteStream(recentfile)
	For Local l$=EachIn recentlist
		WriteLine bt,l
	Next
	CloseStream bt
End Function

Function Save(rec:Tdata,forcename=False)
	Local f$ = rec.filename
	If (Not f) Or forcename
		f = RequestFile("Geef een bestandnaam op a.u.b","Staafpuzzle Maker:spmf",1)
	EndIf
	If Not f Return
	Local bt:TJCRCreate = JCR_Create(f)
	bt.addstring rec.staafwoord,"Staafwoord","zlib"
	Local s$
	s = ""; For Local is$=EachIn rec.vragen s:+is+"~n" Next
	bt.addstring s,"Vragen","zlib"
	s = ""; For Local is$=EachIn rec.antwoorden s:+is+"~n" Next
	bt.addstring s,"Antwoorden","zlib"
	bt.close "zlib"
	rec.modified = False
	rec.filename = f
	updaterecent f
End Function

Function Load(af$="")
	Local rec:Tdata = New tdata
	Local f$ = af
	If Not f f = RequestFile("Geef a.u.b een bestandsnaam op","Staafpuzzle Maker:spmf"); If Not f Return
	Local d:TJCRDir = JCR_Dir(f)
	If Not d Return Notify("Het bestand is niet herkend")
	For Local ff$=EachIn(["STAAFWOORD","ANTWOORDEN","VRAGEN"])
		If Not JCR_Exists(d,ff) Return Notify("Dit bestand is mogelijk geen bestand bedoeld voor dit programma, of het is afkomstig van een extreem oude versie!~n~n(CHK: "+ff+")")
	Next
	rec.staafwoord = LoadString(JCR_B(d,"Staafwoord"))
	Local a$[maxvragen],c
	For a=EachIn([rec.vragen,rec.antwoorden])
		'For Local je$=EachIn(["VRAGEN","ANTWOORDEN"])
		Local je$
		If a=rec.vragen je="VRAGEN" Else je="ANTWOORDEN"
			c = 0
			For Local ln$=EachIn Listfile(JCR_B(d,je))
				DebugLog "Line "+c+" of "+je+" returned: "+ln
				If c<maxvragen
					a[c]=ln
				Else
					Notify "Line overflow: "+c+" "+je	
				EndIf	
				C:+1			
			Next
		'Next
	Next
	rec.filename=f
	ListAddLast data,rec
	updatetabber CountList(data)		-1	
	updaterecent f
End Function

Include "Export.bmx"

Repeat
	AG = ActiveGadget()
	autoable filerequired,Not ListIsEmpty(data)	And rec
	autoable activegadgetrequired,AG And GadgetClass(AG)=gadget_textfield
	tabber.setshow Not ListIsEmpty(data)
	modified.setshow rec And rec.modified
	If rec
		For Local i=0 Until maxvragen
			vrnum[i].setshow i<Len(rec.staafwoord)
			vrvraag[i].setshow i<Len(rec.staafwoord)
			vrantw[i].setshow i<Len(rec.staafwoord)
			vrcheck[i].setshow i<Len(rec.staafwoord)
			Local f = -1
			If i<=(Len(rec.staafwoord)-1) f = rec.antwoorden[i].find(Chr(rec.staafwoord[i]))
			If f<0
				SetGadgetText vrcheck[i],"FOUT!!!"
				SetGadgetColor vrcheck[i],255,0,0,0
			Else
				SetGadgetText vrcheck[i],Int(f+1)
				SetGadgetColor vrcheck[i],0,0,0,0
			EndIf	
		Next
	EndIf
	If rec And  Len(rec.staafwoord)>maxvragen SetGadgetColor staafwoord,255,0,0 Else SetGadgetColor staafwoord,255,255,255		
	WaitEvent
	Select EventID()
		Case	event_appterminate,event_windowclose
						quit
		Case	event_gadgetaction	action tgadget(EventSource())
		Case	event_menuaction	Menu EventData()
	End Select
Forever
