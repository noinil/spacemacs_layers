;;; packages.el --- ct-maxima Layer packages file for spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

;;; code:
(defconst ct-maxima-packages
  '(
    ;; A local package
    (imaxima :location local)
    ))

(defun ct-maxima/init-imaxima ()
  (use-package imaxima
	       :init
	       (progn
    (autoload 'maxima-mode "maxima" "Maxima mode" t)
    (autoload 'maxima "maxima" "Maxima interaction" t)
    (autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
    (autoload 'imath-mode "imath" "Imath mode for math formula input" t)
    (add-to-list 'auto-mode-alist '("\\.ma[cx]" . maxima-mode)))
    ))


