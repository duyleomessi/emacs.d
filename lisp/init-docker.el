;; init-docker.el --- Initialize Docker configurations.	-*- lexical-binding: t -*-
;; Author: Duy Le <duyleitbka95@gmail.com>


;; Docker
(use-package docker
  :ensure t
  :bind ("C-c d" . docker))

(provide 'init-docker)
