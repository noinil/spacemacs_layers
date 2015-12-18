;;; keybindings.el --- ct-editor Layer keybindings File for Spacemacs

;; --- Important: declare evil-leader prefix ---
(spacemacs/declare-prefix "o" "user-defined")
(spacemacs/declare-prefix "ot" "toggle")

(global-set-key (kbd "s-y") 'browse-kill-ring)

(spacemacs|add-toggle abbreviation
  :status abbrev-mode
  :on (abbrev-mode)
  :off (abbrev-mode -1)
  :documentation "Use user defined abbreviations."
  :evil-leader "ota")

(spacemacs|add-toggle autoinsert
  :status auto-insert-mode
  :on (auto-insert-mode)
  :off (auto-insert-mode -1)
  :documentation "Auto-insert for newly created files."
  :evil-leader "otA")
