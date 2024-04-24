(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-source-correlate-method 'synctex t)
 '(TeX-view-program-selection
	  '((output-dvi "PDF Tools")
		   (output-pdf "PDF Tools")
		   ((output-dvi has-no-display-manager)
			   "dvi2tty")
		   ((output-dvi style-pstricks)
			   "dvips and gv")
		   (output-html "xdg-open")
		   (output-pdf "preview-pane")))
 '(custom-safe-themes
	  '("96c5ca4363c49c59af62125176299ae2b3e6348ca767b7279e27c20d1cbd5e33" "4990532659bb6a285fee01ede3dfa1b1bdf302c5c3c8de9fad9b6bc63a9252f7" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" default))
 '(ede-project-directories '("/mnt/Data/Coding/Class/481/assign1/src"))
 '(flycheck-checker-error-threshold 800)
 '(magit-todos-insert-after '(bottom) nil nil "Changed by setter of obsolete option `magit-todos-insert-at'")
 '(package-selected-packages
	  '(graphviz-dot-mode exec-path-from-shell cargo lsp-python-ms editorconfig xenops flyspell-correct flyspell-lazy color-theme-modern rainbow-mode twittering-mode all rustic flycheck-rust rust-mode rtags cpputils-cmake cmake-project cmake-mode cmake-ide ac-etags flylisp use-package bind bind-key auctex-latexmk markdown-preview-mode markdown-preview-eww latex-preview-pane obsidian pdf-tools auto-complete-auctex auctex cdlatex impatient-showdown org-latex-impatient impatient-mode magit git-commit flycheck-pycheckers flycheck-pyflakes pylint elpy python-mode flymake-python-pyflakes treemacs pyvenv vterm))
 '(send-mail-function 'mailclient-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'scroll-left 'disabled nil)
