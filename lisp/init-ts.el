;; init-go.el --- Initialize typescirpt configurations.	-*- lexical-binding: t -*-
;; Author: Duy Le <duyleitbka95@gmail.com>


;; typescript - lsp-mode

(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))


(provide 'init-ts)
