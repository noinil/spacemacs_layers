;;; packages.el --- ct-osx Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-osx-packages '(vkill))

(defun ct-osx/init-vkill ()
  (use-package vkill
    :commands (vkill list-unix-processes)))
