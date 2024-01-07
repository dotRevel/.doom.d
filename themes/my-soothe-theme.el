(deftheme my-soothe
  "Created 2024-01-06.")

(custom-theme-set-faces
 'my-soothe
 '(default ((t (:family "JetBrainsMono Nerd Font" :foundry "JB" :width normal :height 124 :weight regular :slant normal :underline nil :overline nil :extend nil :strike-through nil :box nil :inverse-video nil :foreground "#F4F1ED" :background "#111013" :stipple nil :inherit nil))))
 '(cursor ((t (:background "#D9662E"))))
 '(fixed-pitch ((t (:family "JetBrainsMono Nerd Font" :foundry "JB" :width normal :height 124 :weight regular :slant normal))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "#B14E41" :background "#1F1E25"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#D9662E" :background "#1F1813"))))
 '(highlight ((t (:background "#0D3241"))))
 '(region ((t (:extend t :background "#16273A"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((t (:extend t :background "#15252A"))))
 '(trailing-whitespace ((((class color) (background light)) (:background "red1")) (((class color) (background dark)) (:background "red1")) (t (:inverse-video t))))
 '(font-lock-bracket-face ((t (:inherit (font-lock-punctuation-face)))))
 '(font-lock-builtin-face ((t (:foreground "#A24B2E" :background "#1D1717"))))
 '(font-lock-comment-delimiter-face ((t (:slant italic :foreground "#0E545F" :background "#121113"))))
 '(font-lock-comment-face ((t (:slant italic :foreground "#948CB5" :background "#121113"))))
 '(font-lock-constant-face ((t (:foreground "#948CB5" :background "#1F1E25"))))
 '(font-lock-delimiter-face ((t (:inherit (font-lock-punctuation-face)))))
 '(font-lock-doc-face ((t (:foreground "#1FA8A8" :background "#0A0A0A"))))
 '(font-lock-escape-face ((t (:inherit (font-lock-regexp-grouping-backslash)))))
 '(font-lock-negation-char-face ((t (:foreground "#CEB666" :background "#18140E"))))
 '(font-lock-number-face ((t nil)))
 '(font-lock-misc-punctuation-face ((t (:inherit (font-lock-punctuation-face)))))
 '(font-lock-operator-face ((t nil)))
 '(font-lock-punctuation-face ((t nil)))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#1FA8A8" :background "#051316"))))
 '(font-lock-warning-face ((t (:foreground "#A24B2E" :background "#251F20"))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:foreground "#A4B3C9" :background "#22272F"))))
 '(link-visited ((t (:foreground "#1FA8A8" :background "#1B2128"))))
 '(fringe ((t (:foreground "#113E46" :background "#141414"))))
 '(header-line ((t (:foreground "#D9662E" :background "#111013"))))
 '(tooltip ((t (:foreground "#2B2A2A" :background "#DBD9D4"))))
 '(mode-line ((t (:height 1.0 :foreground "#1FA8A8" :background "#15252A"))))
 '(mode-line-buffer-id ((t (:foreground "#D9662E"))))
 '(mode-line-emphasis ((t (:weight normal))))
 '(mode-line-highlight ((t (:foreground "#B14E41"))))
 '(mode-line-inactive ((t (:height 1.0 :foreground "#67587F" :background "#1A1226" :inherit (mode-line)))))
 '(isearch ((t (:foreground "#FF642A" :background "#0D3239"))))
 '(isearch-fail ((t (:foreground "#ECEAE5" :background "#AA2010"))))
 '(lazy-highlight ((t (:foreground "#948CB5" :background "#110C19"))))
 '(match ((t (:foreground "#1FA8A8" :background "#1A1226"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch))))))

(provide-theme 'my-soothe)
