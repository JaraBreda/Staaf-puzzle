	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_drivers_drivers
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_zlibdriver_zlibdriver
	extrn	_bbNullObject
	extrn	_bbStringClass
	extrn	_brl_eventqueue_WaitEvent
	extrn	_brl_linkedlist_ListAddLast
	extrn	_maxgui_maxgui_ClientHeight
	extrn	_maxgui_maxgui_ClientWidth
	extrn	_maxgui_maxgui_CreateMenu
	extrn	_maxgui_maxgui_CreateWindow
	extrn	_maxgui_maxgui_Desktop
	extrn	_maxgui_maxgui_UpdateWindowMenu
	extrn	_maxgui_maxgui_WindowMenu
	public	__bb_main
	public	_bb_DT
	public	_bb_filemenu
	public	_bb_filerequired
	public	_bb_wh
	public	_bb_window
	public	_bb_ww
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	cmp	dword [_37],0
	je	_38
	mov	eax,0
	mov	esp,ebp
	pop	ebp
	ret
_38:
	mov	dword [_37],1
	call	___bb_blitz_blitz
	call	___bb_zlibdriver_zlibdriver
	call	___bb_eventqueue_eventqueue
	call	___bb_drivers_drivers
	mov	eax,dword [_29]
	and	eax,1
	cmp	eax,0
	jne	_30
	call	_maxgui_maxgui_Desktop
	inc	dword [eax+4]
	mov	dword [_bb_DT],eax
	or	dword [_29],1
_30:
	mov	eax,dword [_29]
	and	eax,2
	cmp	eax,0
	jne	_32
	push	5
	push	_bbNullObject
	push	dword [_bb_DT]
	call	_maxgui_maxgui_ClientHeight
	add	esp,4
	push	eax
	push	dword [_bb_DT]
	call	_maxgui_maxgui_ClientWidth
	add	esp,4
	push	eax
	push	0
	push	0
	push	_19
	call	_maxgui_maxgui_CreateWindow
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_window],eax
	or	dword [_29],2
_32:
	mov	eax,dword [_29]
	and	eax,4
	cmp	eax,0
	jne	_33
	push	dword [_bb_window]
	call	_maxgui_maxgui_ClientWidth
	add	esp,4
	mov	dword [_bb_ww],eax
	or	dword [_29],4
_33:
	mov	eax,dword [_29]
	and	eax,8
	cmp	eax,0
	jne	_34
	push	dword [_bb_window]
	call	_maxgui_maxgui_ClientHeight
	add	esp,4
	mov	dword [_bb_wh],eax
	or	dword [_29],8
_34:
	mov	eax,dword [_29]
	and	eax,16
	cmp	eax,0
	jne	_36
	push	0
	push	0
	push	dword [_bb_window]
	call	_maxgui_maxgui_WindowMenu
	add	esp,4
	push	eax
	push	0
	push	_20
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	inc	dword [eax+4]
	mov	dword [_bb_filemenu],eax
	or	dword [_29],16
_36:
	push	2
	push	79
	push	dword [_bb_filemenu]
	push	1001
	push	_21
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	2
	push	83
	push	dword [_bb_filemenu]
	push	1002
	push	_22
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_filerequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	dword [_bb_window]
	call	_maxgui_maxgui_UpdateWindowMenu
	add	esp,4
_25:
_23:
	call	_brl_eventqueue_WaitEvent
	jmp	_25
	section	"data" data writeable align 8
	align	4
_37:
	dd	0
	align	4
_bb_filerequired:
	dd	_bbNullObject
	align	4
_29:
	dd	0
	align	4
_bb_DT:
	dd	_bbNullObject
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	83,116,97,97,102,32,80,117,122,122,101,108
	align	4
_bb_window:
	dd	_bbNullObject
	align	4
_bb_ww:
	dd	0
	align	4
_bb_wh:
	dd	0
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	66,101,115,116,97,110,100
	align	4
_bb_filemenu:
	dd	_bbNullObject
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	79,112,101,110,101,110
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	79,112,115,108,97,97,110
