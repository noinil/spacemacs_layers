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
                         monokai
                         spacemacs-light)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Consolas"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.0)
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
   spacemacs-evil-cursors '(("normal" "DarkGoldenrod2" box)
                     ("insert" "chartreuse3" (bar . 2))
                     ("emacs" "SkyBlue2" box)
                     ("hybrid" "SkyBlue2" (bar . 2))
                     ("replace" "chocolate" (hbar . 2))
                     ("evilified" "LightGoldenrod3" box)
                     ("visual" "gray" (hbar . 2))
                     ("motion" "dark cyan" box)
                     ("lisp" "HotPink1" box)
                     ("iedit" "firebrick1" box)
                     ("iedit-insert" "firebrick1" (bar . 2)))

   theming-modifications
   '((spacemacs-dark
      ;; font-lock-faces
      (font-lock-builtin-face :foreground "#b55353" :weight bold)
      (font-lock-comment-delimiter-face :foreground "#62562c")
      (font-lock-comment-face :foreground "#61524f" :slant italic)
      (font-lock-warning-face :underline nil)
      (font-lock-constant-face :foreground "#6f8bad")
      (font-lock-doc-face :foreground "#5165b8" :slant italic)
      (font-lock-string-face :foreground "#0083d9" :slant italic)
      (font-lock-function-name-face :foreground "#408a9c")
      (font-lock-variable-name-face :foreground "#5f995f")
      (font-lock-keyword-face :foreground "#9d72a8" :weight bold)
      (font-lock-negation-char-face :foreground "SlateBlue")
      (font-lock-reference-face :foreground "SlateBlue")
      (font-lock-type-face :foreground "#725da8")

      ;; latex-font-faces
      (font-latex-sectioning-0-face :foreground "SpringGreen")
      (font-latex-sectioning-1-face :foreground "OrangeRed")
      (font-latex-sectioning-2-face :foreground "DarkOrange")
      (font-latex-sectioning-3-face :foreground "Orange")
      (font-latex-sectioning-4-face :foreground "Gold")
      (font-latex-sedate-face :foreground "SteelBlue")
      (font-latex-slide-title-face :foreground "DeepSkyBlue")

      ;; mode-line-faces
      (mode-line :box (:color "dark cyan" :line-width 1.2))
      (powerline-active1 :box (:color "dark cyan" :line-width 1.2) :background "gray20")
      (powerline-active2 :box (:color "dark cyan" :line-width 1.2) :background "#363A3A")
      (mode-line-inactive :box (:color "DarkSlateGray" :line-width 1.2))
      (powerline-inactive1 :box (:color "DarkSlateGray" :line-width 1.2))
      (powerline-inactive2 :box (:color "DarkSlateGray" :line-width 1.2))

      ;; flycheck-faces
      (flycheck-fringe-error :background nil)
      (flycheck-fringe-warning :background nil)
      (flycheck-fringe-info :background nil)

      ;; misc
      (helm-prefarg :foreground "PaleGreen")
      (mode-line-buffer-id :foreground "Turquoise")
      (which-key-key-face :foreground "dark cyan")
      (helm-source-header :background "dark cyan")
      (term :foreground nil :background nil))

     (monokai
      ;; Font locking
      (default :foreground "#b2b2b2")
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
      (helm-prefarg :foreground "PaleGreen")
      (mode-line-buffer-id :foreground "Turquoise")
      (which-key-key-face :foreground "dark cyan")
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

      (mode-line :box (:color "dark cyan" :line-width 1.2))
      (powerline-active1 :box (:color "dark cyan" :line-width 1.2) :background "gray20")
      (powerline-active2 :box (:color "dark cyan" :line-width 1.2) :background "#363A3A")
      (mode-line-inactive :box (:color "DarkSlateGray" :line-width 1.2))
      (powerline-inactive1 :box (:color "DarkSlateGray" :line-width 1.2))
      (powerline-inactive2 :box (:color "DarkSlateGray" :line-width 1.2))

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
      (term :foreground nil :background nil)))))

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
   spaceline-window-numbers-unicode t
   spaceline-workspace-numbers-unicode t
   spaceline-hud-p nil
   sentence-end-double-space t
   powerline-default-separator nil
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
