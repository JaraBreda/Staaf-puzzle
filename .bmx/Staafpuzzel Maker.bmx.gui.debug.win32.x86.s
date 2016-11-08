	format	MS COFF
	extrn	___bb_blitz_blitz
	extrn	___bb_drivers_drivers
	extrn	___bb_eventqueue_eventqueue
	extrn	___bb_listfile_listfile
	extrn	___bb_zlibdriver_zlibdriver
	extrn	_bbArrayNew1D
	extrn	_bbEmptyArray
	extrn	_bbEmptyString
	extrn	_bbEnd
	extrn	_bbGCFree
	extrn	_bbNullObject
	extrn	_bbObjectClass
	extrn	_bbObjectCompare
	extrn	_bbObjectCtor
	extrn	_bbObjectDowncast
	extrn	_bbObjectFree
	extrn	_bbObjectNew
	extrn	_bbObjectRegisterType
	extrn	_bbObjectReserved
	extrn	_bbObjectSendMessage
	extrn	_bbObjectToString
	extrn	_bbOnDebugEnterScope
	extrn	_bbOnDebugEnterStm
	extrn	_bbOnDebugLeaveScope
	extrn	_bbStringClass
	extrn	_bbStringConcat
	extrn	_bbStringFind
	extrn	_bbStringFromChar
	extrn	_bbStringFromInt
	extrn	_bbStringToUpper
	extrn	_brl_blitz_ArrayBoundsError
	extrn	_brl_blitz_DebugLog
	extrn	_brl_blitz_NullObjectError
	extrn	_brl_eventqueue_EventData
	extrn	_brl_eventqueue_EventID
	extrn	_brl_eventqueue_EventSource
	extrn	_brl_eventqueue_WaitEvent
	extrn	_brl_filesystem_StripAll
	extrn	_brl_linkedlist_CountList
	extrn	_brl_linkedlist_ListAddLast
	extrn	_brl_linkedlist_ListIsEmpty
	extrn	_brl_linkedlist_TList
	extrn	_brl_retro_Upper
	extrn	_brl_stream_LoadString
	extrn	_brl_system_Notify
	extrn	_brl_system_Proceed
	extrn	_brl_system_RequestFile
	extrn	_jcr6_jcr6main_JCR_B
	extrn	_jcr6_jcr6main_JCR_Create
	extrn	_jcr6_jcr6main_JCR_Dir
	extrn	_jcr6_jcr6main_JCR_Exists
	extrn	_maxgui_maxgui_ActiveGadget
	extrn	_maxgui_maxgui_AddGadgetItem
	extrn	_maxgui_maxgui_ClearGadgetItems
	extrn	_maxgui_maxgui_ClientHeight
	extrn	_maxgui_maxgui_ClientWidth
	extrn	_maxgui_maxgui_CreateLabel
	extrn	_maxgui_maxgui_CreateMenu
	extrn	_maxgui_maxgui_CreatePanel
	extrn	_maxgui_maxgui_CreateTabber
	extrn	_maxgui_maxgui_CreateTextField
	extrn	_maxgui_maxgui_CreateWindow
	extrn	_maxgui_maxgui_Desktop
	extrn	_maxgui_maxgui_GadgetClass
	extrn	_maxgui_maxgui_SelectGadgetItem
	extrn	_maxgui_maxgui_SelectedGadgetItem
	extrn	_maxgui_maxgui_SetGadgetColor
	extrn	_maxgui_maxgui_SetGadgetText
	extrn	_maxgui_maxgui_TGadget
	extrn	_maxgui_maxgui_TextFieldText
	extrn	_maxgui_maxgui_UpdateWindowMenu
	extrn	_maxgui_maxgui_WindowMenu
	extrn	_tricky_units_listfile_Listfile
	public	__bb_main
	public	__bb_tdata_Delete
	public	__bb_tdata_New
	public	_bb_AG
	public	_bb_Action
	public	_bb_AllSave
	public	_bb_AutoAble
	public	_bb_DT
	public	_bb_Load
	public	_bb_NewFile
	public	_bb_Panel
	public	_bb_Quit
	public	_bb_RecentMenu
	public	_bb_Save
	public	_bb_TH
	public	_bb_TW
	public	_bb_Tabber
	public	_bb_UpdateTabber
	public	_bb_activegadgetrequired
	public	_bb_data
	public	_bb_editmenu
	public	_bb_filemenu
	public	_bb_filerequired
	public	_bb_menu
	public	_bb_modified
	public	_bb_pc
	public	_bb_ph
	public	_bb_pw
	public	_bb_rec
	public	_bb_staafwoord
	public	_bb_tdata
	public	_bb_vrantw
	public	_bb_vrcheck
	public	_bb_vrnum
	public	_bb_vrvraag
	public	_bb_wh
	public	_bb_window
	public	_bb_ww
	section	"code" code
__bb_main:
	push	ebp
	mov	ebp,esp
	sub	esp,20
	push	ebx
	push	esi
	push	edi
	cmp	dword [_433],0
	je	_434
	mov	eax,0
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_434:
	mov	dword [_433],1
	mov	dword [ebp-4],0
	mov	dword [ebp-8],0
	mov	dword [ebp-12],0
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_397
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	___bb_blitz_blitz
	call	___bb_zlibdriver_zlibdriver
	call	___bb_eventqueue_eventqueue
	call	___bb_listfile_listfile
	call	___bb_drivers_drivers
	push	_bb_tdata
	call	_bbObjectRegisterType
	add	esp,4
	push	_152
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,1
	cmp	eax,0
	jne	_156
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_filerequired],eax
	or	dword [_155],1
_156:
	push	_157
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,2
	cmp	eax,0
	jne	_159
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_activegadgetrequired],eax
	or	dword [_155],2
_159:
	push	_160
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,4
	cmp	eax,0
	jne	_162
	call	_maxgui_maxgui_Desktop
	inc	dword [eax+4]
	mov	dword [_bb_DT],eax
	or	dword [_155],4
_162:
	push	_163
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,8
	cmp	eax,0
	jne	_165
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
	or	dword [_155],8
_165:
	push	_166
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,16
	cmp	eax,0
	jne	_167
	push	dword [_bb_window]
	call	_maxgui_maxgui_ClientWidth
	add	esp,4
	mov	dword [_bb_ww],eax
	or	dword [_155],16
_167:
	push	_168
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,32
	cmp	eax,0
	jne	_169
	push	dword [_bb_window]
	call	_maxgui_maxgui_ClientHeight
	add	esp,4
	mov	dword [_bb_wh],eax
	or	dword [_155],32
_169:
	push	_170
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,64
	cmp	eax,0
	jne	_172
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
	or	dword [_155],64
_172:
	push	_173
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	78
	push	dword [_bb_filemenu]
	push	1000
	push	_21
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	_174
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	79
	push	dword [_bb_filemenu]
	push	1001
	push	_22
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	_175
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	83
	push	dword [_bb_filemenu]
	push	1002
	push	_23
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_filerequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_176
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	3
	push	83
	push	dword [_bb_filemenu]
	push	1003
	push	_24
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_filerequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_177
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	83
	push	dword [_bb_filemenu]
	push	1004
	push	_25
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_filerequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_178
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	dword [_bb_filemenu]
	push	0
	push	_1
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	_179
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	69
	push	dword [_bb_filemenu]
	push	1005
	push	_26
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_filerequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_180
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	6
	push	69
	push	dword [_bb_filemenu]
	push	1006
	push	_27
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_filerequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_181
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	dword [_bb_filemenu]
	push	0
	push	_1
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	_182
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,128
	cmp	eax,0
	jne	_184
	push	0
	push	0
	push	dword [_bb_filemenu]
	push	0
	push	_28
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	inc	dword [eax+4]
	mov	dword [_bb_RecentMenu],eax
	or	dword [_155],128
_184:
	push	_185
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	0
	push	dword [_bb_filemenu]
	push	0
	push	_1
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	_186
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	4
	push	115
	push	dword [_bb_filemenu]
	push	9999
	push	_29
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	_187
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,256
	cmp	eax,0
	jne	_189
	push	0
	push	0
	push	dword [_bb_window]
	call	_maxgui_maxgui_WindowMenu
	add	esp,4
	push	eax
	push	0
	push	_30
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	inc	dword [eax+4]
	mov	dword [_bb_editmenu],eax
	or	dword [_155],256
_189:
	push	_190
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	67
	push	dword [_bb_editmenu]
	push	2001
	push	_31
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_activegadgetrequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_191
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	88
	push	dword [_bb_editmenu]
	push	2002
	push	_32
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_activegadgetrequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_192
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	86
	push	dword [_bb_editmenu]
	push	2003
	push	_33
	call	_maxgui_maxgui_CreateMenu
	add	esp,20
	push	eax
	push	dword [_bb_activegadgetrequired]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_193
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_window]
	call	_maxgui_maxgui_UpdateWindowMenu
	add	esp,4
	push	_194
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,512
	cmp	eax,0
	jne	_196
	push	_brl_linkedlist_TList
	call	_bbObjectNew
	add	esp,4
	inc	dword [eax+4]
	mov	dword [_bb_data],eax
	or	dword [_155],512
_196:
	push	_197
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_198
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_199
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,1024
	cmp	eax,0
	jne	_201
	push	0
	push	dword [_bb_window]
	push	dword [_bb_wh]
	push	dword [_bb_ww]
	push	0
	push	0
	call	_maxgui_maxgui_CreateTabber
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_Tabber],eax
	or	dword [_155],1024
_201:
	push	_202
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,2048
	cmp	eax,0
	jne	_203
	push	dword [_bb_Tabber]
	call	_maxgui_maxgui_ClientWidth
	add	esp,4
	mov	dword [_bb_TW],eax
	or	dword [_155],2048
_203:
	push	_204
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,4096
	cmp	eax,0
	jne	_205
	push	dword [_bb_Tabber]
	call	_maxgui_maxgui_ClientHeight
	add	esp,4
	mov	dword [_bb_TH],eax
	or	dword [_155],4096
_205:
	push	_206
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,8192
	cmp	eax,0
	jne	_208
	push	_1
	push	0
	push	dword [_bb_Tabber]
	push	dword [_bb_TH]
	push	dword [_bb_TW]
	push	0
	push	0
	call	_maxgui_maxgui_CreatePanel
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_Panel],eax
	or	dword [_155],8192
_208:
	push	_209
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,16384
	cmp	eax,0
	jne	_210
	push	dword [_bb_Panel]
	call	_maxgui_maxgui_ClientWidth
	add	esp,4
	mov	dword [_bb_pw],eax
	or	dword [_155],16384
_210:
	push	_211
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,32768
	cmp	eax,0
	jne	_212
	push	dword [_bb_Panel]
	call	_maxgui_maxgui_ClientHeight
	add	esp,4
	mov	dword [_bb_ph],eax
	or	dword [_155],32768
_212:
	push	_213
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,65536
	cmp	eax,0
	jne	_214
	mov	eax,dword [_bb_pw]
	cdq
	and	edx,1
	add	eax,edx
	sar	eax,1
	mov	dword [_bb_pc],eax
	or	dword [_155],65536
_214:
	push	_215
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_Panel]
	push	25
	push	dword [_bb_pc]
	push	0
	push	0
	push	_37
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_216
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,131072
	cmp	eax,0
	jne	_218
	push	0
	push	dword [_bb_Panel]
	push	25
	push	dword [_bb_pc]
	push	0
	push	dword [_bb_pc]
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	inc	dword [eax+4]
	mov	dword [_bb_staafwoord],eax
	or	dword [_155],131072
_218:
	push	_219
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_Panel]
	push	25
	mov	eax,dword [_bb_pc]
	sub	eax,100
	push	eax
	push	50
	push	100
	push	_38
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_220
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_Panel]
	push	25
	push	dword [_bb_pc]
	push	50
	push	dword [_bb_pc]
	push	_39
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	push	_221
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,262144
	cmp	eax,0
	jne	_224
	push	20
	push	_222
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_vrnum],eax
	or	dword [_155],262144
_224:
	push	_225
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,524288
	cmp	eax,0
	jne	_228
	push	20
	push	_226
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_vrvraag],eax
	or	dword [_155],524288
_228:
	push	_229
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,1048576
	cmp	eax,0
	jne	_232
	push	20
	push	_230
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_vrantw],eax
	or	dword [_155],1048576
_232:
	push	_233
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,2097152
	cmp	eax,0
	jne	_236
	push	20
	push	_234
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	dword [_bb_vrcheck],eax
	or	dword [_155],2097152
_236:
	push	_237
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],0
	mov	dword [ebp-4],0
	jmp	_239
_42:
	mov	eax,ebp
	push	eax
	push	_274
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_240
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	imul	eax,25
	add	eax,75
	mov	dword [ebp-8],eax
	push	_242
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	mov	eax,dword [_bb_vrnum]
	cmp	esi,dword [eax+20]
	jb	_244
	call	_brl_blitz_ArrayBoundsError
_244:
	mov	ebx,dword [_bb_vrnum]
	shl	esi,2
	add	ebx,esi
	push	0
	push	dword [_bb_Panel]
	push	25
	push	100
	push	dword [ebp-8]
	push	0
	mov	eax,dword [ebp-4]
	add	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_249
	push	eax
	call	_bbGCFree
	add	esp,4
_249:
	mov	dword [ebx+24],esi
	push	_250
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_vrvraag]
	cmp	ebx,dword [eax+20]
	jb	_252
	call	_brl_blitz_ArrayBoundsError
_252:
	mov	esi,dword [_bb_vrvraag]
	shl	ebx,2
	add	esi,ebx
	push	0
	push	dword [_bb_Panel]
	push	25
	mov	eax,dword [_bb_pc]
	sub	eax,100
	push	eax
	push	dword [ebp-8]
	push	100
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_257
	push	eax
	call	_bbGCFree
	add	esp,4
_257:
	mov	dword [esi+24],ebx
	push	_258
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_vrantw]
	cmp	ebx,dword [eax+20]
	jb	_260
	call	_brl_blitz_ArrayBoundsError
_260:
	mov	esi,dword [_bb_vrantw]
	shl	ebx,2
	add	esi,ebx
	push	0
	push	dword [_bb_Panel]
	push	25
	mov	eax,dword [_bb_pc]
	sub	eax,100
	push	eax
	push	dword [ebp-8]
	push	dword [_bb_pc]
	call	_maxgui_maxgui_CreateTextField
	add	esp,24
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_265
	push	eax
	call	_bbGCFree
	add	esp,4
_265:
	mov	dword [esi+24],ebx
	push	_266
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	mov	eax,dword [_bb_vrcheck]
	cmp	ebx,dword [eax+20]
	jb	_268
	call	_brl_blitz_ArrayBoundsError
_268:
	mov	esi,dword [_bb_vrcheck]
	shl	ebx,2
	add	esi,ebx
	push	8
	push	dword [_bb_Panel]
	push	25
	push	100
	push	dword [ebp-8]
	mov	eax,dword [_bb_pw]
	sub	eax,100
	push	eax
	push	_1
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_273
	push	eax
	call	_bbGCFree
	add	esp,4
_273:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
_40:
	add	dword [ebp-4],1
_239:
	cmp	dword [ebp-4],20
	jl	_42
_41:
	push	_276
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_155]
	and	eax,4194304
	cmp	eax,0
	jne	_278
	push	0
	push	dword [_bb_Panel]
	push	25
	push	dword [_bb_pw]
	mov	eax,dword [_bb_ph]
	sub	eax,25
	push	eax
	push	0
	push	_43
	call	_maxgui_maxgui_CreateLabel
	add	esp,28
	inc	dword [eax+4]
	mov	dword [_bb_modified],eax
	or	dword [_155],4194304
_278:
	push	_279
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
_99:
_97:
	mov	eax,ebp
	push	eax
	push	_396
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_280
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_maxgui_maxgui_ActiveGadget
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_AG]
	dec	dword [eax+4]
	jnz	_284
	push	eax
	call	_bbGCFree
	add	esp,4
_284:
	mov	dword [_bb_AG],ebx
	push	_285
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_data]
	call	_brl_linkedlist_ListIsEmpty
	add	esp,4
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	je	_286
	mov	eax,dword [_bb_rec]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
_286:
	push	eax
	push	dword [_bb_filerequired]
	call	_bb_AutoAble
	add	esp,8
	push	_288
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_AG]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_289
	push	dword [_bb_AG]
	call	_maxgui_maxgui_GadgetClass
	add	esp,4
	cmp	eax,4
	sete	al
	movzx	eax,al
_289:
	push	eax
	push	dword [_bb_activegadgetrequired]
	call	_bb_AutoAble
	add	esp,8
	push	_291
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_Tabber]
	cmp	ebx,_bbNullObject
	jne	_293
	call	_brl_blitz_NullObjectError
_293:
	push	dword [_bb_data]
	call	_brl_linkedlist_ListIsEmpty
	add	esp,4
	cmp	eax,0
	sete	al
	movzx	eax,al
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+280]
	add	esp,8
	push	_294
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_modified]
	cmp	ebx,_bbNullObject
	jne	_296
	call	_brl_blitz_NullObjectError
_296:
	mov	eax,dword [_bb_rec]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_299
	mov	esi,dword [_bb_rec]
	cmp	esi,_bbNullObject
	jne	_298
	call	_brl_blitz_NullObjectError
_298:
	mov	eax,dword [esi+28]
_299:
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+280]
	add	esp,8
	push	_301
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [_bb_rec],_bbNullObject
	je	_302
	mov	eax,ebp
	push	eax
	push	_371
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_303
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],0
	mov	dword [ebp-12],0
	jmp	_305
_102:
	mov	eax,ebp
	push	eax
	push	_369
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_306
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_vrnum]
	cmp	ebx,dword [eax+20]
	jb	_308
	call	_brl_blitz_ArrayBoundsError
_308:
	mov	eax,dword [_bb_vrnum]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_310
	call	_brl_blitz_NullObjectError
_310:
	mov	esi,dword [_bb_rec]
	cmp	esi,_bbNullObject
	jne	_312
	call	_brl_blitz_NullObjectError
_312:
	mov	edx,dword [ebp-12]
	mov	eax,dword [esi+8]
	cmp	edx,dword [eax+8]
	setl	al
	movzx	eax,al
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+280]
	add	esp,8
	push	_313
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_vrvraag]
	cmp	ebx,dword [eax+20]
	jb	_315
	call	_brl_blitz_ArrayBoundsError
_315:
	mov	eax,dword [_bb_vrvraag]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_317
	call	_brl_blitz_NullObjectError
_317:
	mov	esi,dword [_bb_rec]
	cmp	esi,_bbNullObject
	jne	_319
	call	_brl_blitz_NullObjectError
_319:
	mov	edx,dword [ebp-12]
	mov	eax,dword [esi+8]
	cmp	edx,dword [eax+8]
	setl	al
	movzx	eax,al
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+280]
	add	esp,8
	push	_320
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_vrantw]
	cmp	ebx,dword [eax+20]
	jb	_322
	call	_brl_blitz_ArrayBoundsError
_322:
	mov	eax,dword [_bb_vrantw]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_324
	call	_brl_blitz_NullObjectError
_324:
	mov	esi,dword [_bb_rec]
	cmp	esi,_bbNullObject
	jne	_326
	call	_brl_blitz_NullObjectError
_326:
	mov	edx,dword [ebp-12]
	mov	eax,dword [esi+8]
	cmp	edx,dword [eax+8]
	setl	al
	movzx	eax,al
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+280]
	add	esp,8
	push	_327
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_vrcheck]
	cmp	ebx,dword [eax+20]
	jb	_329
	call	_brl_blitz_ArrayBoundsError
_329:
	mov	eax,dword [_bb_vrcheck]
	mov	ebx,dword [eax+ebx*4+24]
	cmp	ebx,_bbNullObject
	jne	_331
	call	_brl_blitz_NullObjectError
_331:
	mov	esi,dword [_bb_rec]
	cmp	esi,_bbNullObject
	jne	_333
	call	_brl_blitz_NullObjectError
_333:
	mov	edx,dword [ebp-12]
	mov	eax,dword [esi+8]
	cmp	edx,dword [eax+8]
	setl	al
	movzx	eax,al
	push	eax
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+280]
	add	esp,8
	push	_334
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],-1
	push	_336
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_338
	call	_brl_blitz_NullObjectError
_338:
	mov	eax,dword [ebx+8]
	mov	eax,dword [eax+8]
	sub	eax,1
	cmp	dword [ebp-12],eax
	jg	_339
	mov	eax,ebp
	push	eax
	push	_351
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_340
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_342
	call	_brl_blitz_NullObjectError
_342:
	mov	eax,dword [ebx+16]
	mov	dword [ebp-20],eax
	mov	edi,dword [ebp-12]
	mov	eax,dword [ebp-20]
	cmp	edi,dword [eax+20]
	jb	_345
	call	_brl_blitz_ArrayBoundsError
_345:
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_347
	call	_brl_blitz_NullObjectError
_347:
	mov	esi,dword [ebx+8]
	mov	ebx,dword [ebp-12]
	cmp	ebx,dword [esi+8]
	jb	_350
	call	_brl_blitz_ArrayBoundsError
_350:
	push	0
	movzx	eax,word [esi+ebx*2+12]
	mov	eax,eax
	push	eax
	call	_bbStringFromChar
	add	esp,4
	push	eax
	mov	eax,dword [ebp-20]
	push	dword [eax+edi*4+24]
	call	_bbStringFind
	add	esp,12
	mov	dword [ebp-16],eax
	call	dword [_bbOnDebugLeaveScope]
_339:
	push	_352
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-16],0
	jge	_353
	mov	eax,ebp
	push	eax
	push	_360
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_354
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_vrcheck]
	cmp	ebx,dword [eax+20]
	jb	_356
	call	_brl_blitz_ArrayBoundsError
_356:
	push	_103
	mov	eax,dword [_bb_vrcheck]
	push	dword [eax+ebx*4+24]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	push	_357
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_vrcheck]
	cmp	ebx,dword [eax+20]
	jb	_359
	call	_brl_blitz_ArrayBoundsError
_359:
	push	0
	push	0
	push	0
	push	255
	mov	eax,dword [_bb_vrcheck]
	push	dword [eax+ebx*4+24]
	call	_maxgui_maxgui_SetGadgetColor
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
	jmp	_361
_353:
	mov	eax,ebp
	push	eax
	push	_368
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_362
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_vrcheck]
	cmp	ebx,dword [eax+20]
	jb	_364
	call	_brl_blitz_ArrayBoundsError
_364:
	mov	eax,dword [ebp-16]
	add	eax,1
	push	eax
	call	_bbStringFromInt
	add	esp,4
	push	eax
	mov	eax,dword [_bb_vrcheck]
	push	dword [eax+ebx*4+24]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	push	_365
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	mov	eax,dword [_bb_vrcheck]
	cmp	ebx,dword [eax+20]
	jb	_367
	call	_brl_blitz_ArrayBoundsError
_367:
	push	0
	push	0
	push	0
	push	0
	mov	eax,dword [_bb_vrcheck]
	push	dword [eax+ebx*4+24]
	call	_maxgui_maxgui_SetGadgetColor
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_361:
	call	dword [_bbOnDebugLeaveScope]
_100:
	add	dword [ebp-12],1
_305:
	cmp	dword [ebp-12],20
	jl	_102
_101:
	call	dword [_bbOnDebugLeaveScope]
_302:
	push	_372
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [_bb_rec]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	je	_375
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_374
	call	_brl_blitz_NullObjectError
_374:
	mov	eax,dword [ebx+8]
	mov	eax,dword [eax+8]
	cmp	eax,20
	setg	al
	movzx	eax,al
_375:
	cmp	eax,0
	je	_377
	mov	eax,ebp
	push	eax
	push	_379
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_378
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	0
	push	0
	push	255
	push	dword [_bb_staafwoord]
	call	_maxgui_maxgui_SetGadgetColor
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
	jmp	_380
_377:
	mov	eax,ebp
	push	eax
	push	_382
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_381
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	255
	push	255
	push	255
	push	dword [_bb_staafwoord]
	call	_maxgui_maxgui_SetGadgetColor
	add	esp,20
	call	dword [_bbOnDebugLeaveScope]
_380:
	push	_383
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_WaitEvent
	push	_384
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_EventID
	cmp	eax,259
	je	_387
	cmp	eax,16387
	je	_387
	cmp	eax,8193
	je	_388
	cmp	eax,32769
	je	_389
	jmp	_386
_387:
	mov	eax,ebp
	push	eax
	push	_391
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_390
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Quit
	call	dword [_bbOnDebugLeaveScope]
	jmp	_386
_388:
	mov	eax,ebp
	push	eax
	push	_393
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_392
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_maxgui_maxgui_TGadget
	call	_brl_eventqueue_EventSource
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	push	eax
	call	_bb_Action
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_386
_389:
	mov	eax,ebp
	push	eax
	push	_395
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_394
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_brl_eventqueue_EventData
	push	eax
	call	_bb_menu
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_386
_386:
	call	dword [_bbOnDebugLeaveScope]
	jmp	_99
__bb_tdata_New:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_444
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	dword [ebp-4]
	call	_bbObjectCtor
	add	esp,4
	mov	eax,dword [ebp-4]
	mov	dword [eax],_bb_tdata
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+8],edx
	push	20
	push	_436
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+12],eax
	push	20
	push	_438
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+16],eax
	push	20
	push	_440
	call	_bbArrayNew1D
	add	esp,8
	inc	dword [eax+4]
	mov	edx,dword [ebp-4]
	mov	dword [edx+20],eax
	mov	edx,_bbEmptyString
	inc	dword [edx+4]
	mov	eax,dword [ebp-4]
	mov	dword [eax+24],edx
	mov	eax,dword [ebp-4]
	mov	dword [eax+28],0
	push	ebp
	push	_443
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	mov	ebx,0
	jmp	_122
_122:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
__bb_tdata_Delete:
	push	ebp
	mov	ebp,esp
	push	ebx
	mov	ebx,dword [ebp+8]
_125:
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_448
	push	eax
	call	_bbGCFree
	add	esp,4
_448:
	mov	eax,dword [ebx+20]
	dec	dword [eax+4]
	jnz	_450
	push	eax
	call	_bbGCFree
	add	esp,4
_450:
	mov	eax,dword [ebx+16]
	dec	dword [eax+4]
	jnz	_452
	push	eax
	call	_bbGCFree
	add	esp,4
_452:
	mov	eax,dword [ebx+12]
	dec	dword [eax+4]
	jnz	_454
	push	eax
	call	_bbGCFree
	add	esp,4
_454:
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_456
	push	eax
	call	_bbGCFree
	add	esp,4
_456:
	mov	eax,0
	jmp	_446
_446:
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AutoAble:
	push	ebp
	mov	ebp,esp
	sub	esp,12
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_472
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_457
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [ebp-4]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_461
	call	_brl_blitz_NullObjectError
_461:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	esi,eax
	jmp	_34
_36:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_466
	call	_brl_blitz_NullObjectError
_466:
	push	_maxgui_maxgui_TGadget
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_34
	mov	eax,ebp
	push	eax
	push	_470
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_467
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-12]
	cmp	ebx,_bbNullObject
	jne	_469
	call	_brl_blitz_NullObjectError
_469:
	push	dword [ebp-8]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+284]
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_34:
	mov	ebx,esi
	cmp	ebx,_bbNullObject
	jne	_464
	call	_brl_blitz_NullObjectError
_464:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_36
_35:
	mov	ebx,0
	jmp	_129
_129:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_UpdateTabber:
	push	ebp
	mov	ebp,esp
	sub	esp,16
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-16],0
	mov	eax,ebp
	push	eax
	push	_532
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_476
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_478
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_Tabber]
	call	_maxgui_maxgui_ClearGadgetItems
	add	esp,4
	push	_479
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-12],_bbNullObject
	mov	edi,dword [_bb_data]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_483
	call	_brl_blitz_NullObjectError
_483:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_44
_46:
	cmp	ebx,_bbNullObject
	jne	_488
	call	_brl_blitz_NullObjectError
_488:
	push	_bb_tdata
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-12],eax
	cmp	dword [ebp-12],_bbNullObject
	je	_44
	mov	eax,ebp
	push	eax
	push	_499
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_489
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_491
	call	_brl_blitz_NullObjectError
_491:
	push	dword [esi+24]
	call	_brl_filesystem_StripAll
	add	esp,4
	mov	dword [ebp-8],eax
	push	_492
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-12]
	cmp	esi,_bbNullObject
	jne	_494
	call	_brl_blitz_NullObjectError
_494:
	mov	eax,dword [esi+24]
	cmp	dword [eax+8],0
	jne	_495
	mov	eax,ebp
	push	eax
	push	_497
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_496
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_47
	call	dword [_bbOnDebugLeaveScope]
_495:
	push	_498
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	_1
	push	-1
	push	0
	push	dword [ebp-8]
	push	dword [_bb_Tabber]
	call	_maxgui_maxgui_AddGadgetItem
	add	esp,24
	call	dword [_bbOnDebugLeaveScope]
_44:
	cmp	ebx,_bbNullObject
	jne	_486
	call	_brl_blitz_NullObjectError
_486:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_46
_45:
	push	_501
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_Tabber]
	call	_maxgui_maxgui_SelectGadgetItem
	add	esp,8
	push	_502
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_data]
	cmp	ebx,_bbNullObject
	jne	_504
	call	_brl_blitz_NullObjectError
_504:
	push	_bb_tdata
	push	dword [ebp-4]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+108]
	add	esp,8
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [_bb_rec]
	dec	dword [eax+4]
	jnz	_508
	push	eax
	call	_bbGCFree
	add	esp,4
_508:
	mov	dword [_bb_rec],ebx
	push	_509
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_511
	call	_brl_blitz_NullObjectError
_511:
	push	dword [ebx+8]
	push	dword [_bb_staafwoord]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	push	_512
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-16],0
	mov	dword [ebp-16],0
	jmp	_514
_50:
	mov	eax,ebp
	push	eax
	push	_531
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_515
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	mov	eax,dword [_bb_vrvraag]
	cmp	edi,dword [eax+20]
	jb	_517
	call	_brl_blitz_ArrayBoundsError
_517:
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_519
	call	_brl_blitz_NullObjectError
_519:
	mov	esi,dword [ebx+12]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_522
	call	_brl_blitz_ArrayBoundsError
_522:
	push	dword [esi+ebx*4+24]
	mov	eax,dword [_bb_vrvraag]
	push	dword [eax+edi*4+24]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	push	_523
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [ebp-16]
	mov	eax,dword [_bb_vrantw]
	cmp	edi,dword [eax+20]
	jb	_525
	call	_brl_blitz_ArrayBoundsError
_525:
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_527
	call	_brl_blitz_NullObjectError
_527:
	mov	esi,dword [ebx+16]
	mov	ebx,dword [ebp-16]
	cmp	ebx,dword [esi+20]
	jb	_530
	call	_brl_blitz_ArrayBoundsError
_530:
	push	dword [esi+ebx*4+24]
	mov	eax,dword [_bb_vrantw]
	push	dword [eax+edi*4+24]
	call	_maxgui_maxgui_SetGadgetText
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_48:
	add	dword [ebp-16],1
_514:
	cmp	dword [ebp-16],20
	jl	_50
_49:
	mov	ebx,0
	jmp	_132
_132:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_NewFile:
	push	ebp
	mov	ebp,esp
	push	ebx
	push	ebp
	push	_538
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_536
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_tdata
	call	_bbObjectNew
	add	esp,4
	push	eax
	push	dword [_bb_data]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_537
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_data]
	call	_brl_linkedlist_CountList
	add	esp,4
	sub	eax,1
	push	eax
	call	_bb_UpdateTabber
	add	esp,4
	mov	ebx,0
	jmp	_134
_134:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Action:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	dword [ebp-8],0
	mov	eax,ebp
	push	eax
	push	_608
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_540
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,dword [_bb_staafwoord]
	je	_543
	cmp	eax,dword [_bb_Tabber]
	je	_544
	jmp	_542
_543:
	mov	eax,ebp
	push	eax
	push	_557
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_545
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_547
	call	_brl_blitz_NullObjectError
_547:
	push	dword [_bb_staafwoord]
	call	_maxgui_maxgui_TextFieldText
	add	esp,4
	push	eax
	call	_brl_retro_Upper
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_552
	push	eax
	call	_bbGCFree
	add	esp,4
_552:
	mov	dword [ebx+8],esi
	push	_553
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_555
	call	_brl_blitz_NullObjectError
_555:
	mov	dword [ebx+28],1
	call	dword [_bbOnDebugLeaveScope]
	jmp	_542
_544:
	mov	eax,ebp
	push	eax
	push	_559
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_558
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_Tabber]
	call	_maxgui_maxgui_SelectedGadgetItem
	add	esp,4
	push	eax
	call	_bb_UpdateTabber
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
	jmp	_542
_542:
	push	_560
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],0
	mov	dword [ebp-8],0
	jmp	_562
_53:
	mov	eax,ebp
	push	eax
	push	_607
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_563
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_vrvraag]
	cmp	ebx,dword [eax+20]
	jb	_565
	call	_brl_blitz_ArrayBoundsError
_565:
	mov	edx,dword [_bb_vrvraag]
	mov	eax,dword [ebp-4]
	cmp	dword [edx+ebx*4+24],eax
	jne	_566
	mov	eax,ebp
	push	eax
	push	_584
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_567
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_569
	call	_brl_blitz_NullObjectError
_569:
	mov	esi,dword [ebx+12]
	mov	ebx,dword [ebp-8]
	cmp	ebx,dword [esi+20]
	jb	_572
	call	_brl_blitz_ArrayBoundsError
_572:
	shl	ebx,2
	add	esi,ebx
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_vrvraag]
	cmp	ebx,dword [eax+20]
	jb	_575
	call	_brl_blitz_ArrayBoundsError
_575:
	mov	eax,dword [_bb_vrvraag]
	push	dword [eax+ebx*4+24]
	call	_maxgui_maxgui_TextFieldText
	add	esp,4
	mov	ebx,eax
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_579
	push	eax
	call	_bbGCFree
	add	esp,4
_579:
	mov	dword [esi+24],ebx
	push	_580
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_582
	call	_brl_blitz_NullObjectError
_582:
	mov	dword [ebx+28],1
	call	dword [_bbOnDebugLeaveScope]
_566:
	push	_585
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-8]
	mov	eax,dword [_bb_vrantw]
	cmp	ebx,dword [eax+20]
	jb	_587
	call	_brl_blitz_ArrayBoundsError
_587:
	mov	edx,dword [_bb_vrantw]
	mov	eax,dword [ebp-4]
	cmp	dword [edx+ebx*4+24],eax
	jne	_588
	mov	eax,ebp
	push	eax
	push	_606
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_589
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_591
	call	_brl_blitz_NullObjectError
_591:
	mov	ebx,dword [ebx+16]
	mov	esi,dword [ebp-8]
	cmp	esi,dword [ebx+20]
	jb	_594
	call	_brl_blitz_ArrayBoundsError
_594:
	shl	esi,2
	add	ebx,esi
	mov	esi,dword [ebp-8]
	mov	eax,dword [_bb_vrantw]
	cmp	esi,dword [eax+20]
	jb	_597
	call	_brl_blitz_ArrayBoundsError
_597:
	mov	eax,dword [_bb_vrantw]
	push	dword [eax+esi*4+24]
	call	_maxgui_maxgui_TextFieldText
	add	esp,4
	push	eax
	call	_bbStringToUpper
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+24]
	dec	dword [eax+4]
	jnz	_601
	push	eax
	call	_bbGCFree
	add	esp,4
_601:
	mov	dword [ebx+24],esi
	push	_602
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [_bb_rec]
	cmp	ebx,_bbNullObject
	jne	_604
	call	_brl_blitz_NullObjectError
_604:
	mov	dword [ebx+28],1
	call	dword [_bbOnDebugLeaveScope]
_588:
	call	dword [_bbOnDebugLeaveScope]
_51:
	add	dword [ebp-8],1
_562:
	cmp	dword [ebp-8],20
	jl	_53
_52:
	mov	ebx,0
	jmp	_137
_137:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_menu:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	push	ebp
	push	_632
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_611
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-4]
	cmp	eax,1000
	je	_614
	cmp	eax,1001
	je	_615
	cmp	eax,1002
	je	_616
	cmp	eax,1003
	je	_617
	cmp	eax,1004
	je	_618
	cmp	eax,9999
	je	_619
	jmp	_613
_614:
	push	ebp
	push	_621
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_620
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_NewFile
	call	dword [_bbOnDebugLeaveScope]
	jmp	_613
_615:
	push	ebp
	push	_623
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_622
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Load
	call	dword [_bbOnDebugLeaveScope]
	jmp	_613
_616:
	push	ebp
	push	_625
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_624
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [_bb_rec]
	call	_bb_Save
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_613
_617:
	push	ebp
	push	_627
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_626
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	1
	push	dword [_bb_rec]
	call	_bb_Save
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_613
_618:
	push	ebp
	push	_629
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_628
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_AllSave
	call	dword [_bbOnDebugLeaveScope]
	jmp	_613
_619:
	push	ebp
	push	_631
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_630
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bb_Quit
	call	dword [_bbOnDebugLeaveScope]
	jmp	_613
_613:
	mov	ebx,0
	jmp	_140
_140:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Quit:
	push	ebp
	mov	ebp,esp
	sub	esp,8
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_670
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_634
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	push	_636
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_bbEmptyString
	push	_638
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_data]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_641
	call	_brl_blitz_NullObjectError
_641:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_54
_56:
	cmp	ebx,_bbNullObject
	jne	_646
	call	_brl_blitz_NullObjectError
_646:
	push	_bb_tdata
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_54
	mov	eax,ebp
	push	eax
	push	_668
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_647
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_649
	call	_brl_blitz_NullObjectError
_649:
	cmp	dword [esi+28],0
	je	_650
	mov	eax,ebp
	push	eax
	push	_667
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_651
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_653
	call	_brl_blitz_NullObjectError
_653:
	mov	eax,dword [esi+24]
	mov	dword [ebp-8],eax
	push	_654
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	dword [eax+8],0
	jne	_655
	mov	eax,ebp
	push	eax
	push	_657
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_656
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-8],_57
	call	dword [_bbOnDebugLeaveScope]
_655:
	push	_658
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_58
	push	dword [ebp-8]
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Proceed
	add	esp,8
	cmp	eax,1
	je	_661
	cmp	eax,-1
	je	_662
	jmp	_660
_661:
	mov	eax,ebp
	push	eax
	push	_664
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_663
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-4]
	call	_bb_Save
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
	jmp	_660
_662:
	mov	eax,ebp
	push	eax
	push	_666
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_665
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_142
_660:
	call	dword [_bbOnDebugLeaveScope]
_650:
	call	dword [_bbOnDebugLeaveScope]
_54:
	cmp	ebx,_bbNullObject
	jne	_644
	call	_brl_blitz_NullObjectError
_644:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_56
_55:
	push	_669
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	call	_bbEnd
	mov	ebx,0
	jmp	_142
_142:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_AllSave:
	push	ebp
	mov	ebp,esp
	sub	esp,4
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	eax,ebp
	push	eax
	push	_693
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_672
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-4],_bbNullObject
	push	_674
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	edi,dword [_bb_data]
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_677
	call	_brl_blitz_NullObjectError
_677:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	ebx,eax
	jmp	_59
_61:
	cmp	ebx,_bbNullObject
	jne	_682
	call	_brl_blitz_NullObjectError
_682:
	push	_bb_tdata
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-4],eax
	cmp	dword [ebp-4],_bbNullObject
	je	_59
	mov	eax,ebp
	push	eax
	push	_692
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_683
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_685
	call	_brl_blitz_NullObjectError
_685:
	cmp	dword [esi+28],0
	je	_686
	mov	eax,ebp
	push	eax
	push	_691
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_687
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-4]
	call	_bb_Save
	add	esp,8
	push	_688
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_690
	call	_brl_blitz_NullObjectError
_690:
	push	dword [esi+24]
	push	_62
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	call	dword [_bbOnDebugLeaveScope]
_686:
	call	dword [_bbOnDebugLeaveScope]
_59:
	cmp	ebx,_bbNullObject
	jne	_680
	call	_brl_blitz_NullObjectError
_680:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_61
_60:
	mov	ebx,0
	jmp	_144
_144:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Save:
	push	ebp
	mov	ebp,esp
	sub	esp,28
	push	ebx
	push	esi
	push	edi
	mov	eax,dword [ebp+8]
	mov	dword [ebp-4],eax
	mov	eax,dword [ebp+12]
	mov	dword [ebp-8],eax
	mov	dword [ebp-12],_bbEmptyString
	mov	dword [ebp-16],_bbNullObject
	mov	dword [ebp-20],_bbEmptyString
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-28],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_762
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_695
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_697
	call	_brl_blitz_NullObjectError
_697:
	mov	eax,dword [ebx+24]
	mov	dword [ebp-12],eax
	push	_699
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	mov	eax,dword [eax+8]
	cmp	eax,0
	sete	al
	movzx	eax,al
	cmp	eax,0
	jne	_700
	mov	eax,dword [ebp-8]
_700:
	cmp	eax,0
	je	_702
	mov	eax,ebp
	push	eax
	push	_704
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_703
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	1
	push	_64
	push	_63
	call	_brl_system_RequestFile
	add	esp,16
	mov	dword [ebp-12],eax
	call	dword [_bbOnDebugLeaveScope]
_702:
	push	_705
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	dword [eax+8],0
	jne	_706
	mov	eax,ebp
	push	eax
	push	_708
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_707
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_148
_706:
	push	_709
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bbNullObject
	push	dword [ebp-12]
	call	_jcr6_jcr6main_JCR_Create
	add	esp,8
	mov	dword [ebp-16],eax
	push	_711
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-16]
	cmp	esi,_bbNullObject
	jne	_713
	call	_brl_blitz_NullObjectError
_713:
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_715
	call	_brl_blitz_NullObjectError
_715:
	push	_1
	push	_1
	push	_66
	push	_65
	push	dword [ebx+8]
	push	esi
	mov	eax,dword [esi]
	call	dword [eax+60]
	add	esp,24
	push	_716
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_bbEmptyString
	push	_718
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_1
	push	_719
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_722
	call	_brl_blitz_NullObjectError
_722:
	mov	esi,dword [ebx+12]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_67
_69:
	mov	eax,dword [ebx]
	mov	dword [ebp-24],eax
	add	ebx,4
	cmp	dword [ebp-24],_bbNullObject
	je	_67
	mov	eax,ebp
	push	eax
	push	_728
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_727
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	push	dword [ebp-24]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_67:
	cmp	ebx,edi
	jne	_69
_68:
	push	_730
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_732
	call	_brl_blitz_NullObjectError
_732:
	push	_1
	push	_1
	push	_66
	push	_71
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,24
	push	_733
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],_1
	push	_734
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbEmptyString
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_737
	call	_brl_blitz_NullObjectError
_737:
	mov	esi,dword [ebx+16]
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_72
_74:
	mov	eax,dword [ebx]
	mov	dword [ebp-28],eax
	add	ebx,4
	cmp	dword [ebp-28],_bbNullObject
	je	_72
	mov	eax,ebp
	push	eax
	push	_743
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_742
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_70
	push	dword [ebp-28]
	call	_bbStringConcat
	add	esp,8
	push	eax
	push	dword [ebp-20]
	call	_bbStringConcat
	add	esp,8
	mov	dword [ebp-20],eax
	call	dword [_bbOnDebugLeaveScope]
_72:
	cmp	ebx,edi
	jne	_74
_73:
	push	_744
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_746
	call	_brl_blitz_NullObjectError
_746:
	push	_1
	push	_1
	push	_66
	push	_75
	push	dword [ebp-20]
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+60]
	add	esp,24
	push	_747
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-16]
	cmp	ebx,_bbNullObject
	jne	_749
	call	_brl_blitz_NullObjectError
_749:
	push	_66
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+80]
	add	esp,8
	push	_750
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_752
	call	_brl_blitz_NullObjectError
_752:
	mov	dword [ebx+28],0
	push	_754
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_756
	call	_brl_blitz_NullObjectError
_756:
	mov	ebx,dword [ebp-12]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_761
	push	eax
	call	_bbGCFree
	add	esp,4
_761:
	mov	dword [esi+24],ebx
	mov	ebx,0
	jmp	_148
_148:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
_bb_Load:
	push	ebp
	mov	ebp,esp
	sub	esp,48
	push	ebx
	push	esi
	push	edi
	mov	dword [ebp-4],_bbNullObject
	mov	dword [ebp-8],_bbEmptyString
	mov	dword [ebp-12],_bbNullObject
	mov	dword [ebp-24],_bbEmptyString
	mov	dword [ebp-16],_bbEmptyArray
	mov	dword [ebp-20],0
	mov	dword [ebp-28],_bbEmptyString
	mov	dword [ebp-32],_bbEmptyString
	mov	eax,ebp
	push	eax
	push	_875
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_769
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_bb_tdata
	call	_bbObjectNew
	add	esp,4
	mov	dword [ebp-4],eax
	push	_771
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	0
	push	_64
	push	_76
	call	_brl_system_RequestFile
	add	esp,16
	mov	dword [ebp-8],eax
	push	_773
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-8]
	cmp	dword [eax+8],0
	jne	_774
	mov	eax,ebp
	push	eax
	push	_776
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_775
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,0
	call	dword [_bbOnDebugLeaveScope]
	jmp	_150
_774:
	push	_777
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	_1
	push	dword [ebp-8]
	call	_jcr6_jcr6main_JCR_Dir
	add	esp,8
	mov	dword [ebp-12],eax
	push	_779
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	eax,dword [ebp-12]
	cmp	eax,_bbNullObject
	setne	al
	movzx	eax,al
	cmp	eax,0
	jne	_780
	mov	eax,ebp
	push	eax
	push	_782
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_781
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_77
	call	_brl_system_Notify
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	jmp	_150
_780:
	push	_783
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-24],_bbEmptyString
	push	3
	push	_107
	call	_bbArrayNew1D
	add	esp,8
	mov	edx,_81
	inc	dword [edx+4]
	mov	dword [eax+24],edx
	mov	edx,_82
	inc	dword [edx+4]
	mov	dword [eax+28],edx
	mov	edx,_83
	inc	dword [edx+4]
	mov	dword [eax+32],edx
	mov	esi,eax
	mov	eax,esi
	add	eax,24
	mov	ebx,eax
	mov	eax,ebx
	add	eax,dword [esi+16]
	mov	edi,eax
	jmp	_78
_80:
	mov	eax,dword [ebx]
	mov	dword [ebp-24],eax
	add	ebx,4
	cmp	dword [ebp-24],_bbNullObject
	je	_78
	mov	eax,ebp
	push	eax
	push	_797
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_793
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-24]
	push	dword [ebp-12]
	call	_jcr6_jcr6main_JCR_Exists
	add	esp,8
	cmp	eax,0
	jne	_794
	mov	eax,ebp
	push	eax
	push	_796
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_795
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	_85
	push	dword [ebp-24]
	push	_84
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	mov	ebx,eax
	call	dword [_bbOnDebugLeaveScope]
	call	dword [_bbOnDebugLeaveScope]
	jmp	_150
_794:
	call	dword [_bbOnDebugLeaveScope]
_78:
	cmp	ebx,edi
	jne	_80
_79:
	push	_799
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_801
	call	_brl_blitz_NullObjectError
_801:
	push	_65
	push	dword [ebp-12]
	call	_jcr6_jcr6main_JCR_B
	add	esp,8
	push	eax
	call	_brl_stream_LoadString
	add	esp,4
	mov	esi,eax
	inc	dword [esi+4]
	mov	eax,dword [ebx+8]
	dec	dword [eax+4]
	jnz	_806
	push	eax
	call	_bbGCFree
	add	esp,4
_806:
	mov	dword [ebx+8],esi
	push	_807
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	20
	push	_808
	call	_bbArrayNew1D
	add	esp,8
	mov	dword [ebp-16],eax
	mov	dword [ebp-20],0
	push	_811
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	2
	push	_109
	call	_bbArrayNew1D
	add	esp,8
	mov	ebx,eax
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_813
	call	_brl_blitz_NullObjectError
_813:
	mov	eax,dword [esi+12]
	inc	dword [eax+4]
	mov	dword [ebx+24],eax
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_815
	call	_brl_blitz_NullObjectError
_815:
	mov	eax,dword [esi+16]
	inc	dword [eax+4]
	mov	dword [ebx+28],eax
	mov	dword [ebp-44],ebx
	mov	eax,dword [ebp-44]
	add	eax,24
	mov	dword [ebp-40],eax
	mov	edx,dword [ebp-40]
	mov	eax,dword [ebp-44]
	add	edx,dword [eax+16]
	mov	dword [ebp-48],edx
	jmp	_86
_88:
	mov	eax,dword [ebp-40]
	mov	eax,dword [eax]
	mov	dword [ebp-16],eax
	add	dword [ebp-40],4
	cmp	dword [ebp-16],_bbNullObject
	je	_86
	mov	eax,ebp
	push	eax
	push	_863
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_823
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_bbEmptyString
	push	_825
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-4]
	cmp	ebx,_bbNullObject
	jne	_827
	call	_brl_blitz_NullObjectError
_827:
	mov	eax,dword [ebx+12]
	cmp	dword [ebp-16],eax
	jne	_828
	mov	eax,ebp
	push	eax
	push	_830
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_829
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_83
	call	dword [_bbOnDebugLeaveScope]
	jmp	_831
_828:
	mov	eax,ebp
	push	eax
	push	_833
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_832
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-28],_82
	call	dword [_bbOnDebugLeaveScope]
_831:
	push	_834
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-20],0
	push	_835
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	dword [ebp-32],_bbEmptyString
	push	dword [ebp-28]
	push	dword [ebp-12]
	call	_jcr6_jcr6main_JCR_B
	add	esp,8
	push	eax
	call	_tricky_units_listfile_Listfile
	add	esp,4
	mov	dword [ebp-36],eax
	mov	ebx,dword [ebp-36]
	cmp	ebx,_bbNullObject
	jne	_839
	call	_brl_blitz_NullObjectError
_839:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+140]
	add	esp,4
	mov	edi,eax
	jmp	_89
_91:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_844
	call	_brl_blitz_NullObjectError
_844:
	push	_bbStringClass
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+52]
	add	esp,4
	push	eax
	call	_bbObjectDowncast
	add	esp,8
	mov	dword [ebp-32],eax
	cmp	dword [ebp-32],_bbNullObject
	je	_89
	mov	eax,ebp
	push	eax
	push	_861
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_845
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-32]
	push	_94
	push	dword [ebp-28]
	push	_93
	push	dword [ebp-20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_92
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_blitz_DebugLog
	add	esp,4
	push	_846
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	cmp	dword [ebp-20],20
	jge	_847
	mov	eax,ebp
	push	eax
	push	_856
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_848
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	ebx,dword [ebp-20]
	mov	eax,dword [ebp-16]
	cmp	ebx,dword [eax+20]
	jb	_850
	call	_brl_blitz_ArrayBoundsError
_850:
	mov	eax,dword [ebp-16]
	shl	ebx,2
	add	eax,ebx
	mov	esi,eax
	mov	eax,dword [ebp-32]
	inc	dword [eax+4]
	mov	ebx,eax
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_855
	push	eax
	call	_bbGCFree
	add	esp,4
_855:
	mov	dword [esi+24],ebx
	call	dword [_bbOnDebugLeaveScope]
	jmp	_857
_847:
	mov	eax,ebp
	push	eax
	push	_859
	call	dword [_bbOnDebugEnterScope]
	add	esp,8
	push	_858
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	0
	push	dword [ebp-28]
	push	_96
	push	dword [ebp-20]
	call	_bbStringFromInt
	add	esp,4
	push	eax
	push	_95
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_bbStringConcat
	add	esp,8
	push	eax
	call	_brl_system_Notify
	add	esp,8
	call	dword [_bbOnDebugLeaveScope]
_857:
	push	_860
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	add	dword [ebp-20],1
	call	dword [_bbOnDebugLeaveScope]
_89:
	mov	ebx,edi
	cmp	ebx,_bbNullObject
	jne	_842
	call	_brl_blitz_NullObjectError
_842:
	push	ebx
	mov	eax,dword [ebx]
	call	dword [eax+48]
	add	esp,4
	cmp	eax,0
	jne	_91
_90:
	call	dword [_bbOnDebugLeaveScope]
_86:
	mov	eax,dword [ebp-48]
	cmp	dword [ebp-40],eax
	jne	_88
_87:
	push	_865
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	mov	esi,dword [ebp-4]
	cmp	esi,_bbNullObject
	jne	_867
	call	_brl_blitz_NullObjectError
_867:
	mov	ebx,dword [ebp-8]
	inc	dword [ebx+4]
	mov	eax,dword [esi+24]
	dec	dword [eax+4]
	jnz	_872
	push	eax
	call	_bbGCFree
	add	esp,4
_872:
	mov	dword [esi+24],ebx
	push	_873
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [ebp-4]
	push	dword [_bb_data]
	call	_brl_linkedlist_ListAddLast
	add	esp,8
	push	_874
	call	dword [_bbOnDebugEnterStm]
	add	esp,4
	push	dword [_bb_data]
	call	_brl_linkedlist_CountList
	add	esp,4
	sub	eax,1
	push	eax
	call	_bb_UpdateTabber
	add	esp,4
	mov	ebx,0
	jmp	_150
_150:
	call	dword [_bbOnDebugLeaveScope]
	mov	eax,ebx
	pop	edi
	pop	esi
	pop	ebx
	mov	esp,ebp
	pop	ebp
	ret
	section	"data" data writeable align 8
	align	4
_433:
	dd	0
_398:
	db	"Staafpuzzel Maker",0
_399:
	db	"maxvragen",0
_115:
	db	"i",0
	align	4
_400:
	dd	_bbStringClass
	dd	2147483646
	dd	2
	dw	50,48
_401:
	db	"maxantwoorden",0
_402:
	db	"filerequired",0
_403:
	db	":TList",0
	align	4
_bb_filerequired:
	dd	_bbNullObject
_404:
	db	"activegadgetrequired",0
	align	4
_bb_activegadgetrequired:
	dd	_bbNullObject
_405:
	db	"DT",0
_406:
	db	":TGadget",0
	align	4
_bb_DT:
	dd	_bbNullObject
_407:
	db	"window",0
_408:
	db	":Tgadget",0
	align	4
_bb_window:
	dd	_bbNullObject
_409:
	db	"ww",0
	align	4
_bb_ww:
	dd	0
_410:
	db	"wh",0
	align	4
_bb_wh:
	dd	0
_411:
	db	"filemenu",0
_412:
	db	":tgadget",0
	align	4
_bb_filemenu:
	dd	_bbNullObject
_413:
	db	"RecentMenu",0
	align	4
_bb_RecentMenu:
	dd	_bbNullObject
_414:
	db	"editmenu",0
	align	4
_bb_editmenu:
	dd	_bbNullObject
_415:
	db	"data",0
	align	4
_bb_data:
	dd	_bbNullObject
_416:
	db	"rec",0
_417:
	db	":tdata",0
	align	4
_bb_rec:
	dd	_bbNullObject
_418:
	db	"AG",0
	align	4
_bb_AG:
	dd	_bbNullObject
_419:
	db	"Tabber",0
	align	4
_bb_Tabber:
	dd	_bbNullObject
_420:
	db	"TW",0
	align	4
_bb_TW:
	dd	0
_421:
	db	"TH",0
	align	4
_bb_TH:
	dd	0
_422:
	db	"Panel",0
	align	4
_bb_Panel:
	dd	_bbNullObject
_423:
	db	"pw",0
	align	4
_bb_pw:
	dd	0
_424:
	db	"ph",0
	align	4
_bb_ph:
	dd	0
_425:
	db	"pc",0
	align	4
_bb_pc:
	dd	0
_106:
	db	"staafwoord",0
	align	4
_bb_staafwoord:
	dd	_bbNullObject
_426:
	db	"vrnum",0
_427:
	db	"[]:TGadget",0
	align	4
_bb_vrnum:
	dd	_bbEmptyArray
_428:
	db	"vrvraag",0
_429:
	db	"[]:Tgadget",0
	align	4
_bb_vrvraag:
	dd	_bbEmptyArray
_430:
	db	"vrantw",0
_431:
	db	"[]:tgadget",0
	align	4
_bb_vrantw:
	dd	_bbEmptyArray
_432:
	db	"vrcheck",0
	align	4
_bb_vrcheck:
	dd	_bbEmptyArray
_114:
	db	"modified",0
	align	4
_bb_modified:
	dd	_bbNullObject
	align	4
_397:
	dd	1
	dd	_398
	dd	1
	dd	_399
	dd	_115
	dd	_400
	dd	1
	dd	_401
	dd	_115
	dd	_400
	dd	4
	dd	_402
	dd	_403
	dd	_bb_filerequired
	dd	4
	dd	_404
	dd	_403
	dd	_bb_activegadgetrequired
	dd	4
	dd	_405
	dd	_406
	dd	_bb_DT
	dd	4
	dd	_407
	dd	_408
	dd	_bb_window
	dd	4
	dd	_409
	dd	_115
	dd	_bb_ww
	dd	4
	dd	_410
	dd	_115
	dd	_bb_wh
	dd	4
	dd	_411
	dd	_412
	dd	_bb_filemenu
	dd	4
	dd	_413
	dd	_406
	dd	_bb_RecentMenu
	dd	4
	dd	_414
	dd	_406
	dd	_bb_editmenu
	dd	4
	dd	_415
	dd	_403
	dd	_bb_data
	dd	4
	dd	_416
	dd	_417
	dd	_bb_rec
	dd	4
	dd	_418
	dd	_406
	dd	_bb_AG
	dd	4
	dd	_419
	dd	_406
	dd	_bb_Tabber
	dd	4
	dd	_420
	dd	_115
	dd	_bb_TW
	dd	4
	dd	_421
	dd	_115
	dd	_bb_TH
	dd	4
	dd	_422
	dd	_408
	dd	_bb_Panel
	dd	4
	dd	_423
	dd	_115
	dd	_bb_pw
	dd	4
	dd	_424
	dd	_115
	dd	_bb_ph
	dd	4
	dd	_425
	dd	_115
	dd	_bb_pc
	dd	4
	dd	_106
	dd	_412
	dd	_bb_staafwoord
	dd	4
	dd	_426
	dd	_427
	dd	_bb_vrnum
	dd	4
	dd	_428
	dd	_429
	dd	_bb_vrvraag
	dd	4
	dd	_430
	dd	_431
	dd	_bb_vrantw
	dd	4
	dd	_432
	dd	_429
	dd	_bb_vrcheck
	dd	4
	dd	_114
	dd	_406
	dd	_bb_modified
	dd	0
_105:
	db	"tdata",0
_107:
	db	"$",0
_108:
	db	"vragen",0
_109:
	db	"[]$",0
_110:
	db	"antwoorden",0
_111:
	db	"letterpos",0
_112:
	db	"[]i",0
_113:
	db	"filename",0
_116:
	db	"New",0
_117:
	db	"()i",0
_118:
	db	"Delete",0
	align	4
_104:
	dd	2
	dd	_105
	dd	3
	dd	_106
	dd	_107
	dd	8
	dd	3
	dd	_108
	dd	_109
	dd	12
	dd	3
	dd	_110
	dd	_109
	dd	16
	dd	3
	dd	_111
	dd	_112
	dd	20
	dd	3
	dd	_113
	dd	_107
	dd	24
	dd	3
	dd	_114
	dd	_115
	dd	28
	dd	6
	dd	_116
	dd	_117
	dd	16
	dd	6
	dd	_118
	dd	_117
	dd	20
	dd	0
	align	4
_bb_tdata:
	dd	_bbObjectClass
	dd	_bbObjectFree
	dd	_104
	dd	32
	dd	__bb_tdata_New
	dd	__bb_tdata_Delete
	dd	_bbObjectToString
	dd	_bbObjectCompare
	dd	_bbObjectSendMessage
	dd	_bbObjectReserved
	dd	_bbObjectReserved
	dd	_bbObjectReserved
_153:
	db	"E:/Jara Programs/Tools/Staafpuzzel Maker/Staafpuzzel Maker.bmx",0
	align	4
_152:
	dd	_153
	dd	8
	dd	1
	align	4
_155:
	dd	0
	align	4
_157:
	dd	_153
	dd	9
	dd	1
	align	4
_160:
	dd	_153
	dd	11
	dd	1
	align	4
_163:
	dd	_153
	dd	12
	dd	1
	align	4
_19:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	83,116,97,97,102,32,80,117,122,122,101,108
	align	4
_166:
	dd	_153
	dd	13
	dd	1
	align	4
_168:
	dd	_153
	dd	14
	dd	1
	align	4
_170:
	dd	_153
	dd	16
	dd	1
	align	4
_20:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	66,101,115,116,97,110,100
	align	4
_173:
	dd	_153
	dd	17
	dd	1
	align	4
_21:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	78,105,101,117,119
	align	4
_174:
	dd	_153
	dd	18
	dd	1
	align	4
_22:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	79,112,101,110,101,110
	align	4
_175:
	dd	_153
	dd	19
	dd	1
	align	4
_23:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	79,112,115,108,97,97,110
	align	4
_176:
	dd	_153
	dd	20
	dd	1
	align	4
_24:
	dd	_bbStringClass
	dd	2147483647
	dd	14
	dw	79,112,115,108,97,97,110,32,97,108,115,46,46,46
	align	4
_177:
	dd	_153
	dd	21
	dd	1
	align	4
_25:
	dd	_bbStringClass
	dd	2147483647
	dd	13
	dw	65,108,108,101,115,32,111,112,115,108,97,97,110
	align	4
_178:
	dd	_153
	dd	22
	dd	1
	align	4
_1:
	dd	_bbStringClass
	dd	2147483647
	dd	0
	align	4
_179:
	dd	_153
	dd	23
	dd	1
	align	4
_26:
	dd	_bbStringClass
	dd	2147483647
	dd	16
	dw	69,120,112,111,114,116,101,101,114,32,112,117,122,122,108,101
	align	4
_180:
	dd	_153
	dd	24
	dd	1
	align	4
_27:
	dd	_bbStringClass
	dd	2147483647
	dd	31
	dw	69,120,112,111,114,116,101,101,114,32,112,117,122,122,108,101
	dw	32,109,101,116,32,97,110,116,119,111,111,114,100,101,110
	align	4
_181:
	dd	_153
	dd	25
	dd	1
	align	4
_182:
	dd	_153
	dd	26
	dd	1
	align	4
_28:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	82,101,99,101,110,116
	align	4
_185:
	dd	_153
	dd	29
	dd	1
	align	4
_186:
	dd	_153
	dd	31
	dd	1
	align	4
_29:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	83,116,111,112,112,101,110
	align	4
_187:
	dd	_153
	dd	36
	dd	1
	align	4
_30:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	87,105,106,122,105,103,101,110
	align	4
_190:
	dd	_153
	dd	37
	dd	1
	align	4
_31:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	75,111,112,105,101,114,101,110
	align	4
_191:
	dd	_153
	dd	38
	dd	1
	align	4
_32:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	75,110,105,112,112,101,110
	align	4
_192:
	dd	_153
	dd	39
	dd	1
	align	4
_33:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	80,108,97,107,107,101,110
	align	4
_193:
	dd	_153
	dd	41
	dd	1
	align	4
_194:
	dd	_153
	dd	55
	dd	1
	align	4
_197:
	dd	_153
	dd	56
	dd	1
	align	4
_198:
	dd	_153
	dd	57
	dd	1
	align	4
_199:
	dd	_153
	dd	65
	dd	1
	align	4
_202:
	dd	_153
	dd	66
	dd	1
	align	4
_204:
	dd	_153
	dd	67
	dd	1
	align	4
_206:
	dd	_153
	dd	68
	dd	1
	align	4
_209:
	dd	_153
	dd	69
	dd	1
	align	4
_211:
	dd	_153
	dd	70
	dd	1
	align	4
_213:
	dd	_153
	dd	71
	dd	1
	align	4
_215:
	dd	_153
	dd	73
	dd	1
	align	4
_37:
	dd	_bbStringClass
	dd	2147483647
	dd	18
	dw	71,108,111,98,97,97,108,32,97,110,116,119,111,111,114,100
	dw	58,32
	align	4
_216:
	dd	_153
	dd	74
	dd	1
	align	4
_219:
	dd	_153
	dd	75
	dd	1
	align	4
_38:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	86,114,97,97,103
	align	4
_220:
	dd	_153
	dd	76
	dd	1
	align	4
_39:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	65,110,116,119,111,111,114,100
	align	4
_221:
	dd	_153
	dd	77
	dd	1
_222:
	db	":TGadget",0
	align	4
_225:
	dd	_153
	dd	78
	dd	1
_226:
	db	":Tgadget",0
	align	4
_229:
	dd	_153
	dd	79
	dd	1
_230:
	db	":tgadget",0
	align	4
_233:
	dd	_153
	dd	80
	dd	1
_234:
	db	":Tgadget",0
	align	4
_237:
	dd	_153
	dd	81
	dd	1
_275:
	db	"y",0
	align	4
_274:
	dd	3
	dd	0
	dd	2
	dd	_115
	dd	_115
	dd	-4
	dd	2
	dd	_275
	dd	_115
	dd	-8
	dd	0
	align	4
_240:
	dd	_153
	dd	82
	dd	2
	align	4
_242:
	dd	_153
	dd	83
	dd	2
	align	4
_250:
	dd	_153
	dd	84
	dd	2
	align	4
_258:
	dd	_153
	dd	85
	dd	2
	align	4
_266:
	dd	_153
	dd	86
	dd	2
	align	4
_276:
	dd	_153
	dd	88
	dd	1
	align	4
_43:
	dd	_bbStringClass
	dd	2147483647
	dd	9
	dw	71,101,119,105,106,122,105,103,100
	align	4
_279:
	dd	_153
	dd	241
	dd	1
	align	4
_396:
	dd	3
	dd	0
	dd	0
	align	4
_280:
	dd	_153
	dd	211
	dd	2
	align	4
_285:
	dd	_153
	dd	212
	dd	2
	align	4
_288:
	dd	_153
	dd	213
	dd	2
	align	4
_291:
	dd	_153
	dd	214
	dd	2
	align	4
_294:
	dd	_153
	dd	215
	dd	2
	align	4
_301:
	dd	_153
	dd	216
	dd	2
	align	4
_371:
	dd	3
	dd	0
	dd	0
	align	4
_303:
	dd	_153
	dd	217
	dd	3
_370:
	db	"f",0
	align	4
_369:
	dd	3
	dd	0
	dd	2
	dd	_115
	dd	_115
	dd	-12
	dd	2
	dd	_370
	dd	_115
	dd	-16
	dd	0
	align	4
_306:
	dd	_153
	dd	218
	dd	4
	align	4
_313:
	dd	_153
	dd	219
	dd	4
	align	4
_320:
	dd	_153
	dd	220
	dd	4
	align	4
_327:
	dd	_153
	dd	221
	dd	4
	align	4
_334:
	dd	_153
	dd	222
	dd	4
	align	4
_336:
	dd	_153
	dd	223
	dd	4
	align	4
_351:
	dd	3
	dd	0
	dd	0
	align	4
_340:
	dd	_153
	dd	223
	dd	34
	align	4
_352:
	dd	_153
	dd	224
	dd	4
	align	4
_360:
	dd	3
	dd	0
	dd	0
	align	4
_354:
	dd	_153
	dd	225
	dd	5
	align	4
_103:
	dd	_bbStringClass
	dd	2147483647
	dd	7
	dw	70,79,85,84,33,33,33
	align	4
_357:
	dd	_153
	dd	226
	dd	5
	align	4
_368:
	dd	3
	dd	0
	dd	0
	align	4
_362:
	dd	_153
	dd	228
	dd	5
	align	4
_365:
	dd	_153
	dd	229
	dd	5
	align	4
_372:
	dd	_153
	dd	233
	dd	2
	align	4
_379:
	dd	3
	dd	0
	dd	0
	align	4
_378:
	dd	_153
	dd	233
	dd	44
	align	4
_382:
	dd	3
	dd	0
	dd	0
	align	4
_381:
	dd	_153
	dd	233
	dd	83
	align	4
_383:
	dd	_153
	dd	234
	dd	2
	align	4
_384:
	dd	_153
	dd	235
	dd	2
	align	4
_391:
	dd	3
	dd	0
	dd	0
	align	4
_390:
	dd	_153
	dd	237
	dd	7
	align	4
_393:
	dd	3
	dd	0
	dd	0
	align	4
_392:
	dd	_153
	dd	238
	dd	27
	align	4
_395:
	dd	3
	dd	0
	dd	0
	align	4
_394:
	dd	_153
	dd	239
	dd	25
_445:
	db	"Self",0
	align	4
_444:
	dd	1
	dd	_116
	dd	2
	dd	_445
	dd	_417
	dd	-4
	dd	0
_436:
	db	"$",0
_438:
	db	"$",0
_440:
	db	"i",0
	align	4
_443:
	dd	3
	dd	0
	dd	0
_473:
	db	"AutoAble",0
_474:
	db	"l",0
_475:
	db	"condition",0
	align	4
_472:
	dd	1
	dd	_473
	dd	2
	dd	_474
	dd	_403
	dd	-4
	dd	2
	dd	_475
	dd	_115
	dd	-8
	dd	0
	align	4
_457:
	dd	_153
	dd	60
	dd	2
_471:
	db	"G",0
	align	4
_470:
	dd	3
	dd	0
	dd	2
	dd	_471
	dd	_408
	dd	-12
	dd	0
	align	4
_467:
	dd	_153
	dd	61
	dd	3
_533:
	db	"UpdateTabber",0
_534:
	db	"goPage",0
_535:
	db	"n",0
	align	4
_532:
	dd	1
	dd	_533
	dd	2
	dd	_534
	dd	_115
	dd	-4
	dd	2
	dd	_535
	dd	_107
	dd	-8
	dd	0
	align	4
_476:
	dd	_153
	dd	91
	dd	2
	align	4
_478:
	dd	_153
	dd	92
	dd	2
	align	4
_479:
	dd	_153
	dd	93
	dd	2
_500:
	db	"r",0
	align	4
_499:
	dd	3
	dd	0
	dd	2
	dd	_500
	dd	_417
	dd	-12
	dd	0
	align	4
_489:
	dd	_153
	dd	94
	dd	3
	align	4
_492:
	dd	_153
	dd	95
	dd	3
	align	4
_497:
	dd	3
	dd	0
	dd	0
	align	4
_496:
	dd	_153
	dd	95
	dd	21
	align	4
_47:
	dd	_bbStringClass
	dd	2147483647
	dd	12
	dw	42,32,78,65,65,77,76,79,79,83,32,42
	align	4
_498:
	dd	_153
	dd	96
	dd	3
	align	4
_501:
	dd	_153
	dd	98
	dd	2
	align	4
_502:
	dd	_153
	dd	99
	dd	2
	align	4
_509:
	dd	_153
	dd	100
	dd	2
	align	4
_512:
	dd	_153
	dd	101
	dd	2
	align	4
_531:
	dd	3
	dd	0
	dd	2
	dd	_115
	dd	_115
	dd	-16
	dd	0
	align	4
_515:
	dd	_153
	dd	102
	dd	3
	align	4
_523:
	dd	_153
	dd	103
	dd	3
_539:
	db	"NewFile",0
	align	4
_538:
	dd	1
	dd	_539
	dd	0
	align	4
_536:
	dd	_153
	dd	108
	dd	2
	align	4
_537:
	dd	_153
	dd	109
	dd	2
_609:
	db	"Action",0
_610:
	db	"source",0
	align	4
_608:
	dd	1
	dd	_609
	dd	2
	dd	_610
	dd	_406
	dd	-4
	dd	0
	align	4
_540:
	dd	_153
	dd	113
	dd	2
	align	4
_557:
	dd	3
	dd	0
	dd	0
	align	4
_545:
	dd	_153
	dd	115
	dd	4
	align	4
_553:
	dd	_153
	dd	116
	dd	4
	align	4
_559:
	dd	3
	dd	0
	dd	0
	align	4
_558:
	dd	_153
	dd	118
	dd	4
	align	4
_560:
	dd	_153
	dd	120
	dd	2
	align	4
_607:
	dd	3
	dd	0
	dd	2
	dd	_115
	dd	_115
	dd	-8
	dd	0
	align	4
_563:
	dd	_153
	dd	121
	dd	3
	align	4
_584:
	dd	3
	dd	0
	dd	0
	align	4
_567:
	dd	_153
	dd	121
	dd	24
	align	4
_580:
	dd	_153
	dd	121
	dd	66
	align	4
_585:
	dd	_153
	dd	122
	dd	3
	align	4
_606:
	dd	3
	dd	0
	dd	0
	align	4
_589:
	dd	_153
	dd	122
	dd	23
	align	4
_602:
	dd	_153
	dd	122
	dd	78
_633:
	db	"menu",0
	align	4
_632:
	dd	1
	dd	_633
	dd	2
	dd	_115
	dd	_115
	dd	-4
	dd	0
	align	4
_611:
	dd	_153
	dd	127
	dd	2
	align	4
_621:
	dd	3
	dd	0
	dd	0
	align	4
_620:
	dd	_153
	dd	128
	dd	13
	align	4
_623:
	dd	3
	dd	0
	dd	0
	align	4
_622:
	dd	_153
	dd	129
	dd	13
	align	4
_625:
	dd	3
	dd	0
	dd	0
	align	4
_624:
	dd	_153
	dd	130
	dd	13
	align	4
_627:
	dd	3
	dd	0
	dd	0
	align	4
_626:
	dd	_153
	dd	131
	dd	13
	align	4
_629:
	dd	3
	dd	0
	dd	0
	align	4
_628:
	dd	_153
	dd	132
	dd	13
	align	4
_631:
	dd	3
	dd	0
	dd	0
	align	4
_630:
	dd	_153
	dd	133
	dd	14
_671:
	db	"Quit",0
	align	4
_670:
	dd	1
	dd	_671
	dd	2
	dd	_500
	dd	_417
	dd	-4
	dd	2
	dd	_535
	dd	_107
	dd	-8
	dd	0
	align	4
_634:
	dd	_153
	dd	138
	dd	2
	align	4
_636:
	dd	_153
	dd	139
	dd	2
	align	4
_638:
	dd	_153
	dd	140
	dd	2
	align	4
_668:
	dd	3
	dd	0
	dd	0
	align	4
_647:
	dd	_153
	dd	141
	dd	3
	align	4
_667:
	dd	3
	dd	0
	dd	0
	align	4
_651:
	dd	_153
	dd	142
	dd	4
	align	4
_654:
	dd	_153
	dd	143
	dd	4
	align	4
_657:
	dd	3
	dd	0
	dd	0
	align	4
_656:
	dd	_153
	dd	143
	dd	13
	align	4
_57:
	dd	_bbStringClass
	dd	2147483647
	dd	20
	dw	69,101,110,32,110,97,97,109,108,111,111,115,32,98,101,115
	dw	116,97,110,100
	align	4
_658:
	dd	_153
	dd	144
	dd	4
	align	4
_58:
	dd	_bbStringClass
	dd	2147483647
	dd	41
	dw	32,105,115,32,103,101,119,105,106,122,105,103,100,46,10,79
	dw	112,115,108,97,97,110,32,118,111,111,114,100,97,116,32,117
	dw	32,97,102,115,108,117,105,116,63
	align	4
_664:
	dd	3
	dd	0
	dd	0
	align	4
_663:
	dd	_153
	dd	145
	dd	12
	align	4
_666:
	dd	3
	dd	0
	dd	0
	align	4
_665:
	dd	_153
	dd	146
	dd	13
	align	4
_669:
	dd	_153
	dd	150
	dd	2
_694:
	db	"AllSave",0
	align	4
_693:
	dd	1
	dd	_694
	dd	2
	dd	_500
	dd	_417
	dd	-4
	dd	0
	align	4
_672:
	dd	_153
	dd	154
	dd	2
	align	4
_674:
	dd	_153
	dd	155
	dd	2
	align	4
_692:
	dd	3
	dd	0
	dd	0
	align	4
_683:
	dd	_153
	dd	156
	dd	3
	align	4
_691:
	dd	3
	dd	0
	dd	0
	align	4
_687:
	dd	_153
	dd	156
	dd	17
	align	4
_688:
	dd	_153
	dd	156
	dd	25
	align	4
_62:
	dd	_bbStringClass
	dd	2147483647
	dd	8
	dw	83,97,118,105,110,103,58,32
_763:
	db	"Save",0
_764:
	db	":Tdata",0
_765:
	db	"forcename",0
_766:
	db	"bt",0
_767:
	db	":TJCRCreate",0
_768:
	db	"s",0
	align	4
_762:
	dd	1
	dd	_763
	dd	2
	dd	_416
	dd	_764
	dd	-4
	dd	2
	dd	_765
	dd	_115
	dd	-8
	dd	2
	dd	_370
	dd	_107
	dd	-12
	dd	2
	dd	_766
	dd	_767
	dd	-16
	dd	2
	dd	_768
	dd	_107
	dd	-20
	dd	0
	align	4
_695:
	dd	_153
	dd	161
	dd	2
	align	4
_699:
	dd	_153
	dd	162
	dd	2
	align	4
_704:
	dd	3
	dd	0
	dd	0
	align	4
_703:
	dd	_153
	dd	163
	dd	3
	align	4
_64:
	dd	_bbStringClass
	dd	2147483647
	dd	22
	dw	83,116,97,97,102,112,117,122,122,108,101,32,77,97,107,101
	dw	114,58,115,112,109,102
	align	4
_63:
	dd	_bbStringClass
	dd	2147483647
	dd	29
	dw	71,101,101,102,32,101,101,110,32,98,101,115,116,97,110,100
	dw	110,97,97,109,32,111,112,32,97,46,117,46,98
	align	4
_705:
	dd	_153
	dd	165
	dd	2
	align	4
_708:
	dd	3
	dd	0
	dd	0
	align	4
_707:
	dd	_153
	dd	165
	dd	11
	align	4
_709:
	dd	_153
	dd	166
	dd	2
	align	4
_711:
	dd	_153
	dd	167
	dd	2
	align	4
_66:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	122,108,105,98
	align	4
_65:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	83,116,97,97,102,119,111,111,114,100
	align	4
_716:
	dd	_153
	dd	168
	dd	2
	align	4
_718:
	dd	_153
	dd	169
	dd	2
	align	4
_719:
	dd	_153
	dd	169
	dd	10
_729:
	db	"is",0
	align	4
_728:
	dd	3
	dd	0
	dd	2
	dd	_729
	dd	_107
	dd	-24
	dd	0
	align	4
_727:
	dd	_153
	dd	169
	dd	42
	align	4
_70:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	10
	align	4
_730:
	dd	_153
	dd	170
	dd	2
	align	4
_71:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	86,114,97,103,101,110
	align	4
_733:
	dd	_153
	dd	171
	dd	2
	align	4
_734:
	dd	_153
	dd	171
	dd	10
	align	4
_743:
	dd	3
	dd	0
	dd	2
	dd	_729
	dd	_107
	dd	-28
	dd	0
	align	4
_742:
	dd	_153
	dd	171
	dd	46
	align	4
_744:
	dd	_153
	dd	172
	dd	2
	align	4
_75:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	65,110,116,119,111,111,114,100,101,110
	align	4
_747:
	dd	_153
	dd	173
	dd	2
	align	4
_750:
	dd	_153
	dd	174
	dd	2
	align	4
_754:
	dd	_153
	dd	175
	dd	2
_876:
	db	"Load",0
_877:
	db	"d",0
_878:
	db	":TJCRDir",0
_879:
	db	"a",0
_880:
	db	"c",0
	align	4
_875:
	dd	1
	dd	_876
	dd	2
	dd	_416
	dd	_764
	dd	-4
	dd	2
	dd	_370
	dd	_107
	dd	-8
	dd	2
	dd	_877
	dd	_878
	dd	-12
	dd	2
	dd	_879
	dd	_109
	dd	-16
	dd	2
	dd	_880
	dd	_115
	dd	-20
	dd	0
	align	4
_769:
	dd	_153
	dd	179
	dd	2
	align	4
_771:
	dd	_153
	dd	180
	dd	2
	align	4
_76:
	dd	_bbStringClass
	dd	2147483647
	dd	30
	dw	71,101,101,102,32,97,46,117,46,98,32,101,101,110,32,98
	dw	101,115,116,97,110,100,115,110,97,97,109,32,111,112
	align	4
_773:
	dd	_153
	dd	180
	dd	85
	align	4
_776:
	dd	3
	dd	0
	dd	0
	align	4
_775:
	dd	_153
	dd	180
	dd	94
	align	4
_777:
	dd	_153
	dd	181
	dd	2
	align	4
_779:
	dd	_153
	dd	182
	dd	2
	align	4
_782:
	dd	3
	dd	0
	dd	0
	align	4
_781:
	dd	_153
	dd	182
	dd	11
	align	4
_77:
	dd	_bbStringClass
	dd	2147483647
	dd	27
	dw	72,101,116,32,98,101,115,116,97,110,100,32,105,115,32,110
	dw	105,101,116,32,104,101,114,107,101,110,100
	align	4
_783:
	dd	_153
	dd	183
	dd	2
	align	4
_81:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	83,84,65,65,70,87,79,79,82,68
	align	4
_82:
	dd	_bbStringClass
	dd	2147483647
	dd	10
	dw	65,78,84,87,79,79,82,68,69,78
	align	4
_83:
	dd	_bbStringClass
	dd	2147483647
	dd	6
	dw	86,82,65,71,69,78
_798:
	db	"ff",0
	align	4
_797:
	dd	3
	dd	0
	dd	2
	dd	_798
	dd	_107
	dd	-24
	dd	0
	align	4
_793:
	dd	_153
	dd	184
	dd	3
	align	4
_796:
	dd	3
	dd	0
	dd	0
	align	4
_795:
	dd	_153
	dd	184
	dd	27
	align	4
_85:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	41
	align	4
_84:
	dd	_bbStringClass
	dd	2147483647
	dd	121
	dw	68,105,116,32,98,101,115,116,97,110,100,32,105,115,32,109
	dw	111,103,101,108,105,106,107,32,103,101,101,110,32,98,101,115
	dw	116,97,110,100,32,98,101,100,111,101,108,100,32,118,111,111
	dw	114,32,100,105,116,32,112,114,111,103,114,97,109,109,97,44
	dw	32,111,102,32,104,101,116,32,105,115,32,97,102,107,111,109
	dw	115,116,105,103,32,118,97,110,32,101,101,110,32,101,120,116
	dw	114,101,101,109,32,111,117,100,101,32,118,101,114,115,105,101
	dw	33,10,10,40,67,72,75,58,32
	align	4
_799:
	dd	_153
	dd	186
	dd	2
	align	4
_807:
	dd	_153
	dd	187
	dd	2
_808:
	db	"$",0
	align	4
_811:
	dd	_153
	dd	188
	dd	2
_864:
	db	"je",0
	align	4
_863:
	dd	3
	dd	0
	dd	2
	dd	_864
	dd	_107
	dd	-28
	dd	0
	align	4
_823:
	dd	_153
	dd	190
	dd	3
	align	4
_825:
	dd	_153
	dd	191
	dd	3
	align	4
_830:
	dd	3
	dd	0
	dd	0
	align	4
_829:
	dd	_153
	dd	191
	dd	19
	align	4
_833:
	dd	3
	dd	0
	dd	0
	align	4
_832:
	dd	_153
	dd	191
	dd	36
	align	4
_834:
	dd	_153
	dd	192
	dd	4
	align	4
_835:
	dd	_153
	dd	193
	dd	4
_862:
	db	"ln",0
	align	4
_861:
	dd	3
	dd	0
	dd	2
	dd	_862
	dd	_107
	dd	-32
	dd	0
	align	4
_845:
	dd	_153
	dd	194
	dd	5
	align	4
_94:
	dd	_bbStringClass
	dd	2147483647
	dd	11
	dw	32,114,101,116,117,114,110,101,100,58,32
	align	4
_93:
	dd	_bbStringClass
	dd	2147483647
	dd	4
	dw	32,111,102,32
	align	4
_92:
	dd	_bbStringClass
	dd	2147483647
	dd	5
	dw	76,105,110,101,32
	align	4
_846:
	dd	_153
	dd	195
	dd	5
	align	4
_856:
	dd	3
	dd	0
	dd	0
	align	4
_848:
	dd	_153
	dd	196
	dd	6
	align	4
_859:
	dd	3
	dd	0
	dd	0
	align	4
_858:
	dd	_153
	dd	198
	dd	6
	align	4
_96:
	dd	_bbStringClass
	dd	2147483647
	dd	1
	dw	32
	align	4
_95:
	dd	_bbStringClass
	dd	2147483647
	dd	15
	dw	76,105,110,101,32,111,118,101,114,102,108,111,119,58,32
	align	4
_860:
	dd	_153
	dd	200
	dd	5
	align	4
_865:
	dd	_153
	dd	204
	dd	2
	align	4
_873:
	dd	_153
	dd	205
	dd	2
	align	4
_874:
	dd	_153
	dd	206
	dd	2
