(setq ct-ibuffer-packages '(ibuffer))

(defun ct-ibuffer/post-init-ibuffer ()
  (with-eval-after-load 'ibuffer
    (add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)
    (evilified-state-evilify-map ibuffer-mode-map
      :mode ibuffer-mode
      :bindings
      "g" 'ibuffer-update))
  (setq ibuffer-show-empty-filter-groups nil))
