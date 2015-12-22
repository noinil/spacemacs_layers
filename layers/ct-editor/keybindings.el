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

(spacemacs|add-toggle vim-visual-mark
  :status evil-visual-mark-mode
  :on (evil-visual-mark-mode)
  :off (evil-visual-mark-mode -1)
  :documentation "Displays all the evil marks you have registered on a buffe."
  :evil-leader "otm")

(spacemacs|add-toggle beacon
  :status beacon-mode
  :on (beacon-mode)
  :off (beacon-mode -1)
  :documentation "Never lose your cursor again."
  :evil-leader "otb")

(spacemacs|add-toggle origami
  :status origami-mode
  :on (origami-mode)
  :off (origami-mode -1)
  :documentation "A text folding minor mode for Emacs."
  :evil-leader "oto")
