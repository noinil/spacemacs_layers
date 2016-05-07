;;; packages.el --- ct-org Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-org-packages
      '((org :location built-in)
        (org-agenda :location built-in)
        (org-plus-contrib :step pre)
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
      :empty-lines-after 1))))

(defun ct-org/pre-init-org-agenda ()
  (setq-default
   org-agenda-restore-windows-after-quit t
   org-agenda-window-setup 'other-window))

(defun ct-org/pre-init-org-bullets ()
  (setq-default
   org-bullets-bullet-list '("◉" "○" "✸" "◻︎" "❀" "✡")))
