;; init-dap-mode.el --- Initialize Dap mode configurations.	-*- lexical-binding: t -*-
;; Author: Duy Le <duyleitbka95@gmail.com>


;; dap-mode
(use-package dap-mode
  :custom
  (lsp-enable-dap-auto-configure nil)
  :config
  (dap-ui-mode 1)
  (dap-ui-many-windows-mode 1)
  (dap-tooltip-mode 1)
  (require 'dap-go)
  ; (dap-go-setup 1)
  (require 'dap-node)
  ; (dap-node-setup 1)
)

; (custom-set-faces
;  '(dap-ui-pending-breakpoint-face ((t (:underline "red"))))
;  '(dap-ui-verified-breakpoint-face ((t (:underline "green")))))

(setq dap-print-io t) 

;; Bind `C-c l d` to `dap-hydra` for easy access
(general-define-key
  :keymaps 'lsp-mode-map
  :prefix lsp-keymap-prefix
  "d" '(dap-hydra t :wk "debugger"))

(provide 'init-dap-mode)
