;;; packages.el --- ct-editor Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-chinese-packages
      '(youdao-dictionary
        ;; other?
        ))

(defun ct-chinese/post-init-youdao-dictionary ()
  (spacemacs/declare-prefix "oy" "youdao")
  ;; translate-at-point
  (spacemacs/set-leader-keys "oys" 'youdao-dictionary-search-at-point)
  (spacemacs/set-leader-keys "oyS" 'youdao-dictionary-search-at-point+)

  (global-set-key (kbd "<f5>") 'youdao-dictionary-search-at-point+)
  )
