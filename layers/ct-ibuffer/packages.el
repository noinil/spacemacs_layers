(setq ct-ibuffer-packages '(ibuffer))

(defun ct-ibuffer/post-init-ibuffer ()
  (with-eval-after-load 'ibuffer
    (setq ibuffer-show-empty-filter-groups nil)
    (add-hook 'ibuffer-mode-hook 'ibuffer-auto-mode)

    ;; Human readable Size column instead of original one
    ;; http://www.emacswiki.org/emacs/IbufferMode
    (define-ibuffer-column size-ct
      (:name "Size" :inline t)
      (cond
       ((> (buffer-size) 1048576) (format "%7.1f M" (/ (buffer-size) 1048576.0)))
       ((> (buffer-size) 102400) (format "%7.0f K" (/ (buffer-size) 1024.0)))
       ((> (buffer-size) 1024) (format "%7.1f K" (/ (buffer-size) 1024.0)))
       (t (format "%8d B" (buffer-size)))))

    (define-ibuffer-column sep-ct
      (:name " " :inline t) "☛")

    ;; Modify the default ibuffer-formats
    (setq ibuffer-formats
          '((mark modified read-only " "
                  (name 20 20 :left :elide)
                  " "
                  (size-ct 10 -1 :right)
                  " | "
                  (mode 20 20 :left :elide)
                  " "
                  (sep-ct 1 1 :right)
                  " "
                  filename-and-process)
            (mark " " (name 30 -1) " " filename)))

    ;; change update key-binding to "r", "g" is also good.
    (evilified-state-evilify-map ibuffer-mode-map
      :mode ibuffer-mode
      :bindings
      "r" 'ibuffer-update)))
