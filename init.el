;;; init.el for spacemacs
;; This file is loaded by Spacemacs at startup.

(defun dotspacemacs/layers ()
  (setq-default

   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers")

   dotspacemacs-configuration-layers
   '((auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior nil
                      auto-completion-enable-help-tooltip t
                      ;; auto-completion-private-snippets-directory "~/.spacemacs.d/snippets/"
                      ;; auto-completion-enable-snippets-in-popup nil
                      :disabled-for erc)
     better-defaults
     semantic
     ;; lsp
     git
     ;; github
     (org :variables
          org-enable-bootstrap-support t
          org-enable-org-journal-support t)
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
     (c-c++ :variables
            c-c++-enable-clang-support t
            c-c++-default-mode-for-headers 'c++-mode)
     rust
     emacs-lisp
     common-lisp
     markdown
     haskell
     javascript
     html
     perl5
     php
     python
     (julia :variables
            lsp-julia-command "julia"
            lsp-julia-default-environment "~/.julia/environments/v1.1"
            julia-mode-enable-lsp t
            julia-mode-enable-ess nil
            julia-max-block-lookback 5000000)
     ruby
     (latex :variables
            latex-build-command "xelatex"
            latex-enable-folding t)
     bibtex
     ;; gtags
     colors
     dash
     erc
     ibuffer
     osx
     ranger
     chrome
     shell-scripts
     smex
     version-control
     major-modes
     yaml
     finance
     rebox
     octave
     csv

     ;; Personal Layers
     ct-editor
     ct-elisp
     ct-cpp
     ct-erc
     ;; ct-helm
     ct-ibuffer
     ct-dired
     ct-osx
     ct-org
     ct-cafemol
     ct-genesis
     ct-chinese
     ;; ct-maxima
     ct-fortran
     )

   dotspacemacs-additional-packages
   '(math-symbols)

   dotspacemacs-frozen-packages '()

   dotspacemacs-excluded-packages
   '(arduino-mode
     chinese-pyim
     chinese-wbim
     elfeed-org
     org-contrib
     leuven-theme
     qml-mode
     scad-mode
     stan-mode)
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-check-for-update nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-folding-method 'origami
   dotspacemacs-verbose-loading t
   dotspacemacs-startup-banner nil
   ;; dotspacemacs-startup-lists '(recents bookmarks projects)
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
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
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text t
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-large-file-size 10
   ;; dotspacemacs-helm-resize nil
   ;; dotspacemacs-helm-no-header nil
   ;; dotspacemacs-helm-position 'bottom
   ;; dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state t
   dotspacemacs-which-key-delay 0.5
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 100
   dotspacemacs-inactive-transparency 80
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-enable-server t
   dotspacemacs-persistent-server t
   dotspacemacs-search-tools '("grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-frame-title-format "%a@%m"
   dotspacemacs-pretty-docs nil
   ))

(defun dotspacemacs/user-init ()
  ;; (setq configuration-layer-elpa-archives '(("melpa" . "melpa.org/packages/")   
  ;; ("org" . "orgmode.org/elpa/") ("gnu" . "elpa.gnu.org/packages/")))
  (setq configuration-layer-elpa-archives '(("melpa" . "melpa.org/packages/")   
                                            ("gnu" . "elpa.gnu.org/packages/")))
  (setq-default
   ;; Miscellaneous
   python-shell-interpreter-args "--simple-prompt"
   exec-path-from-shell-arguments (quote ("-l"))

   ;; Backups
   auto-save-interval 600
   auto-save-timeout 300
   backup-by-copying t
   delete-old-versions t
   kept-new-versions 5
   kept-old-versions 2
   make-backup-files nil

   ;; Evil
   evil-shift-round nil

   ;; Ranger
   ranger-override-dired nil

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
      (font-lock-comment-face :foreground "#61524f")
      (font-lock-warning-face :underline nil)
      (font-lock-constant-face :foreground "#6f8bad")
      (font-lock-doc-face :foreground "#5165b8" :slant italic)
      (font-lock-string-face :foreground "#0083d9" :slant italic)
      (font-lock-function-name-face :foreground "#408a9c")
      (font-lock-variable-name-face :foreground "#5f995f")
      (font-lock-keyword-face :foreground "DeepSkyBlue" :weight bold)
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
      (font-latex-math-face :foreground "LawnGreen")
      (font-latex-string-face :inherit font-lock-string-face)

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
      ;; (helm-prefarg :foreground "PaleGreen")
      ;; (helm-source-header :background "dark cyan")
      (mode-line-buffer-id :foreground "Turquoise")
      (which-key-key-face :foreground "dark cyan")
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
      ;; (helm-prefarg :foreground "PaleGreen")
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

  ;; Auto-completion: company
  (global-company-mode)

  ;; Utility Definitions
  (defun ct-define-key (keymap &rest bindings)
    (declare (indent 1))
    (while bindings
      (define-key keymap (pop bindings) (pop bindings))))

  ;; Variable Definitions
  (setq-default
   ;; Google Translate
   google-translate-default-source-language "en"
   google-translate-default-target-language "zh-CN"

   ;; calendar
   calendar-chinese-all-holidays-flag t
   calendar-chinese-celestial-stem ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"]
   calendar-chinese-terrestrial-branch ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"]
   calendar-chinese-location-name "京都"
   calendar-latitude [35 1 north]
   calendar-longitude [135 46 east]
   calendar-week-start-day 1

   ;; org-mode
   org-journal-dir "~/Org/journal/"
   org-journal-file-format "%Y-%m-%d"
   org-journal-date-prefix "#+TITLE: "
   org-journal-date-format "%A, %B %d %Y"
   org-journal-time-prefix "* "
   org-journal-time-format ""
   org-superstar-headline-bullets-list '("α" "β" "γ" "δ" "ε" "ζ" "η" "θ" "ı" "κ" "λ" "μ" "ν" "ξ" "ο" "π" "ρ" "σ" "τ" "υ" "ϕ" "χ" "ψ" "ω")
   org-superstar-cycle-headline-bullets nil
   org-superstar-special-todo-items nil

   ;; editor-misc
   isearch-allow-scroll t
   line-spacing 0.2
   tab-width 4
   ruler-mode-current-column-char 86
   size-indication-mode t
   smartparens-global-mode t
   ;; paradox-github-token t

   spaceline-window-numbers-unicode t
   spaceline-workspace-numbers-unicode t
   spaceline-hud-p t
   sentence-end-double-space t
   powerline-default-separator nil
   x-underline-at-descent-line nil)

  ;; Yasnippet
  (setq yas-snippet-dirs
        '("~/.spacemacs.d/snippets/"
          ;; yasnippet-snippets-dir
          ))
  (yas-global-mode 1)

  ;; Keybindings
  (ct-define-key evil-normal-state-map
    (kbd "C-+") 'spacemacs/zoom-frm-in
    (kbd "C--") 'spacemacs/zoom-frm-out
    (kbd "C-_") 'spacemacs/zoom-frm-unzoom
    (kbd "C-n") 'evil-next-line-first-non-blank
    (kbd "C-p") 'evil-previous-line-first-non-blank)

  (ct-define-key yas-minor-mode-map
    ;; (kbd "TAB") 'yas-expand
    (kbd "C-S-n") 'yas-next-field
    (kbd "C-S-p") 'yas-prev-field)

  ;; File Format Association
  (dolist (e '(("pdb" . text-mode)
               ("gp" . gnuplot-mode)
               ("fpp" . f90-mode)
               ("C" . c++-mode)
               ("h" . c++-mode)))
    (push (cons (concat "\\." (car e) "\\'") (cdr e)) auto-mode-alist))

  ;; Mode hooks
  (add-hook 'makefile-mode-hook 'whitespace-mode)
  (remove-hook 'prog-mode-hook 'spacemacs//show-trailing-whitespace)
  (add-hook 'prog-mode-hook
            (lambda ()
              (when (> (buffer-size) 100000)
                (turn-off-show-smartparens-mode))))

  ;; Diminish
  (when (eq 'hybrid dotspacemacs-editing-style)
    (diminish 'hybrid-mode))
  )

(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
;; (load custom-file 'no-error 'no-message)
(custom-set-faces
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(erc-input-face ((t (:foreground "green yellow"))))
 '(erc-my-nick-face ((t (:foreground "lime green" :weight ultra-bold))))
 '(erc-notice-face ((t (:foreground "#7F9F7F" :weight semi-light))))
 '(erc-prompt-face ((t (:foreground "yellow1" :weight extra-bold))))
 '(flycheck-warning ((t (:underline (:color "lime green" :style wave)))))
 '(info-title-1 ((t (:inherit default :height 1.0 :weight bold))))
 '(info-title-2 ((t (:inherit default :height 1.0 :weight bold))))
 '(info-title-3 ((t (:inherit default :height 1.0 :weight bold))))
 '(info-title-4 ((t (:inherit default :height 1.0 :weight bold))))
 '(isearch ((t (:foreground "green yellow" :weight bold))))
 '(lazy-highlight ((t (:foreground "orange" :weight bold))))
 '(markdown-header-face ((t (:inherit default :height 1.0 :weight bold))))
 '(markdown-header-face-1 ((t (:inherit default :height 1.0 :weight bold))))
 '(markdown-header-face-2 ((t (:inherit default :height 1.0 :weight bold))))
 '(markdown-header-face-3 ((t (:inherit default :height 1.0 :weight bold))))
 '(markdown-header-face-4 ((t (:inherit default :height 1.0 :weight bold))))
 '(markdown-header-face-5 ((t (:inherit default :height 1.0 :weight bold))))
 '(markdown-header-face-6 ((t (:inherit default :height 1.0 :weight bold))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "magenta"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "cyan"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "purple"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "blue1"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "dark green"))))
 '(rainbow-delimiters-depth-10-face ((t (:foreground "#B4CDCD"))))
 '(ruler-mode-column-number ((t (:inherit ruler-mode-default :foreground "#B4CDCD"))))
 '(ruler-mode-comment-column ((t (:inherit ruler-mode-default :foreground "#CD3700"))))
 '(ruler-mode-default ((t (:inherit default :background "#1D2D1D" :foreground "seagreen" :box (:line-width 1 :color "#ADFF2F" :style released-button)))))
 '(ruler-mode-fill-column ((t (:inherit ruler-mode-default :foreground "#CD3700"))))
 '(ruler-mode-pad ((t (:inherit ruler-mode-default))))
 '(show-paren-mismatch ((t (:foreground "green yellow" :weight bold))))
 '(widget-field ((t (:background "dark gray" :foreground "blue3")))))

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
)
