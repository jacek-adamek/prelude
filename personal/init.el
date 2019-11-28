(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (setq mac-command-modifier 'meta) ;;
;; (setq mac-option-modifier 'super) ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq prelude-auto-save nil)

(setq whitespace-line-column 101) ;; limit line length

(global-set-key (kbd "s-<") 'avy-goto-char-in-line)
(global-set-key (kbd "s-:") 'avy-goto-word-1)
(global-set-key (kbd "s-;") 'avy-goto-char)
(global-set-key (kbd "s->") 'avy-goto-line)

(prelude-require-packages '(dash-at-point robe enh-ruby-mode intero))

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

(add-hook 'haskell-mode-hook 'intero-mode)

(add-hook 'ruby-mode-hook 'enh-ruby-mode)

(add-hook 'elixir-mode-hook 'alchemist-mode)
