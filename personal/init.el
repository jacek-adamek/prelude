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
(global-set-key (kbd "H-P") 'projectile-switch-project)
(global-set-key (kbd "H-h") 'dash-at-point)
(global-set-key (kbd "H-H") 'dash-at-point-with-docset)
(global-set-key (kbd "H-p") 'helm-projectile-find-file)
(global-set-key (kbd "H-i") 'swiper)
(global-set-key (kbd "H-I") 'projectile-ag)
(global-set-key (kbd "H-n") 'neotree-toggle)
(global-set-key (kbd "H-N") 'neotree-projectile-action)
(global-set-key (kbd "H-.") 'projectile-toggle-between-implementation-and-test)
(global-set-key (kbd "H-q") 'delete-other-windows)
(global-set-key (kbd "H-Q") 'delete-window)
(global-set-key (kbd "H-s") 'magit-status)
(global-set-key (kbd "H-b") 'helm-mini)
(global-set-key (kbd "H-B") 'helm-buffers-list)
(global-set-key (kbd "H-o") 'helm-find-files)
(global-set-key (kbd "H-/") 'comment-dwim)
(global-set-key (kbd "H-?") 'comment-line)
(global-set-key (kbd "H-t") 'rspec-verify)
(global-set-key (kbd "H-r") 'rspec-verify-single)
(global-set-key (kbd "H-R") 'rubocop-autocorrect-current-file)
(global-set-key (kbd "H-[") 'indent-rigidly-left-to-tab-stop)
(global-set-key (kbd "H-]") 'indent-rigidly-right-to-tab-stop)
(global-set-key (kbd "H-d") 'isearch-forward-symbol-at-point)
(global-set-key (kbd "H-D") 'isearch-forward)
(global-set-key (kbd "H-SPC") 'helm-M-x)
(global-set-key (kbd "H-a") 'set-mark-command)
(global-set-key (kbd "H-u") 'helm-semantic-or-imenu)
(global-set-key (kbd "H-U") 'helm-imenu-in-all-buffers)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; H-l key map
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar H-l-map (make-keymap) "Keymap for my bindings and functions (H-l)")
(define-key global-map (kbd "H-l") 'H-l-global-prefix)
(fset 'H-l-global-prefix H-l-map)

(define-key H-l-map "f" 'neotree-find)
(define-key H-l-map "r" 'rubocop-check-current-file)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; H-m key map
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defvar H-magit-map (make-keymap) "Custom magit map")
(define-key global-map (kbd "H-m") 'H-magit-global-prefix)
(fset 'H-magit-global-prefix H-magit-map)

(define-key H-magit-map "p" 'magit-pull)
(define-key H-magit-map "P" 'magit-push)
(define-key H-magit-map "b" 'magit-branch)
(define-key H-magit-map "s" 'magit-stash)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(prelude-require-packages '(dash-at-point
                            robe
                            enh-ruby-mode
                            intero
                            lsp-mode
                            lsp-ui
                            neotree
                            rspec-mode
                            dumb-jump
                            rubocop
                            bundler
                            projectile-rails
                            browse-at-remote))

(add-hook 'js2-mode-hook
          (lambda ()
            (setq js2-basic-offset 2)))

(add-hook 'haskell-mode-hook 'intero-mode)

(add-hook 'ruby-mode-hook 'enh-ruby-mode)

(add-hook 'elixir-mode-hook 'alchemist-mode)

(add-hook 'prelude-prog-mode-hook
          (lambda ()
            (guru-mode -1)) t)

(add-hook 'web-mode-hook
          (lambda()
            (setq web-mode-markup-indent-offset 2)))

(setq dumb-jump-selector 'helm)
(dumb-jump-mode)

(projectile-rails-global-mode)
(define-key projectile-rails-mode-map (kbd "H-e") 'projectile-rails-command-map)

(setq neo-window-width 40)
(setq neo-window-fixed-size nil)

(add-to-list 'dash-at-point-mode-alist '(enh-ruby-mode . "ruby,rails,rubygems"))
(add-to-list 'dash-at-point-mode-alist '(elixir-mode . "elixir,erlang"))
