Const ex_siz = 40
Const ex_fontsiz=25

Global ex_qfont:timagefont


Global ex_ar:tAdvRect = New tAdvRect

ex_ar.inalpha = .25
ex_ar.w = ex_siz
ex_ar.h = ex_siz

Function Export(antwoorden=False)
	Local width=800
	Local height=600
	If Not rec Return
	Local l = Len(rec.staafwoord)
	Local puzheight=l*ex_siz
	Local qheight=25+(ex_fontsiz*l)
	Local okay
	Local vfile$ = StripExt(rec.filename)+".png"
	If antwoorden vfile = StripExt(rec.filename)+".nakijken.png"

	Local aa$[] = ["ZONDER","MET"]
	Local file$ = RequestFile("Exporteer puzzle "+aa[antwoorden]+" antwoorden","Portable Network Graphic:png",1,vfile)
	If Not file Return 
	Repeat
		okay = True
		If height<puzheight+qheight height=puzheight+qheight
		Graphics width,height
		ex_qfont:timagefont = LoadImageFont("incbin::VoorReg.ttf",ex_fontsiz)
		SetImageFont ex_qfont
		SetBlend alphablend
		SetClsColor 255,255,255
		Cls
		SetColor 0,0,0
		For Local i=0 Until l
			' staaf
			ex_ar.x = (width/2)-(ex_siz/2)
			ex_ar.y = i*ex_siz
			AdvRect ex_ar
			Local f = -1
			f = rec.antwoorden[i].find(Chr(rec.staafwoord[i]))
			If f<0
				EndGraphics
				Notify "Sorry! Sommige antwoorden zijn foutief waardoor het genereren van een puzzle onmogelijk is! ~n~n(Foutief antwoord gevonden in vraag ("+i+")" 
				Return
			EndIf
			'links
			For Local i2=0 To f
				Rect ex_ar.x-(i2*ex_siz),ex_ar.y,ex_siz,ex_siz
				okay = okay And (ex_ar.x-(i2*ex_siz))>0
				If antwoorden DrawText Chr(rec.antwoorden[i][f-i2]),(ex_ar.x-(i2*ex_siz))+(ex_siz/2)-(TextWidth( Chr(rec.antwoorden[i][f-i2]))/2),ex_ar.y+(ex_siz/2)-(TextHeight("a")/2)
			Next
			'rechts
			For Local i3=0 Until (Len(rec.antwoorden[i]))-f
				Rect ex_ar.x+(i3*ex_siz),ex_ar.y,ex_siz,ex_siz
				okay = okay And (ex_ar.x-(i3*ex_siz))<width
				If antwoorden DrawText Chr(rec.antwoorden[i][i3+f]),(ex_ar.x+(i3*ex_siz))+(ex_siz/2)-(TextWidth( Chr(rec.antwoorden[i][i3+f]))/2),ex_ar.y+(ex_siz/2)-(TextHeight("a")/2)
			Next	
			'vragen
			Local qn = i+1
			DrawText qn+". "+rec.vragen[i],0,(i*ex_fontsiz)+puzheight
			okay = okay And (TextWidth(qn+". "+rec.vragen[i])<width)
			'antwoordnummers
			DrawText qn,ex_ar.x-((f+1)*ex_siz),(ex_ar.y+(ex_siz/2))-(TextHeight(qn)/2)
		Next
		If Not okay width=width+50 'Afgekeurd? Laten we het dan iets groter proberen.
	Until Okay	
	'Flip; WaitKey 'debug
	Local Pix:TPixmap = GrabPixmap(0,0,width,height)
	If Not pix Return Notify("Er ging iets mis met de creatie van de pixmap.")
	SavePixmapPNG pix,file,9
	AppTerminate
	EndGraphics
End Function
