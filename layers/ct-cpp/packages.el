;;; packages.el --- ct-cpp Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;
;; References:
;; https://github.com/chrisbarrett/spacemacs-layers/blob/master/cb-cpp/packages.el
;;

(defconst ct-cpp-packages
  '(irony
    company-irony
    company-irony-c-headers
    irony-eldoc
    flycheck-irony
    aggressive-indent
    google-c-style
    ggtags
    helm-gtags
    cc-mode))

(defun ct-cpp/init-irony ()
  (use-package irony
    :commands (irony-mode irony-install-server)
    :init
    (add-hook 'c++-mode-hook 'irony-mode)
    (add-hook 'c-mode-hook 'irony-mode)
    (add-hook 'objc-mode-hook 'irony-mode)
    :config
    (progn
      (setq irony-server-install-prefix "~/.irony_server/")
      (setq irony-additional-clang-options '("-std=c++14"))

      (defun ct-cpp/irony-mode-hook ()
        (define-key irony-mode-map [remap completion-at-point]
          'irony-completion-at-point-async)
        (define-key irony-mode-map [remap complete-symbol]
          'irony-completion-at-point-async))

      (add-hook 'irony-mode-hook 'ct-cpp/irony-mode-hook)
      (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))))

(defun ct-cpp/init-company-irony ()
  (use-package company-irony
    :if (configuration-layer/package-usedp 'company)
    :defer t
    :init
    (progn
      (push 'company-irony company-backends-c-mode-common)
      (add-hook 'irony-mode-hook 'company-irony-setup-begin-commands))))

(defun ct-cpp/init-irony-eldoc ()
  (use-package irony-eldoc
    :commands (irony-eldoc)
    :init
    (add-hook 'irony-mode-hook 'irony-eldoc)))

(defun ct-cpp/init-flycheck-irony ()
  (use-package flycheck-irony
    :config
    (with-eval-after-load 'flycheck
      (add-hook 'flycheck-mode-hook 'flycheck-irony-setup))))

(defun ct-cpp/init-company-irony-c-headers ()
  (use-package company-irony-c-headers
    :if (configuration-layer/package-usedp 'company)
    :defer t
    :init (push 'company-irony-c-headers company-backends-c-mode-common)))

(defun ct-cpp/init-google-c-style ()
  (use-package google-c-style
    :commands google-set-c-style
    :init
    (progn
      (setq-default clang-format-style "Google")
      (add-hook 'c-mode-common-hook 'google-set-c-style))))

(defun ct-cpp/post-init-ggtags ()
  (add-hook 'c++-mode-hook 'ggtags-mode)
  (with-eval-after-load 'ggtags
    (set-face-underline 'ggtags-highlight nil)))

(defun ct-cpp/post-init-helm-gtags ()
  (add-hook 'c++-mode-hook 'helm-gtags-mode))

(defun ct-cpp/post-init-aggressive-indent ()
  (with-eval-after-load 'aggressive-indent
    (add-to-list 'aggressive-indent-excluded-modes 'c++-mode)))

(defun ct-cpp/post-init-cc-mode ()
  ;; Font-locking
  (font-lock-add-keywords
   'c++-mode
   `((";" 0 font-lock-comment-face t)
     ("\\_<constexpr\\_>" 0 font-lock-keyword-face t)
     ("\\_<noexcept\\_>" 0 font-lock-keyword-face t))))

