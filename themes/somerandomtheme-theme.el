(deftheme somerandomtheme
  "Created 2024-01-06.")

(custom-theme-set-faces
 'somerandomtheme
 '(default ((t (:inherit nil :extend nil :stipple nil :background "black" :foreground "#d7d5d1" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight regular :height 124 :width normal :foundry "1ASC" :family "Droid Sans Mono"))))
 '(cursor ((t (:background "#bbbbbb"))))
 '(fixed-pitch ((t (:family "Droid Sans Mono" :foundry "1ASC" :width normal :height 124 :weight regular :slant normal))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "#d7d5d1"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#bbbbbb"))))
 '(highlight ((t (:foreground "#838083" :background "#bbbbbb"))))
 '(region ((t (:extend t :background "#0e0c0a"))))
 '(shadow ((t (:foreground "#545053"))))
 '(secondary-selection ((t (:extend t :background "#d7d5d1"))))
 '(trailing-whitespace ((t (:background "#d7d5d1"))))
 '(font-lock-bracket-face ((t (:inherit (font-lock-punctuation-face)))))
 '(font-lock-builtin-face ((t (:foreground "#838083"))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:slant italic :foreground "#545053"))))
 '(font-lock-constant-face ((t (:slant italic :foreground "#838083"))))
 '(font-lock-delimiter-face ((t (:inherit (font-lock-punctuation-face)))))
 '(font-lock-doc-face ((t (:inherit font-lock-comment-face :foreground "#545053"))))
 '(font-lock-doc-markup-face ((t (:inherit (font-lock-constant-face)))))
 '(font-lock-escape-face ((t (:inherit (font-lock-regexp-grouping-backslash)))))
 '(font-lock-function-call-face ((t (:inherit (font-lock-function-name-face)))))
 '(font-lock-function-name-face ((t (:slant italic :foreground "#d7d5d1"))))
 '(font-lock-keyword-face ((t (:foreground "#d7d5d1"))))
 '(font-lock-negation-char-face ((t (:foreground "#d7d5d1" :inherit (bold)))))
 '(font-lock-number-face ((t (:foreground "#838083"))))
 '(font-lock-misc-punctuation-face ((t (:inherit (font-lock-punctuation-face)))))
 '(font-lock-operator-face ((t nil)))
 '(font-lock-preprocessor-face ((t (:foreground "#d7d5d1" :inherit (bold)))))
 '(font-lock-property-name-face ((t (:inherit (font-lock-variable-name-face)))))
 '(font-lock-property-use-face ((t (:inherit (font-lock-property-name-face)))))
 '(font-lock-punctuation-face ((t nil)))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#d7d5d1" :inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#d7d5d1" :inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#838083"))))
 '(font-lock-type-face ((t (:slant italic :foreground "#d7d5d1"))))
 '(font-lock-variable-name-face ((t (:foreground "#838083"))))
 '(font-lock-variable-use-face ((t (:inherit (font-lock-variable-name-face)))))
 '(font-lock-warning-face ((t (:inherit (warning)))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:weight bold :underline (:color foreground-color :style line :position nil) :foreground "#bbbbbb"))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(fringe ((t (:foreground "#202020" :inherit (default)))))
 '(header-line ((t (:inherit (mode-line)))))
 '(tooltip ((t (:foreground "#d7d5d1" :background "#434343"))))
 '(mode-line ((t (:box nil :background "#383838"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:foreground "#bbbbbb"))))
 '(mode-line-highlight ((t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:box nil :foreground "#6f6f6f" :background "#323232"))))
 '(isearch ((t (:weight bold :inherit (lazy-highlight)))))
 '(isearch-fail ((t (:weight bold :foreground "#838083" :background "#d7d5d1"))))
 '(lazy-highlight ((t (:weight bold :foreground "#050505" :background "#828282"))))
 '(match ((t (:weight bold :foreground "#d7d5d1" :background "#838083"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'somerandomtheme)