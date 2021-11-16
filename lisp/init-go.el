;; init-go.el --- Initialize Golang configurations.	-*- lexical-binding: t -*-
;; Author: Duy Le <duyleitbka95@gmail.com>


;; Go - lsp-mode
;; Set up before-save hooks to format buffer and add/delete imports.
(use-package go-mode)
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)


;; Start LSP Mode and YASnippet mode
(add-hook 'go-mode-hook #'lsp-deferred)
(add-hook 'go-mode-hook #'yas-minor-mode)

(provide 'init-go)
