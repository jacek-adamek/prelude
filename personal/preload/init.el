(defvar machine-default-font
  (if (string-equal (system-name) "MacMini.local")
      "DejaVu Sans Mono-15"
      "DejaVu Sans Mono-14"))

(set-frame-font machine-default-font)

(setq-default line-spacing 1)
;;(set-frame-font "Monaco 13")
(add-to-list 'load-path "~/.emacs.d/themes/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq prelude-theme 'sanityinc-tomorrow-bright)

(blink-cursor-mode nil)
(column-number-mode t)
(global-display-line-numbers-mode t)
(scroll-bar-mode -1)
(size-indication-mode t)
(tool-bar-mode nil)
(setq tab-width 2)
(setq tab-stop-list '(2 4))
