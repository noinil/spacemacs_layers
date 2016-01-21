;;; packages.el --- ct-helm Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(defconst ct-helm-packages
  '(helm-flycheck
    helm-fuzzier))

(defun ct-helm/init-helm-flycheck ()
  (use-package helm-flycheck
    :defer t
    :init
    (spacemacs/set-leader-keys "eh" 'helm-flycheck)))

(defun ct-helm/init-helm-fuzzier ()
  (use-package helm-fuzzier
    :defer t
    :commands helm-fuzzier-mode
    :init
    (with-eval-after-load 'helm
      (helm-fuzzier-mode 1))))
