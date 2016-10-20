;;; config.el --- ct-maxima Layer config File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(add-to-list 'load-path "/usr/local/Cellar/maxima/5.37.2/share/maxima/5.37.2/emacs")
(autoload 'maxima-mode "maxima" "Maxima mode" t)
(autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
(autoload 'maxima "maxima" "Maxima interaction" t)
(autoload 'imath-mode "imath" "Imath mode for math formula input" t)
(setq imaxima-use-maxima-mode-flag t)
(add-to-list 'auto-mode-alist '("\\.ma[cx]" . maxima-mode))
