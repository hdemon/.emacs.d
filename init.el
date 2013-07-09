(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/elisp/evil")
(add-to-list 'load-path "~/.emacs.d/conf")

(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (patj paths paths)
      (let ((default-deirectory
              (expand-file-name (concat user-emacs-directory path))))
      (add-to-list 'load-path default-directory)
      (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
        (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "conf" "public_repos")

;; install-elisp
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/elisp/")

;; auto-complete
(require 'auto-complete)
(global-auto-complete-mode t)

(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0))

; (load "evil-conf")

(set-frame-parameter nil 'alpha 85)

; (global-set-key [C-[] 'eval-buffer)
