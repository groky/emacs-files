
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)

;; globals
(global-linum-mode t)
(global-auto-revert-mode t)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; cursor
(setq-default cursor-type 'bar)
(set-cursor-color "#ffffff")

;; splash screen
(setq inhibit-splash-screen t)

;; include the packages
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

;; theme
(load-theme 'atom-one-dark t)

;; pry and stuff
(add-hook 'after-init-hook 'inf-ruby-switch-setup)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(package-selected-packages
   (quote
    (haml-mode svg-mode-line-themes php-mode annotate editorconfig less-css-mode yaml-mode magit multi-term warm-night-theme atom-dark-theme ivy rbenv rspec-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; term mode
(defun delete-char-or-kill-terminal-buffer (N &optional killflag)
  (interactive "p\nP")
  (if (string= (buffer-name) "*terminal*")
  (kill-buffer (current-buffer))
(delete-char N killflag)))
(global-set-key (kbd "C-d") 'delete-char-or-kill-terminal-buffer)
