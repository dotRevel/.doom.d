;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!
(set-frame-parameter (selected-frame)'alpha '(100 . 100))
(add-to-list 'default-frame-alist'(alpha . (100 . 100)))
;;(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))
(setq jit-lock-stealth-time 1.25)
(setq jit-lock-stealth-nice 0.5) ;; Seconds between font locking.
(setq jit-lock-chunk-size 4096)
(setq jit-lock-defer-time 0)
(with-eval-after-load 'evil
  (add-hook 'evil-insert-state-entry-hook
    (lambda ()
      (setq jit-lock-defer-time 0.25)) nil t)
  (add-hook 'evil-insert-state-exit-hook
    (lambda ()
      (setq jit-lock-defer-time 0)) nil t))

 (setq native-comp-jit-compilation nil)
(after! (doom-packages straight)
  (setq straight--native-comp-available t))

(use-package affe
  :config
  ;; Manual preview key for `affe-grep'
  (consult-customize affe-grep :preview-key "M-."))
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")
;;
; ;;;; lsp
 ;; (after! lsp-mode
 ;;   (setq  lsp-auto-guess-root nil)
 ;;  )
; ;; Languages - C/C++
;
;; (setq c-default-style "k&r"
 ;;       c-basic-offset 4
;;        indent-tabs-mode nil)
;; ;

;;; native compilation
(setq native-comp-async-jobs-number 5) ; use 5 cores when native compiling

;;; compilation - hide compilation if successful

 (add-hook 'compilation-start-hook 'compilation-started)
  (add-hook 'compilation-finish-functions 'hide-compile-buffer-if-successful)

  (defcustom auto-hide-compile-buffer-delay 1
    "Time in seconds before auto hiding compile buffer."
    :group 'compilation
    :type 'number
  )

  (defun hide-compile-buffer-if-successful (buffer string)
    (setq compilation-total-time (time-subtract nil compilation-start-time))
    (setq time-str (concat " (Time: " (format-time-string "%s.%3N" compilation-total-time) "s)"))

    (if
      (or
        (string-match ".*exited abnormally.*" string)

        ;; Delete it, if Hide Warnings too.
        (with-current-buffer buffer
          (goto-char (point-min))
          (search-forward "warning" nil t)
        )
      )

      ;;If Warnings/Errors then
      (message (concat "Compiled with Warnings/Errors" time-str))

      ;;If Compiled Successfully then
      (progn
        (bury-buffer buffer)
        (run-with-timer auto-hide-compile-buffer-delay nil 'delete-window (get-buffer-window buffer 'visible))
        (message (concat "Compiled Successfully" time-str))
        (shell-command "notify-send emacs-compilation 'Compilation completed'")
      )
    )
  )

  (make-variable-buffer-local 'compilation-start-time)

  (defun compilation-started (proc)
    (setq compilation-start-time (current-time))
  )

;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq doom-font (font-spec :family "Droid Sans Mono" :size 28 :weight 'Regular))
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'modus-vivendi)
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Sync/org/")
;;
;; org mode emphasis markers
;;
(setq org-hide-emphasis-markers t)
;;
;;Agenda
(setq org-agenda-prefix-format "%t %s")
;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys

;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
