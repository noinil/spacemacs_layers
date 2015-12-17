;; -*- mode: emacs-lisp -*-
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
              theming-headings-same-size 'all
              theming-headings-bold 'all)
     c-c++
     colors
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
     ct-erc
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
                         spacemacs-light
                         solarized-dark
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

   ;; IRC
   erc-autojoin-channels-alist
   '(("irc.gitter.im" "#syl20bnr/spacemacs" "#syl20bnr/spacemacs-devel")
     ("freenode\\.net" "#emacs" "#emacs-cn" "#spacemacs" "#archlinux-cn" "#cafemol"))

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

   ;; Theme modifications --- from TheBB ---
   theming-modifications
   '((spacemacs-dark
      ;; Font locking
      (font-lock-comment-face :slant italic)
      (font-lock-doc-face :slant italic)
      (font-lock-string-face :slant italic)
      (font-lock-warning-face :underline nil)

      ;; Modeline
      ;; (mode-line :box (:color "#999999" :line-width 1 :style released-button))
      ;; (powerline-active1 :box (:color "#999999" :line-width 1 :style released-button)
      ;;                    :background "#5a5a5a")
      ;; (powerline-active2 :box (:color "#999999" :line-width 1 :style released-button))
      ;; (mode-line-inactive :box (:color "#666666" :line-width 1 :style released-button))
      ;; (powerline-inactive1 :box (:color "#666666" :line-width 1 :style released-button))
      ;; (powerline-inactive2 :box (:color "#666666" :line-width 1 :style released-button))
      (helm-prefarg :foreground "PaleGreen")

      ;; Flycheck
      (flycheck-fringe-error :background nil)
      (flycheck-fringe-warning :background nil)
      (flycheck-fringe-info :background nil)

      ;; Other
      (term :foreground nil :background nil)))))

(defun dotspacemacs/user-config ()
  ;; Utility Definitions
  (defun ct-define-key (keymap &rest bindings)
    (declare (indent 1))
    (while bindings
      (define-key keymap (pop bindings) (pop bindings))))

  ;; Variable Definitions
  (setq-default
   tab-width 4
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

  ;; Evilification
  (with-eval-after-load 'ibuffer
    (evilified-state-evilify-map ibuffer-mode-map
      :mode ibuffer-mode
      :bindings
      "g" 'ibuffer-update))
  (with-eval-after-load 'proced
    (evilified-state-evilify-map proced-mode-map
      :mode proced-mode))

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
