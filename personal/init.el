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
(global-set-key (kbd "<s-right>") 'move-end-of-line)
(global-set-key (kbd "<s-left>") 'crux-move-beginning-of-line)
(global-set-key (kbd "<s-up>") 'beginning-of-buffer)
(global-set-key (kbd "<s-down>") 'end-of-buffer)
(global-set-key (kbd "<M-s-down>") 'dumb-jump-go)
(global-set-key (kbd "<M-s-up>") 'dumb-jump-back)
(global-set-key (kbd "<M-s-right>") 'next-buffer)
(global-set-key (kbd "<M-s-left>") 'previous-buffer)
(global-set-key (kbd "H-P") 'helm-M-x)
(global-set-key (kbd "H-h") 'dash-at-point)
(global-set-key (kbd "H-H") 'dash-at-point-with-docset)
(global-set-key (kbd "H-p") 'helm-projectile-find-file)
(global-set-key (kbd "C-H-p") 'helm-projectile-switch-project)
(global-set-key (kbd "s-f") 'swiper)
(global-set-key (kbd "s-F") 'projectile-ag)
(global-set-key (kbd "H-n") 'neotree-toggle)
(global-set-key (kbd "H-N") 'neotree-projectile-action)
(global-set-key (kbd "H-.") 'projectile-toggle-between-implementation-and-test)
(global-set-key (kbd "H-q") 'delete-other-windows)
(global-set-key (kbd "H-s") 'magit-status)
(global-set-key (kbd "H-b") 'helm-mini)
(global-set-key (kbd "H-B") 'helm-buffers-list)
(global-set-key (kbd "H-o") 'helm-find-files)

(prelude-require-packages '(dash-at-point
                            robe
                            enh-ruby-mode
                            intero
                            lsp-mode
                            lsp-ui
                            neotree
                            rspec-mode
                            dumb-jump))

(add-hook 'js2-mode-hook
          (lambda ()
            (setq js2-basic-offset 2)))

(add-hook 'haskell-mode-hook 'intero-mode)

(add-hook 'ruby-mode-hook 'enh-ruby-mode)

(add-hook 'elixir-mode-hook 'alchemist-mode)

(add-hook 'prelude-prog-mode-hook
          (lambda ()
            (guru-mode -1)) t)

(add-hook 'rspec-mode-hook
          (lambda ()
            (local-set-key (kbd "H-T") 'rspec-verify)
            (local-set-key (kbd "H-R") 'rspec-verify-single)
            (local-set-key (kbd "H-M") 'rspec-verify-method)))

(setq dumb-jump-selector 'helm)
(dumb-jump-mode)

(setq neo-window-width 40)
(setq neo-window-fixed-size nil)
