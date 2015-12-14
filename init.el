;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  (setq-default

   dotspacemacs-distribution 'spacemacs
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers")
   dotspacemacs-delete-orphan-packages t

   dotspacemacs-configuration-layers
   '(
     (auto-completion :variables
                      auto-completion-return-key-behavior nil
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-private-snippets-directory "~/.spacemacs.d/snippets/"
                      auto-completion-enable-snippets-in-popup t
                      :disabled-for erc)
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
     better-defaults
     git
     github
     ;; eyebrowse
     osx
     ibuffer
     colors
     erc
     ranger
     smex
     version-control
     yaml
     ;; --- languages ---
     python
     c-c++
     emacs-lisp
     haskell
     html
     ipython-notebook
     javascript
     latex
     markdown
     org
     ruby
     shell-scripts
     extra-langs
     )

   dotspacemacs-additional-packages
   '(
     helm-flycheck
     nameless
     )

   dotspacemacs-excluded-packages
   '(
     arduino-mode
     qml-mode
     scad-mode
     stan-mode
     elfeed-org
     julia-mode
     chinese-wbim
     chinese-pyim
     )))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-editing-style 'hybrid
   dotspacemacs-verbose-loading t
   dotspacemacs-startup-banner nil
   dotspacemacs-startup-lists '(recents bookmarks projects)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         spacemacs-light
                         solarized-dark
                         leuven
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
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  (setq-default
   ;; Miscellaneous

   ;; Evil
   evil-shift-round nil

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

   ;; Org
   org-tags-column -80
   org-clock-into-drawer "LOGBOOK"
   org-log-into-drawer "LOGBOOK"
   org-startup-align-all-tables t
   org-footnote-auto-adjust t
   org-footnote-auto-label 'confirm
   org-M-RET-may-split-line
   '((headline . nil) (item . nil) (table . nil))
   org-agenda-restore-windows-after-quit t
   org-agenda-window-setup 'other-window
   org-directory "~/Org"
   org-cycle-level-faces nil
   org-agenda-files '("~/Org/anniversary.org" "~/Org/gtd.org" "~/Org/reading.org" "~/Org/journal.org" "~/Org/records.org")
   org-archive-location "~/Org/archive.org::* From %s"
   org-babel-load-languages '((ruby . t) (python . t) (emacs-lisp . t))
   org-bullets-bullet-list '("◉" "○" "✸" "◻︎" "❀" "✡")
   org-default-notes-file "~/Org/notes.org"
   org-catch-invisible-edits 'show-and-error
   org-list-demote-modify-bullet '(("-" . "*") ("*" . "+") ("+" . "-"))
   org-list-allow-alphabetical t
   org-todo-keywords
   '((sequence "TODO(t)" "FEEDBACK(e!)" "VERIFY(j)" "STARTED(g!)" "|" "DONE(d!)")
     (sequence "NEXT(n)" "SPECIFIED(i!)")
     (sequence "SUBMITTED(s!)" "REVISION(v)" "|" "ACCEPTED(a!)" "PUBLISHED(p!)")
     (sequence "REPORT(r@)" "BUG(b@)" "KNOWN-CAUSE(k@)" "|" "FIXED(f!)")
     (sequence "WAITING(w)" "SOMEDAY(m)" "|" "CANCELED(c@)"))
   org-refile-targets
   '(("~/Org/someday.org" :maxlevel . 2)
     ("~/Org/gtd.org" :maxlevel . 2))
   org-capture-templates
   '(("t" "Todo" entry (file+headline "~/Org/gtd.org" "Tasks")
      "* TODO %?\n %i"
      :empty-lines 1)
     ("i" "Idea" entry (file+headline "~/Org/notes.org" "Ideas")
      "* %?\n Caught on %T\n %i "
      :empty-lines 1)
     ("m" "Movie" entry (file+headline "~/Org/notes.org" "Entertainments")
      "* %?\n Watched on %T\n %i"
      :empty-lines 1)
     ("n" "Note" entry (file+headline "~/Org/notes.org" "Notes")
      "* %?\n Taken at %T\n %i"
      :empty-lines 1)
     ("j" "Journal" entry (file+datetree "~/Org/journal.org")
      "** %?\n Logged at %T\n %i\n "
      :empty-lines 1))

   ;; Theme modifications
   theming-modifications
   '((monokai
      ;; Font locking
      (font-lock-comment-face :slant italic)
      (font-lock-string-face :slant italic)
      (font-lock-doc-face :slant italic)
      ;; (font-lock-builtin-face :foreground "#ff9eb8")
      (font-lock-warning-face :underline nil)

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
      (region :background "#998f84")
      (term :foreground nil :background nil)
      ))))

(defun dotspacemacs/user-config ()
  (setq powerline-default-separator 'alternate)

  (when (configuration-layer/layer-usedp 'chinese)
    (when (spacemacs/system-is-mac)
      (spacemacs//set-monospaced-font "Consolas" "Kaiti SC" 13 14)))
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(calendar-chinese-all-holidays-flag t)
 '(calendar-chinese-celestial-stem ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
 '(calendar-chinese-location-name "京都")
 '(calendar-chinese-terrestrial-branch ["子" "丑" "寅" "卯" "辰" "巳" "午" "未" "申" "酉" "戌" "亥"])
 '(calendar-latitude [35 1 north])
 '(calendar-longitude [135 46 east])
 '(calendar-week-start-day 1)
 '(erc-autoaway-message "Bye!")
 '(erc-autojoin-delay 15)
 '(erc-autojoin-timing (quote ident))
 '(erc-fill-column 120)
 '(erc-nick "oinil")
 '(erc-nick-uniquifier "_")
 '(erc-nickserv-passwords (quote ((freenode (("oinil" . "oionillingig"))))))
 '(erc-prompt (lambda nil (concat "$" (buffer-name) " =~~~>")))
 '(erc-prompt-for-nickserv-password nil)
 '(erc-prompt-for-password nil)
 '(exec-path-from-shell-arguments (quote ("-l")))
 '(isearch-allow-scroll t)
 '(line-spacing 0.2)
 '(paradox-github-token t)
 '(ruler-mode-current-column-char 86)
 '(size-indication-mode t)
 '(smartparens-global-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(erc-input-face ((t (:foreground "green yellow"))))
 '(erc-my-nick-face ((t (:foreground "lime green" :weight ultra-bold))))
 '(erc-notice-face ((t (:foreground "#7F9F7F" :weight semi-light))))
 '(erc-prompt-face ((t (:foreground "yellow1" :weight extra-bold))))
 '(flycheck-warning ((t (:underline (:color "lime green" :style wave)))))
 '(font-latex-math-face ((t (:foreground "orange red"))))
 '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "yellow" :weight bold))))
 '(font-latex-string-face ((t (:inherit font-lock-string-face :foreground "lime green"))))
 '(font-lock-builtin-face ((t (:foreground "#81a618" :weight bold))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#78766c"))))
 '(font-lock-comment-face ((t (:foreground "#6e684c"))))
 '(font-lock-constant-face ((t (:foreground "#e1a7a1"))))
 '(font-lock-doc-face ((t (:foreground "#5165b8"))))
 '(font-lock-function-name-face ((t (:foreground "#aadbdd"))))
 '(font-lock-keyword-face ((t (:foreground "#a7c98b" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "#8657a1"))))
 '(font-lock-reference-face ((t (:foreground "#8657a1"))))
 '(font-lock-string-face ((t (:foreground "#1aaeed" :slant italic))))
 '(font-lock-type-face ((t (:foreground "#7aa183"))))
 '(font-lock-variable-name-face ((t (:foreground "#b8bfed"))))
 '(isearch ((t (:foreground "green yellow" :weight bold))))
 '(lazy-highlight ((t (:foreground "orange" :weight bold))))
 '(org-agenda-current-time ((t (:foreground "DeepSkyBlue3"))))
 '(org-checkbox-statistics-done ((t (:inherit org-done))))
 '(org-checkbox-statistics-todo ((t (:inherit org-todo))))
 '(org-done ((t (:foreground "green yellow" :weight bold))))
 '(org-level-1 ((t (:foreground "yellow" :weight bold :height 1.2))))
 '(org-level-3 ((t (:foreground "#93D0E3"))))
 '(org-level-5 ((t (:foreground "indian red"))))
 '(org-level-6 ((t (:foreground "steel blue"))))
 '(org-level-7 ((t (:inherit outline-7 :foreground "brown"))))
 '(org-scheduled-previously ((t (:foreground "DarkGoldenrod1"))))
 '(org-time-grid ((t (:foreground "light slate gray"))))
 '(org-todo ((t (:foreground "#dc752f" :weight bold))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "red"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "green"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "cyan"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "dark khaki"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "magenta"))))
 '(ruler-mode-column-number ((t (:inherit ruler-mode-default :foreground "#B4CDCD"))))
 '(ruler-mode-comment-column ((t (:inherit ruler-mode-default :foreground "#CD3700"))))
 '(ruler-mode-default ((t (:inherit default :background "#1D2D1D" :foreground "seagreen" :box (:line-width 1 :color "#ADFF2F" :style released-button)))))
 '(ruler-mode-fill-column ((t (:inherit ruler-mode-default :foreground "#CD3700"))))
 '(ruler-mode-pad ((t (:inherit ruler-mode-default))))
 '(show-paren-mismatch ((t (:foreground "green yellow" :weight bold))))
 '(widget-field ((t (:background "dark gray" :foreground "blue3")))))
