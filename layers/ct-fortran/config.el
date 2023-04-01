;;; config.el --- ct-fortran Layer config File for Spacemacs
;;
;; Author: C. Tan
;; Email:  i@c-tan.com
;;

;; Fortran settings
(setq fortran-continuation-string "&")
(setq fortran-do-indent 2)
(setq fortran-if-indent 2)
(setq fortran-structure-indent 2)

;; Fortran 90 settings
(setq f90-do-indent 2)
(setq f90-if-indent 2)
(setq f90-type-indent 2)
(setq f90-program-indent 2)
(setq f90-continuation-indent 4)
(setq f90-smart-end 'blink)

(add-hook 'f90-mode-hook #'(lambda () (setq fill-column 80)))
