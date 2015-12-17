;;; packages.el --- ct-editor Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-editor-packages
      '(browse-kill-ring
        ))

(defun ct-editor/init-browse-kill-ring ()
  (use-package browse-kill-ring
    :commands browse-kill-ring
    :init
    (progn
      (global-set-key (kbd "s-y") 'browse-kill-ring)
      (setq browse-kill-ring-highlight-current-entry t)
      (setq browse-kill-ring-show-preview t))
    :config
    (browse-kill-ring-default-keybindings)))
