;;; packages.el --- ct-org Layer packages File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(setq ct-org-packages
      '((org :location built-in)
        (org-agenda :location built-in)
        ;; org-bullets
        ))

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
   org-agenda-files '("~/Org/life.org"
                      "~/Org/work.org"
                      "~/Org/wiki.org"
                      "~/Org/notes/work/02_paper/papers.org"
                      "~/Org/notes/work/04_meeting/meetings.org"
                      "~/Org/notes/work/05_projects/projects.org"
                      "~/Org/notes/work/06_discussions/discussions.org"
                      "~/Org/notes/wiki/00_reading/books.org"
                      "~/Org/notes/wiki/00_reading/literature.org"
                      "~/Org/notes/wiki/01_courses/courses.org"
                      )
   org-archive-location "~/Org/archive.org::* From %s"
   org-babel-load-languages '((ditaa . t)
                              (python . t)
                              (dot . t)
                              (latex . t)
                              (shell . t)
                              (C . t)
                              (js . t)
                              (lisp . t)
                              (emacs-lisp . t))
   org-default-notes-file "~/Org/misc.org"
   org-catch-invisible-edits 'show-and-error
   ;; org-list-demote-modify-bullet '(("-" . "*") ("*" . "+") ("+" . "-"))
   org-list-allow-alphabetical t
   org-image-actual-width nil
   org-todo-keywords
   '((sequence "TODO(t)" "FEEDBACK(e!)" "VERIFY(j)" "STARTED(g!)" "|" "DONE(d!)")
     (sequence "NEXT(n)" "SPECIFIED(i!)")
     (sequence "SUBMITTED(s!)" "REVISION(v)" "|" "ACCEPTED(a!)" "PUBLISHED(p!)")
     (sequence "REPORT(r@)" "BUG(b@)" "KNOWN-CAUSE(k@)" "|" "FIXED(f!)")
     (sequence "WAITING(w)" "SOMEDAY(m)" "|" "CANCELED(c@)"))
   ;; org-refile-targets
   ;; '(("~/Org/someday.org" :maxlevel . 2)
   ;; ("~/Org/gtd.org" :maxlevel . 2))
   org-format-latex-options
      '(:foreground default :background default :scale 1.4 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		                     ("begin" "$1" "$" "$$" "\\(" "\\["))
   org-capture-templates
   '(("t" "Todo" entry (file+headline "~/Org/notes/misc/gtd.org" "Tasks")
      "* TODO %?\n %i\n"
      :empty-lines-after 1)
     ("i" "Idea" entry (file+headline "~/Org/notes/misc/ideas.org" "Ideas")
      "* %?\n Caught on %T\n %i \n"
      :empty-lines-after 1)
     ("n" "Note" entry (file+headline "~/Org/notes/misc/notes.org" "Notes")
      "* %?\n Taken at %T\n %i\n"
      :empty-lines-after 1)
     )))

(defun ct-org/post-init-org ()
  (custom-set-faces
   '(org-document-title ((t (:inherit default :height 1.0 :weight bold))))
   '(org-todo ((t (:foreground "Palevioletred2" :background nil :weight bold))))
   '(org-done ((t (:foreground "green yellow" :background nil :weight bold))))
   '(org-level-8 ((t (:inherit default :height 1.0 :foreground "#98C1D9"))))
   '(org-level-7 ((t (:inherit org-level-8 :height 1.0 :foreground "#577590"))))
   '(org-level-6 ((t (:inherit org-level-8 :height 1.0 :foreground "#43AA8B"))))
   '(org-level-5 ((t (:inherit org-level-8 :height 1.0 :foreground "#90BE6D"))))
   '(org-level-4 ((t (:inherit org-level-8 :height 1.0 :foreground "#F9c74F"))))
   '(org-level-3 ((t (:inherit org-level-8 :height 1.0 :foreground "#F8961E"))))
   '(org-level-2 ((t (:inherit org-level-8 :height 1.0 :foreground "#F3722C" :weight bold))))
   '(org-level-1 ((t (:inherit org-level-8 :height 1.0 :foreground "#F94144" :weight bold))))
   '(org-scheduled-today ((t (:foreground "Yellow" :height 1.0))))
   '(org-scheduled-previously ((t (:foreground "DarkGoldenrod1"))))
   '(org-checkbox-statistics-done ((t (:inherit org-done))))
   '(org-checkbox-statistics-todo ((t (:inherit org-todo))))
   '(org-agenda-date ((t (:foreground "DimGray"))))
   '(org-agenda-date-today ((t (:foreground "DarkGray"))))
   '(org-agenda-calendar-event ((t (:foreground "DeepSkyBlue"))))
   '(org-agenda-current-time ((t (:foreground "DeepSkyBlue3"))) t)
   '(org-agenda-done ((t (:foreground "SeaGreen" :height 1.0))))
   '(org-time-grid ((t (:foreground "light slate gray")))))
)

(defun ct-org/pre-init-org-agenda ()
  (setq-default
   org-agenda-restore-windows-after-quit t
   org-agenda-window-setup 'other-window))

;; (defun ct-org/pre-init-org-bullets ()
;;   (setq-default
;;    org-bullets-bullet-list '("◉" "○" "✸" "◻︎" "❀" "✡")))
