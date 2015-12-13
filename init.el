;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t)
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-shell 'ansi-term
            shell-default-term-shell "/bin/zsh")
     (chinese :variables
              chinese-enable-youdao-dict t
              chinese-enable-fcitx nil)
     better-defaults
     org
     git
     github
     spell-checking
     syntax-checking
     osx
     ibuffer
     colors
     erc
     ranger
     smex
     version-control
     ;; ------------------------------
     python
     c-c++
     emacs-lisp
     haskell
     html
     ipython-notebook
     javascript
     latex
     markdown
     ruby
     shell-scripts
     ;; ------------------------------
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '()
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages
   '(
     chinese-wbim
     chinese-pyim
     evil-escape
     )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'random
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents bookmarks projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state t
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.5
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'right-then-bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  (setq powerline-default-separator 'bar)
  (setq-default line-spacing 0.1)
  (when (configuration-layer/layer-usedp 'chinese)
    (when (spacemacs/system-is-mac)
      (spacemacs//set-monospaced-font "Menlo" "Kaiti SC" 12 14)))
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
 '(org-agenda-files
   (quote
    ("~/Org/anniversary.org" "~/Org/gtd.org" "~/Org/reading.org" "~/Org/journal.org" "~/Org/records.org")))
 '(org-archive-location "~/Org/archive.org::* From %s")
 '(org-babel-load-languages (quote ((ruby . t) (python . t) (emacs-lisp . t))))
 '(org-bullets-bullet-list (quote ("🐭" "🐮" "🐯" "🐰" "🐲" "🐍" "🐴" "🐑" "🙉" "🐔" "🐶" "🐷")))
 '(org-capture-templates
   (quote
    (("t" "Todo" entry
      (file+headline "~/Org/gtd.org" "Tasks")
      "* TODO %?
 %i
 " :empty-lines-before 2 :empty-lines-after 2)
     ("i" "Idea" entry
      (file+headline "~/Org/notes.org" "Ideas")
      "* %?
 Caught on %T
 %i
" :empty-lines-before 2 :empty-lines-after 2)
     ("m" "Movie" entry
      (file+headline "~/Org/notes.org" "Entertainments")
      "* %?
 Watched on %T
 %i
" :empty-lines-before 2 :empty-lines-after 2)
     ("n" "Note" entry
      (file+headline "~/Org/notes.org" "Notes")
      "* %?
 Taken at %T
 %i
 " :empty-lines-before 2 :empty-lines-after 2)
     ("j" "Journal" entry
      (file+datetree "~/Org/journal.org")
      "** %?
 Logged at %T
 %i
 " :empty-lines-before 0 :empty-lines-after 1))))
 '(org-cycle-level-faces nil)
 '(org-default-notes-file "~/Org/notes.org")
 '(org-directory "~/Org")
 '(org-refile-targets
   (quote
    (("~/Org/someday.org" :maxlevel . 2)
     ("~/Org/gtd.org" :maxlevel . 2))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "FEEDBACK(e!)" "VERIFY(j)" "STARTED(g!)" "|" "DONE(d!)")
     (sequence "NEXT(n)" "SPECIFIED(i!)")
     (sequence "SUBMITTED(s!)" "REVISION(v)" "|" "ACCEPTED(a!)" "PUBLISHED(p!)")
     (sequence "REPORT(r@)" "BUG(b@)" "KNOWN-CAUSE(k@)" "|" "FIXED(f!)")
     (sequence "WAITING(w)" "SOMEDAY(m)" "|" "CANCELED(c@)"))))
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
 '(org-checkbox-statistics-done ((t (:inherit org-done))))
 '(org-checkbox-statistics-todo ((t (:inherit org-todo))))
 '(org-done ((t (:foreground "green yellow" :weight bold))))
 '(org-level-1 ((t (:foreground "yellow" :weight bold :height 1.2))))
 '(org-level-3 ((t (:foreground "#93D0E3"))))
 '(org-level-5 ((t (:foreground "indian red"))))
 '(org-level-6 ((t (:foreground "steel blue"))))
 '(org-level-7 ((t (:inherit outline-7 :foreground "brown"))))
 '(org-scheduled-previously ((t (:foreground "DarkGoldenrod1"))))
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
