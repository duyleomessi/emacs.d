;; init-desktop.el --- Initialize desktop configurations.	-*- lexical-binding: t -*-
;; Author: Duy Le <duyleitbka95@gmail.com>


(use-package 'desktop
  :config (desktop-mode 1)
  (add-to-list 'desktop-globals-to-save 'dap-debug-template-configurations)
)

(provide 'init-desktop)
