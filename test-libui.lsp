

(load (string (env "HOME") "/libui/libui.lsp"))


(define (on-closing id data) 
	;(ui:quit)
		1)

(define (on-click id data) 
	(ui:quit)
		1)

(define (test)
 	(ui:init)
	(ui:button 'b1 "ok" )
  (ui:button 'b2 "cancel")
	(ui:button-clicked 'on-closing b1 b2) 
	(ui:box 'hbox 0 1)
	(ui:box-append hbox 0 b1 b2)
	(ui:window 'window "testje" 640 400 0 )
	(ui:window-on-close window 'on-closing)
	;(ui:group 'group "groepje")
	(ui:window-child window hbox)
	(ui:show window)
	(ui:main)
	(ui:uninit)
)
(test)
