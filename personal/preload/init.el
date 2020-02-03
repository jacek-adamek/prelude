(if (string-equal (system-name) "MacMini.local")
    (set-frame-font "DejaVu Sans Mono-15")
    (set-frame-font "DejaVu Sans Mono-14"))

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
(setq tab-width 4)
(setq tab-stop-list '(4 8))
