;;; packages.el --- ct-erc Layer packages File for Spacemacs
;;
;; Author: Eivind Fonn
;; URL: https://github.com/TheBB/spacemacs-layers
;; Modified by C. Tan
;;

(setq ct-erc-packages
    '(erc
      persp-mode
      ))

(defun ct-erc/pre-init-erc ()
  (setq-default
   erc-autojoin-channels-alist
   '(("irc.gitter.im" "#syl20bnr/spacemacs" "#syl20bnr/spacemacs-devel")
     ("freenode\\.net" "#emacs" "#emacs-cn" "#spacemacs" "#archlinux-cn" "#cafemol"))))

(defun ct-erc/post-init-erc ()
  (spacemacs/set-leader-keys
    "aiq" 'erc-quit-server)

  (setq-default
   erc-timestamp-format-left "\n%A %B %e, %Y\n\n"
   erc-timestamp-format-right "%H:%M"
   erc-nick-uniquifier "_"
   erc-fill-column 120
   erc-timestamp-right-column 120
   erc-prompt-for-nickserv-password nil
   erc-image-inline-rescale 600
   erc-hide-list '("JOIN" "PART" "QUIT" "NICK")
   ;; the following line is moved to line 56, after erc loading...
   ;; erc-prompt (lambda () (concat "$ " (buffer-name) " =~~~>"))
   erc-autoaway-message "Bye!"
   erc-foolish-content
   '("\\[Github\\].* starred"
     "\\[Github\\].* forked"
     "\\[Github\\].* synchronize a Pull Request"
     "\\[Github\\].* labeled an issue in"
     "\\[Github\\].* labeled a Pull Request"
     "\\[Github\\].* unlabeled an issue in"))

  (add-hook 'erc-mode-hook
            (lambda () (setq-local global-hl-line-mode nil)))

  (add-hook 'erc-insert-pre-hook 'ct/erc-foolish-filter)

  (evil-set-initial-state 'erc-mode 'normal)

  (with-eval-after-load 'erc
    (setq erc-insert-modify-hook
          '(erc-controls-highlight
            erc-button-add-buttons
            ct/erc-github-filter
            erc-fill
            erc-match-message
            erc-add-timestamp
            erc-hl-nicks))
    (dolist (module '(track youtube))
      (setq erc-modules (remove module erc-modules)))
    (setq-default erc-prompt (lambda () (concat "$ " (buffer-name) " =~~~>")))
    (erc-track-mode -1)))

(defun ct-erc/post-init-persp-mode ()
  (add-hook 'erc-mode-hook 'ct/add-buffer-to-erc-persp))
