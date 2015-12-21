;;; init.el for spacemacs
;; This file is loaded by Spacemacs at startup.

(defun dotspacemacs/layers ()
  (setq-default

   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers")
   dotspacemacs-delete-orphan-packages t

   dotspacemacs-configuration-layers
   '((auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior nil
                      auto-completion-private-snippets-directory "~/.spacemacs.d/snippets/"
                      auto-completion-enable-snippets-in-popup nil
                      :disabled-for erc)
     better-defaults
     emacs-lisp
     git
     github
     markdown
     org
     (shell :variables
           shell-default-term-shell "/bin/zsh"
           shell-default-shell 'eshell)
     (chinese :variables
              chinese-enable-youdao-dict t
              chinese-enable-fcitx nil)
     (spell-checking :variables
                     spell-checking-enable-by-default nil)
     (syntax-checking :variables
                      syntax-checking-enable-by-default nil)
     (theming :variables
              theming-headings-inherit-from-default 'all
              theming-headings-same-size 'all
              theming-headings-bold 'all)
     c-c++
     colors
     dash
     erc
     haskell
     html
     ibuffer
     javascript
     latex
     osx
     python
     ipython-notebook
     ranger
     ruby
     shell-scripts
     smex
     version-control
     extra-langs
     yaml

     ;; Personal Layers
     ct-editor
     ct-erc
     ct-ibuffer
     ct-osx
     ct-org
     )

   dotspacemacs-additional-packages
   '(helm-flycheck
     helm-fuzzier
     nameless)

   dotspacemacs-excluded-packages
   '(arduino-mode
     chinese-pyim
     chinese-wbim
     elfeed-org
     julia-mode
     leuven-theme
     qml-mode
     scad-mode
     stan-mode)))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-editing-style 'hybrid
   dotspacemacs-verbose-loading t
   dotspacemacs-startup-banner nil
   dotspacemacs-startup-lists '(recents bookmarks projects)
   dotspacemacs-themes '(spacemacs-dark
                         solarized-dark
                         monokai
                         spacemacs-light
                         zenburn)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Consolas"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.15)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-command-key ":"
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-use-ido nil
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-enable-paste-micro-state t
   dotspacemacs-which-key-delay 0.5
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-mode-line-unicode-symbols nil
   dotspacemacs-smooth-scrolling t
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server t
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil))

(defun dotspacemacs/user-init ()
  (setq-default
   ;; Miscellaneous

   ;; Backups
   auto-save-inteval 600
   auto-save-timeout 300
   backup-by-copying t
   delete-old-versions t
   kept-new-versions 5
   kept-old-versions 2
   make-backup-files nil

   ;; Evil
   evil-shift-round nil

   ;; Google Translate
   google-translate-default-source-language "en"
   google-translate-default-target-language "zh-CN"

   ;; Smartparens
   sp-highlight-pair-overlay nil
   sp-highlight-wrap-overlay nil
   sp-highlight-wrap-tag-overlay nil

   ;; Ranger
   ranger-override-dired t

   ;; LaTeX
   ;; font-latex-fontify-script nil
   ;; TeX-newline-function 'reindent-then-newline-and-indent

   ;; Emacs Lisp
   nameless-global-aliases
   '(("sm" . "spacemacs")
     ("dsm" . "dotspacemacs")
     ("cfl" . "configuration-layer"))
   nameless-discover-current-name nil
   nameless-prefix ""
   nameless-separator nil

   ;; Theme modifications
   theming-modifications
   '((spacemacs-dark
      (font-lock-builtin-face :foreground "#81a618")
      (font-lock-constant-face :foreground "#e1a7a1")
      (font-lock-comment-face :foreground "#6e684c" :slant italic)
      (font-lock-comment-delimiter-face :foreground "#78766c")
      (font-lock-doc-face :foreground "#5165b8" :slant italic)
      (font-lock-function-name-face :foreground "#aadbdd")
      (font-lock-keyword-face :foreground "#a7c98b" :weight bold)
      (font-lock-string-face :foreground "#1aaeed" :slant italic)
      (font-lock-type-face :foreground "#7aa183")
      (font-lock-warning-face :underline nil)
      (font-lock-variable-name-face :foreground "#b8bfed")
      (helm-prefarg :foreground "PaleGreen")

      (flycheck-fringe-error :background nil)
      (flycheck-fringe-warning :background nil)
      (flycheck-fringe-info :background nil)

      (region :background "#998f84")
      (term :foreground nil :background nil))

     (monokai
      ;; Font locking
      (font-lock-builtin-face :foreground "#ff9eb8")
      (font-lock-comment-face :slant italic)
      (font-lock-doc-face :slant italic)
      (font-lock-keyword-face :weight bold)
      (font-lock-string-face :slant italic)
      (font-lock-warning-face :underline nil)
      (web-mode-html-attr-value-face
       :inherit font-lock-string-face :foreground nil)
      (web-mode-html-attr-name-face
       :inherit font-lock-variable-name-face :foreground nil)
      (web-mode-html-tag-face
       :inherit font-lock-builtin-face :foreground nil :weight bold)
      (web-mode-html-tag-bracket-face
       :inherit web-mode-html-tag-face :foreground nil)
      (web-mode-comment-face
       :inherit font-lock-comment-face :foreground nil)

      ;; Modeline
      (mode-line :box (:color "#999999" :line-width 1 :style released-button))
      (powerline-active1 :box (:color "#999999" :line-width 1 :style released-button)
                         :background "#5a5a5a")
      (powerline-active2 :box (:color "#999999" :line-width 1 :style released-button))
      (mode-line-inactive :box (:color "#666666" :line-width 1 :style released-button))
      (powerline-inactive1 :box (:color "#666666" :line-width 1 :style released-button))
      (powerline-inactive2 :box (:color "#666666" :line-width 1 :style released-button))
      (helm-prefarg :foreground "PaleGreen")

      ;; Flycheck
      (flycheck-fringe-error :background nil)
      (flycheck-fringe-warning :background nil)
      (flycheck-fringe-info :background nil)

      ;; Other
      (company-tooltip-annotation
       :foreground "#ff9eb8" :background "#49483e")
      (erc-timestamp-face
       :inherit font-lock-comment-face :foreground nil)
      (evil-search-highlight-persist-highlight-face
       :background "#fc5fef" :foreground "#000000")
      (region :background "#998f84")
      (term :foreground nil :background nil))

     (solarized-dark
      (font-lock-builtin-face :foreground "#ff9eb8")
      (font-lock-comment-face :slant italic)
      (font-lock-doc-face :slant italic)
      (font-lock-keyword-face :weight bold)
      (font-lock-string-face :slant italic)
      (font-lock-warning-face :underline nil)
      (helm-prefarg :foreground "PaleGreen")

      (flycheck-fringe-error :background nil)
      (flycheck-fringe-warning :background nil)
      (flycheck-fringe-info :background nil)

      (region :background "#998f84")
      (term :foreground nil :background nil))

     (zenburn
      (helm-prefarg :foreground "PaleGreen")
      (font-lock-builtin-face :foreground "#81a618" :weight bold)
      (font-lock-comment-delimiter-face :foreground "#78766c")
      (font-lock-comment-face :foreground "#6e684c" :slant italic)
      (font-lock-warning-face :underline nil)
      (font-lock-constant-face :foreground "#e1a7a1")
      (font-lock-doc-face :foreground "#5165b8" :slant italic)
      (font-lock-function-name-face :foreground "#aadbdd")
      (font-lock-keyword-face :foreground "#a7c98b" :weight bold)
      (font-lock-negation-char-face :foreground "#8657a1")
      (font-lock-reference-face :foreground "#8657a1")
      (font-lock-string-face :foreground "#1aaeed" :slant italic)
      (font-lock-type-face :foreground "#7aa183")
      (font-lock-variable-name-face :foreground "#b8bfed")

      (flycheck-fringe-error :background nil)
      (flycheck-fringe-warning :background nil)
      (flycheck-fringe-info :background nil)
      (region :background "#998f84")))))

(defun dotspacemacs/user-config ()
  ;; Misc
  (add-hook 'after-save-hook
            'executable-make-buffer-file-executable-if-script-p)

  ;; Utility Definitions
  (defun ct-define-key (keymap &rest bindings)
    (declare (indent 1))
    (while bindings
      (define-key keymap (pop bindings) (pop bindings))))

  ;; Variable Definitions
  (setq-default
   tab-width 4
   sentence-end-double-space t
   powerline-default-separator 'alternate
   x-underline-at-descent-line nil)

  ;; Chinese font settings
  (when (configuration-layer/layer-usedp 'chinese)
    (when (spacemacs/system-is-mac)
      (spacemacs//set-monospaced-font "Consolas" "Kaiti SC" 13 14)))

  ;; Keybindings
  (ct-define-key evil-normal-state-map
    "+" 'spacemacs/zoom-frm-in
    "-" 'spacemacs/zoom-frm-out
    "_" 'spacemacs/zoom-frm-unzoom
    (kbd "C-n") 'evil-next-line-first-non-blank
    (kbd "C-p") 'evil-previous-line-first-non-blank)

  (ct-define-key yas-minor-mode-map
    (kbd "TAB") 'yas-expand)

  ;; File Format Association
  (dolist (e '(("pdb" . text-mode)
               ("gp" . gnuplot-mode)
               ("C" . c++-mode)
               ("h" . c++-mode)))
    (push (cons (concat "\\." (car e) "\\'") (cdr e)) auto-mode-alist))

  ;; Mode hooks
  (add-hook 'text-mode-hook 'auto-fill-mode)
  (add-hook 'makefile-mode-hook 'whitespace-mode)
  (remove-hook 'prog-mode-hook 'spacemacs//show-trailing-whitespace)

  ;; Diminish
  (when (eq 'hybrid dotspacemacs-editing-style)
    (diminish 'hybrid-mode))

 ;; Additional packages (from TheBB)
  (use-package helm-flycheck
    :defer t
    :init
    (spacemacs/set-leader-keys "eh" 'helm-flycheck))
  (use-package helm-fuzzier
    :defer t
    :commands helm-fuzzier-mode
    :init
    (with-eval-after-load 'helm
      (helm-fuzzier-mode 1)))
  (use-package nameless
    :defer t
    :init
    (progn
      (add-hook 'emacs-lisp-mode-hook 'nameless-mode-from-hook)
      (spacemacs|add-toggle nameless
        :status nameless-mode
        :on (nameless-mode)
        :off (nameless-mode -1)
        :evil-leader-for-mode (emacs-lisp-mode . "o:")))))

(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
(load custom-file 'no-error 'no-message)
