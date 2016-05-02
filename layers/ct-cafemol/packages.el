;;; packages.el --- ct-cafemol layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Cheng Tan <noinil@gmail.com>
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst ct-cafemol-packages
  '((cafemol-mode :location local)))

(defun ct-cafemol/init-cafemol-mode ()
  (use-package cafemol-mode
    :mode "\\.inp\\'"))

;;; packages.el ends here
