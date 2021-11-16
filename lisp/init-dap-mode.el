;; init-dap-mode.el --- Initialize Dap mode configurations.	-*- lexical-binding: t -*-
;; Author: Duy Le <duyleitbka95@gmail.com>


;; dap-mode
(use-package dap-mode
  :custom
  (lsp-enable-dap-auto-configure nil)
  :config
  (dap-ui-mode 1)
  (dap-tooltip-mode 1)
  (require 'dap-go)
  (dap-go-setup)
  (require 'dap-node)
  (dap-node-setup)
)

; (custom-set-faces
;  '(dap-ui-pending-breakpoint-face ((t (:underline "red"))))
;  '(dap-ui-verified-breakpoint-face ((t (:underline "green")))))

(setq dap-print-io t) 

(provide 'init-dap-mode)
