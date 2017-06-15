;;; packages.el --- ct-org Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-org-packages
      '((org :location built-in)
        (org-agenda :location built-in)
        ;; (org-plus-contrib :step pre)
        org-bullets))

(defun ct-org/pre-init-org ()
  (setq-default
   org-tags-column -80
   org-clock-into-drawer "LOGBOOK"
   org-log-into-drawer "LOGBOOK"
   org-startup-align-all-tables t
   org-footnote-auto-adjust t
   org-footnote-auto-label 'confirm
   org-M-RET-may-split-line
   '((headline . nil) (item . nil) (table . nil))
   org-directory "~/Org"
   org-cycle-level-faces nil
   org-agenda-files '("~/Org/anniversary.org"
                      "~/Org/gtd.org"
                      "~/Org/MOOC.org"
                      "~/Org/notes.org"
                      "~/Org/paper.org"
                      "~/Org/projects.org"
                      "~/Org/reading.org"
                      "~/Org/journal.org"
                      "~/Org/finance.org"
                      "~/Org/records.org")
   org-archive-location "~/Org/archive.org::* From %s"
   org-babel-load-languages '((ditaa . t)
                              (python . t)
                              (dot . t)
                              (latex . t)
                              (ledger . t)
                              (sh . t)
                              (C . t)
                              (js . t)
                              (lisp . t)
                              (emacs-lisp . t))
   org-default-notes-file "~/Org/notes.org"
   org-catch-invisible-edits 'show-and-error
   org-list-demote-modify-bullet '(("-" . "*") ("*" . "+") ("+" . "-"))
   org-list-allow-alphabetical t
   org-image-actual-width 1000
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
      "* TODO %?\n %i\n"
      :empty-lines-after 1)
     ("i" "Idea" entry (file+headline "~/Org/notes.org" "Ideas")
      "* %?\n Caught on %T\n %i \n"
      :empty-lines-after 1)
     ("m" "Movie" entry (file+headline "~/Org/notes.org" "Entertainments")
      "* %?\n Watched on %T\n %i\n"
      :empty-lines-after 1)
     ("c" "Music" entry (file+headline "~/Org/notes.org" "Entertainments")
      "* %?\n Listened on %T\n %i\n"
      :empty-lines-after 1)
     ("n" "Note" entry (file+headline "~/Org/notes.org" "Notes")
      "* %?\n Taken at %T\n %i\n"
      :empty-lines-after 1)
     ("j" "Journal" entry (file+datetree "~/Org/journal.org")
      "** %?\n Logged at %T\n %i\n"
      :empty-lines-after 1)))
  (custom-set-faces
   '(org-document-title ((t (:inherit default :height 1.0 :weight bold))))
   '(org-todo ((t (:foreground "Palevioletred2" :background nil :weight bold))))
   '(org-done ((t (:foreground "green yellow" :background nil :weight bold))))
   '(org-level-1 ((t (:inherit outline-1 :height 1.0 :foreground  "#3399CC" :weight bold))))
   '(org-level-2 ((t (:inherit outline-2 :height 1.0 :foreground  "#2299BB" :weight bold))))
   '(org-level-3 ((t (:inherit outline-3 :height 1.0 :foreground  "#1199AA"))))
   '(org-level-4 ((t (:inherit outline-3 :height 1.0 :foreground  "#009999"))))
   '(org-level-5 ((t (:inherit outline-3 :height 1.0 :foreground  "#009999"))))
   '(org-level-6 ((t (:inherit outline-3 :height 1.0 :foreground  "#008888"))))
   '(org-level-7 ((t (:inherit outline-3 :height 1.0 :foreground  "#007777"))))
   '(org-level-8 ((t (:inherit outline-3 :height 1.0 :foreground  "#006666"))))
   '(org-scheduled-today ((t (:foreground "Yellow" :height 1.0))))
   '(org-scheduled-previously ((t (:foreground "DarkGoldenrod1"))))
   '(org-checkbox-statistics-done ((t (:inherit org-done))))
   '(org-checkbox-statistics-todo ((t (:inherit org-todo))))
   '(org-agenda-date ((t (:foreground "DimGray"))))
   '(org-agenda-date-today ((t (:foreground "DarkGray"))))
   '(org-agenda-calendar-event ((t (:foreground "DeepSkyBlue"))))
   '(org-agenda-current-time ((t (:foreground "DeepSkyBlue3"))) t)
   '(org-agenda-done ((t (:foreground "SeaGreen" :height 1.0))))
   '(org-time-grid ((t (:foreground "light slate gray"))))))

(defun ct-org/pre-init-org-agenda ()
  (setq-default
   org-agenda-restore-windows-after-quit t
   org-agenda-window-setup 'other-window))

(defun ct-org/pre-init-org-bullets ()
  (setq-default
   org-bullets-bullet-list '("◉" "○" "✸" "◻︎" "❀" "✡")))
