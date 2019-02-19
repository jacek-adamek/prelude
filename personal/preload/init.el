(if (string-equal (system-name) "MacMini.local")
    (set-frame-font "DejaVu Sans Mono-15")
    (set-frame-font "DejaVu Sans Mono-14"))

(setq-default line-spacing 1)
;;(set-frame-font "Monaco 13")
(add-to-list 'load-path "~/.emacs.d/themes/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq prelude-theme 'sanityinc-tomorrow-bright)
