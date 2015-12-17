;;; config.el --- ct-editor Layer config File for Spacemacs
;;
;; Author: C. Tan
;; Email:  noinil@gmail.com
;;

(define-abbrev-table 'global-abbrev-table
  '(
    ;; personal abbrevs ========================================================
    ;;                                        _
    ;;  _ __   ___ _ __ ___  ___  _ __   __ _| |
    ;; | '_ \ / _ \ '__/ __|/ _ \| '_ \ / _` | |
    ;; | |_) |  __/ |  \__ \ (_) | | | | (_| | |
    ;; | .__/ \___|_|  |___/\___/|_| |_|\__,_|_|
    ;; |_|

    ;; email
    ("2me" "noinil@gmail.com")

    ;; signature
    ("2ct" "Cheng Tan")
    ;; =========================================================================


    ;; computing tech ==========================================================
    ;;   ____   ____
    ;;  / ___| / ___|
    ;; | |     \___ \
    ;; | |___   ___) |
    ;;  \____| |____/
    ;;
    ;; computing
    ("3g" "Google")
    ("3wp" "Wikipedia")

    ;; terminal colors
    ("3tb" "\033[0;30;m")
    ("3tr" "\033[0;31;m")
    ("3tg" "\033[0;32;m")
    ("3ty" "\033[0;33;m")
    ("3tb" "\033[0;34;m")
    ("3tv" "\033[0;35;m")
    ("3tc" "\033[0;36;m")
    ("3tw" "\033[0;37;m")
    ("3tn" "\033[0m")

    ;; url
    ("3uct" "http://oinil.blogspot.com/")
    ("3uctb" "http://oinil.wordpress.com/")
    ("3karu" "http://www.karuishi.com/")
    ;; =========================================================================

    ;; normal english ==========================================================
    ;;                                   _                    _ _     _
    ;;  _ __   ___  _ __ _ __ ___   __ _| |   ___ _ __   __ _| (_)___| |__
    ;; | '_ \ / _ \| '__| '_ ` _ \ / _` | |  / _ \ '_ \ / _` | | / __| '_ \
    ;; | | | | (_) | |  | | | | | | (_| | | |  __/ | | | (_| | | \__ \ | | |
    ;; |_| |_|\___/|_|  |_| |_| |_|\__,_|_|  \___|_| |_|\__, |_|_|___/_| |_|
    ;;                                                  |___/
    ;;
    ("4def" "definition")
    ("4ex" "for example,")
    ("4var" "variable")
    ("4cp" "computer")
    ;; =========================================================================

    ;; work ====================================================================
    ;; __        _____  ____  _  __
    ;; \ \      / / _ \|  _ \| |/ /
    ;;  \ \ /\ / / | | | |_) | ' /
    ;;   \ V  V /| |_| |  _ <| . \
    ;;    \_/\_/  \___/|_| \_\_|\_\
    ;;
    ;; math/unicode symbols
    ("6in" "∈")
    ("6nin" "∉")
    ("6inf" "∞")
    ("6luv" "♥")
    ("6smly" "☺")

    ;; biophysics
    ("6ff" "force field")
    ("6fel" "free energy landscape")
    ("6fes" "free energy surface")
    ("6mtd" "metadynamics")
    ("6cv" "collective variable")
    ("6cc" "conformational changes")
    ("6simu" "simulations")
    ("6md" "molecular dynamics")
    ("6cg" "coarse-grained")
    ("6pca" "principle component analysis")
    ("6int" "interactions")
    ("6exv" "excluded volume")
    ("6ele" "electrostatic")

    ("6h" "H$^{+}$")
    ("6na" "Na$^{+}$")
    ("6k" "K$^{+}$")

    ("6mg2" "Mg$^{2+}$")
    ("6ca2" "Ca$^{2+}$")
    ("6al3" "Al$^{3+}$")

    ("6fe2" "Fe$^{2+}$")
    ("6fe3" "Fe$^{3+}$")
    ("6cu2" "Cu$^{2+}$")
    ("6zn2" "Zn$^{2+}$")

    ("6cl" "Cl$^{-}$")

    ;; bibtex
    ("7ac" "Angew. Chem.")
    ("7arb" "Annu. Rev. Biochem.")
    ("7arbbs" "Annu. Rev. Biophys. Biomol. Struct.")

    ("7bj" "Biophys. J.")

    ("7cpc" "ChemPhysChem")
    ("7cpl" "Chem. Phys. Lett.")
    ("7cshsqb" "Cold Spring Harbor Symp. Quant. Biol.")
    ("7cbp" "Comp. Biochem. Physiol.")
    ("7cbpb" "Comp. Biochem. Physiol. B")
    ("7cpc" "Comput. Phys. Commun.")
    ("7cosb" "Curr. Opin. Struct. Biol.")

    ("7emboj" "EMBO J.")

    ("7febsl" "FEBS Lett.")

    ("7ge" "Gene Expr.")

    ("7jacs" "J. Am. Chem. Soc.")
    ("7jbc" "J. Biol. Chem.")
    ("7jcp" "J. Chem. Phys.")
    ("7jcomp" "J. Comput. Phys.")
    ("7jmb" "J. Mol. Biol.")
    ("7jsb" "J. Struct. Biol.")
    ("7jpc" "J. Phys. Chem.")
    ("7jpcb" "J. Phys. Chem. B")

    ("7nb" "Nature Biotechnol.")
    ("7ncb" "Nature Cell Biol.")
    ("7ng" "Nature Genet.")
    ("7nrmcb" "Nature Rev. Mol. Cell Biol.")
    ("7nsb" "Nature Struct. Biol.")
    ("7nar" "Nucleic Acids Res.")

    ("7pre" "Phys. Rev. E")
    ("7pccp" "Phys. Chem. Chem. Phys.")
    ("7prl" "Phys. Rev. Lett.")
    ("7pnas" "Proc. Natl. Acad. Sci. U.S.A.")
    ("7ps" "Protein Sci.")
    ("7psfg" "Proteins Struct. Funct. Genet.")

    ;; =========================================================================

    ;; emacs regex =============================================================
    ;;
    ;;   ___ _ __ ___   __ _  ___ ___
    ;;  / _ \ '_ ` _ \ / _` |/ __/ __|
    ;; |  __/ | | | | | (_| | (__\__ \
    ;;  \___|_| |_| |_|\__,_|\___|___/
    ;;
    ("9d" "\\([0-9]+?\\)")
    ("9str" "\\([^\"]+?\\)\"")
    ;; =========================================================================
    ))

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs nil)

;; turn on abbrev mode globally
(setq-default abbrev-mode t)
