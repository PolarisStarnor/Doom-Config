;;; box-theme.el --- Box :D -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: May 23, 2016 (28620647f838)
;; Author: Henrik Lissner <https://github.com/hlissner>
;; Maintainer: Henrik Lissner <https://github.com/hlissner>
;; Source: https://github.com/atom/one-dark-ui
;;
;;; Commentary:
;;
;; This themepack's flagship theme.
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables
(defgroup box-theme nil
  "Options for the `box' theme."
  :group 'doom-themes)

(defcustom box-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-one-theme
  :type 'boolean)

(defcustom box-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'box-theme
  :type 'boolean)

(defcustom box-comment-bg box-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their legibility."
  :group 'box-theme
  :type 'boolean)

(defcustom box-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'box-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme box
  "A dark theme inspired by Atom One Dark."

  ;; name        default   256           16
  ((bg         '("#FFCD97" "sandy brown"       "sandy brown"  ))
   (fg         '("#1e181e" "black"       "black"  ))

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   ;; #8fcc8e
   ;; #83bd93
   (bg-alt     '("#9ddaa6" "medium spring green"       "medium spring green"        ))
   (fg-alt     '("#1e181e" "black"     "black"        ))

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, base0 should be white and base8 should be black.
   (base0      '("#e1a86b" "black"       "black"        ))
   (base1      '("#9c9f58" "#1e1e1e"     "brightblack"  ))
   (base2      '("#5e8f5e" "#2e2e2e"     "brightblack"  ))
   (base3      '("#2f7969" "#262626"     "brightblack"  ))
   (base4      '("#205f69" "#3f3f3f"     "brightblack"  ))
   (base5      '("#2a4458" "#525252"     "brightblack"  ))
   (base6      '("#2b2c3c" "#6b6b6b"     "brightblack"  ))
   (base7      '("#1e181e" "#979797"     "brightblack"  ))
   (base8      '("#000000" "#dfdfdf"     "white"        ))

   ;; Box Gradient
   (box0        '("#ffce99"       ""            ""))
   (box1        '("#e7b38d"       ""            ""))
   (box2        '("#cd9a81"       ""            ""))
   (box3        '("#b18274"       ""            ""))
   (box4        '("#956d67"       ""            ""))
   (box5        '("#785858"       ""            ""))
   (box6        '("#5b4547"       ""            ""))
   (box7        '("#3f3336"       ""            ""))
   (box8        '("#252223"       ""            ""))

   ;; Lime Gradient
   (lime0       '("#baf8b9"       ""            ""))
   (lime1       '("#9ddaa6"       ""            ""))
   (lime2       '("#83bd93"       ""            ""))
   (lime3       '("#6aa080"       ""            ""))
   (lime4       '("#54846c"       ""            ""))
   (lime5       '("#406858"       ""            ""))
   (lime6       '("#2e4e43"       ""            ""))
   (lime7       '("#1e352f"       ""            ""))
   (lime8       '("#101e1b"       ""            ""))

   (grey       base4)
   (red        '("#d84c4c" "#ff6655" "red"          ))
   (orange     '("#b55e27" "#dd8844" "brightred"    ))
   (yellow     '("#7d6647" "#ECBE7B" "yellow"       ))
   (green      '("#3d8724" "#99bb66" "green"        ))
   (teal       '("#008c4f" "#44b9b1" "brightgreen"  ))
   (cyan       '("#008878" "#46D9FF" "brightcyan"   ))
   (dark-cyan  '("#227671" "#5699AF" "cyan"         ))
   (blue       '("#0080d1" "#51afef" "brightblue"   ))
   (dark-blue  '("#5e71d6" "#2257A0" "blue"         ))
   (violet     '("#995fc1" "#a9a1e1" "magenta"      ))
   (magenta    '("#cb4375" "#c678dd" "brightmagenta"))

   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      blue)
   (vertical-bar   (doom-darken base6 0.1))
   (selection      dark-blue)
   (builtin        magenta)
   (comments       base4)
   (doc-comments   (doom-lighten base4 0.5))
   (constants      violet)
   (functions      magenta)
   (keywords       blue)
   (methods        cyan)
   (operators      blue)
   (type           yellow)
   (strings        green)
   (variables      (doom-darken magenta 0.4))
   (numbers        orange)
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base5)
   (modeline-bg              (if box-brighter-modeline
                                 (doom-darken blue 0.45)
                               (doom-darken bg-alt 0.1)))
   (modeline-bg-alt          (if box-brighter-modeline
                                 (doom-darken blue 0.475)
                               `(,(doom-darken (car bg-alt) 0.15) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when box-padded-modeline
      (if (integerp box-padded-modeline) box-padded-modeline 4))))


  ;;;; Base theme face overrides
  (

   (cursor :background blue)

    ;;;; tab-line/tab-bar (Emacs 27+)
    (tab-line :background lime2 :foreground lime2 :height 1.05)
    (tab-line-tab :background box2 :foreground base7)
    (tab-line-tab-inactive :background lime3 :foreground base7)
    (tab-line-tab-inactive-alternate :inherit 'tab-line-tab-inactive)
    (tab-line-tab-current :background box2 :foreground base7)
    ;; (tab-line-special )
    (tab-line-highlight :inherit 'tab-line-tab)
    (tab-line-close-highlight :foreground highlight)
    (tab-line-tab-modified :foreground base4)
    ((tab-bar &inherit tab-line))
    ((tab-bar-tab &inherit tab-line-tab))
    ((tab-bar-tab-inactive &inherit tab-line-tab-inactive))

   ;; Defaults from doom-one theme I stole from
   ((line-number &override) :foreground base5)
   ((line-number-current-line &override) :foreground fg)
   ((font-lock-comment-face &override)
    :background (if box-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if box-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)

   ;;;; doom-modeline
   (doom-modeline-bar :background (if box-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground green :weight 'bold)

   ;;;; elscreen
   (elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")

   ;;;; ivy
   (ivy-current-match :background dark-blue :distant-foreground base0 :weight 'normal)

   ;;;; LaTeX-mode
    (font-latex-sectioning-2-face :foreground violet
                                  :weight 'semi-bold
                                  :height 1.6)
    (font-latex-sectioning-3-face :foreground blue
                                  :weight 'semi-bold
                                  :height 1.4)
    (font-latex-sectioning-4-face :foreground magenta
                                  :weight 'semi-bold
                                  :height 1.2)
   (font-latex-math-face :foreground green)

   ;;;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red :height 1.4)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))

   ;;;; rjsx-mode
   (rjsx-tag :foreground red)
   (rjsx-attr :foreground orange)

   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-alt)))


   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground green)
   (rainbow-delimiters-depth-3-face :foreground red)
   (rainbow-delimiters-depth-4-face :foreground blue)
   (rainbow-delimiters-depth-5-face :foreground orange)
   (rainbow-delimiters-depth-6-face :foreground magenta)
   (rainbow-delimiters-depth-7-face :foreground cyan)

  )

)

;;; box-theme.el ends here
