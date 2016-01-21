;;; packages.el --- ct-elisp Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(defconst ct-elisp-packages
  '(nameless))

(defun ct-elisp/init-nameless ()
  (use-package nameless
    :defer t
    :init
    (progn
      (add-hook 'emacs-lisp-mode-hook 'nameless-mode-from-hook)
      (spacemacs|add-toggle nameless
        :status nameless-mode
        :on (nameless-mode)
        :off (nameless-mode -1)
        :evil-leader-for-mode (emacs-lisp-mode . "o:")))))

(defun ct-elisp/pre-init-nameless ()
  (setq-default
   nameless-global-aliases
   '(("sm" . "spacemacs")
     ("dsm" . "dotspacemacs")
     ("cfl" . "configuration-layer"))
   nameless-discover-current-name nil
   nameless-prefix ""
   nameless-separator nil))
