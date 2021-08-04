;; this is the emacs init.el file, loaded when emacs launches

(require 'package)

;(add-to-list 'package-archives
;	     '("melpa" . "https://melpa.org/packages/") t )
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(unless package-archive-contents
  (package-refresh-contents))

(package-initialize)

;; if not yet installed, install package use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; this is the file used to store things set through M-x customize
(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

;; uses org to tangle and load my readable config file
(use-package org)
(org-babel-load-file "~/.emacs.d/emacs-config.org")

;;enables EXWM
(exwm-enable)
