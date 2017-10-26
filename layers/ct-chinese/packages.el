;;; packages.el --- ct-editor Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-chinese-packages
      '(youdao-dictionary
        cnfonts
        ;; other?
        ))

(defun ct-chinese/post-init-youdao-dictionary ()
  (spacemacs/declare-prefix "oy" "youdao")
  ;; translate-at-point
  (spacemacs/set-leader-keys "oys" 'youdao-dictionary-search-at-point)
  (spacemacs/set-leader-keys "oyS" 'youdao-dictionary-search-at-point+)

  (global-set-key (kbd "<f5>") 'youdao-dictionary-search-at-point+)
  )

(defun ct-chinese/init-cnfonts ()
  (use-package cnfonts
    :init)
  (cnfonts-enable))

;; 中英文对齐设置
(defun ct-chinese/post-init-cnfonts ()
  (cnfonts-set-spacemacs-fallback-fonts)
  (setq cnfonts-profiles
        '("program" "org-mode" "read-book")))
