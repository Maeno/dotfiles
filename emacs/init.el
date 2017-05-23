(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ddskk helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; helm
(global-set-key (kbd "C-;") 'helm-for-files)
(eval-after-load 'helm
  '(progn
     (define-key helm-map (kbd "C-h") 'backward-delete-char)
     ))

;; Uses C-h as the backspace key.
(global-set-key "\C-h" 'delete-backward-char)

;; Hides the tool bar, which is on Frame.
(tool-bar-mode 0)

;; Disables the splash screen.
(setq inhibit-splash-screen t)

;; Disables to make a back up file.
(setq make-backup-files nil)
(setq auto-save-default nil)

;; color-theme
(load-theme 'tango-dark)



