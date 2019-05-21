;;; packages.el --- ct-genesis layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Cheng Tan <noinil@gmail.com>
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defconst ct-genesis-packages
  '((genesis-mode :location local)))

(defun ct-genesis/init-genesis-mode ()
  (use-package genesis-mode
    :mode ("\\.atin\\'" "\\.cgin\\'" "\\.spin\\'")))

;;; packages.el ends here
