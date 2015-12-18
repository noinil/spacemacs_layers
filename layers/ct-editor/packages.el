;;; packages.el --- ct-editor Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-editor-packages
      '(browse-kill-ring
        whitespace
        autoinsert
        ))

(defun ct-editor/init-browse-kill-ring ()
  (use-package browse-kill-ring
    :commands browse-kill-ring
    :init
    (progn
      (setq browse-kill-ring-highlight-current-entry t)
      (setq browse-kill-ring-show-preview t))
    :config
    (browse-kill-ring-default-keybindings)))

(defun ct-editor/post-init-whitespace ()
  (progn
    (setq whitespace-line-column fill-column) ;; limit line length
    (setq whitespace-style '(face tabs empty trailing lines-tail))))

;; (defun ct-editor/init-autoinsert ()
;;   (use-package autoinsert
;;     :defer t
;;     :config
;;     (progn
;;       (setq auto-insert-directory "~/.spacemacs.d/templates/")
;;       (setq auto-insert-query nil)
;;       (define-auto-insert "\.py" "ct-python-template.py"))))

(defun ct-editor/post-init-autoinsert ()
  (progn
    (setq auto-insert-directory "~/.spacemacs.d/templates/")
    (setq auto-insert-query nil)
    (define-auto-insert "\.py" "ct-python-template.py")))
