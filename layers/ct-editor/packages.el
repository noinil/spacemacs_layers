;;; packages.el --- ct-editor Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-editor-packages
      '(browse-kill-ring
        whitespace
        autoinsert
        beacon
        ;; origami
        keyfreq
        evil-visual-mark-mode
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

(defun ct-editor/init-autoinsert ()
  (use-package autoinsert
    :defer t
    :config
    (progn
      (setq auto-insert-directory "~/.spacemacs.d/layers/ct-editor/templates/")
      (setq auto-insert-query nil)
      (define-auto-insert "\.py" "ct-python-template.py"))))

(defun ct-editor/post-init-evil-visual-mark-mode ()
  (with-eval-after-load 'evil-visual-mark-mode
    (progn
      (set-face-attribute 'evil-visual-mark-face nil
                          :foreground "white" :background "cyan" :underline nil)
      (setq evil-visual-mark-exclude-marks '("^" "[" "]")))))

(defun ct-editor/init-beacon ()
  (use-package beacon
    :init
    (beacon-mode -1)
    :config
    (spacemacs|hide-lighter beacon-mode)))

(defun ct-editor/init-keyfreq ()
  (use-package keyfreq
    :init
    (progn
      (keyfreq-mode t)
      (keyfreq-autosave-mode 1))))

;; (defun ct-editor/init-origami ()
;;   (use-package origami
;;     :defer t
;;     :init
;;     (global-origami-mode 1)
;;     ))

;; (defun ct-editor/post-init-origami ()
;;   (with-eval-after-load 'origami
;;     (spacemacs/declare-prefix "oo" "origami")
;;     ;; close
;;     (spacemacs/set-leader-keys "ooc" 'origami-close-node)
;;     (spacemacs/set-leader-keys "oox" 'origami-close-all-nodes)
;;     (spacemacs/set-leader-keys "ooC" 'origami-close-node-recursively)

;;     ;; open
;;     (spacemacs/set-leader-keys "ooo" 'origami-open-node)
;;     (spacemacs/set-leader-keys "ooa" 'origami-open-all-nodes)
;;     (spacemacs/set-leader-keys "ooO" 'origami-open-node-recursively)
;;     (spacemacs/set-leader-keys "oos" 'origami-show-node)
;;     (spacemacs/set-leader-keys "ooS" 'origami-show-only-node)

;;     ;; toggle-cycle
;;     (spacemacs/set-leader-keys "oot" 'origami-toggle-node)
;;     (spacemacs/set-leader-keys "ooT" 'origami-toggle-all-nodes)

;;     ;; navigate
;;     (spacemacs/set-leader-keys "oon" 'origami-next-fold)
;;     (spacemacs/set-leader-keys "oop" 'origami-previous-fold)

;;     (spacemacs|diminish origami-mode " ⏂" " OriG")
;;     ))
