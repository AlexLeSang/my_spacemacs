;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     search-engine
     chrome
     csv
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     javascript
     spotify
     shell
     semantic
     (auto-completion
      :variables
      auto-completion-return-key-behavior 'nil
      auto-completion-complete-with-key-sequence-delay 0.1
      auto-completion-tab-key-behavior 'cycle
      auto-completion-complete-with-key-sequence "jk"
      auto-completion-enable-company-help-tooltip t
      auto-completion-enable-sort-by-usage t
      spacemacs-default-company-backends '(company-files company-capf company-yasnippet)
      )
     better-defaults
     evil-snipe
     emacs-lisp
     (colors
      :variables
      colors-colorize-identifiers 'all)
     (git
      :variables
      git-magit-status-fullscreen t)
     ;; markdown
     ;; org
     (scala
      :variables
      scala-indent:use-javadoc-style t
      scala-use-java-doc-style t
      scala-auto-insert-asterisk-in-comments t
      scala-auto-start-ensime t)
     (shell
      :variables
      shell-default-shell 'term
      shell-default-term-shell "/usr/bin/zsh"
      shell-default-height 30
      shell-default-position 'bottom)
     (spell-checking
      :variables
      =enable-flyspell-auto-completion= t
      spell-checking-enable-auto-dictionary t
      )
     syntax-checking
     (version-control
      :variables
      version-control-diff-tool 'diff-hl
      version-control-global-margin t)
     (latex
      :variables
      auto-fill-mode nil)
     ;;clojure
     docker
     (c-c++
      :variables
      c-c++-default-mode-for-headers 'c++-mode
      ;; c-c++-enable-clang-support t
      )
     ;; asm
     ;; gtags
     mineo-rtags
     javascript
     (python
      :variables
      python-test-runner 'pytest)
     themes-megapack
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(persp-mode rtags cmake-ide)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(company)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         spacemacs-dark
                         majapahit-dark
                         darkokai
                         hc-zenburn
                         monokai
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.0)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 100
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 75
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq-default c-default-style "bsd")
  (setq-default c-basic-offset 4)
  (setq-default tab-width 4)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; (defconst my-cc-style
  ;;   '("bsd" ; this is inheritance from the bsd style
  ;;     (c-offsets-alist . ((innamespace . [0])))))

  ;; (c-add-style "my-cc-mode" my-cc-style)
  ;; (setq-default c-basic-offset 4)
  ;; (setq-default tab-width 4)
  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (defun clang-format-bindings ()
    (define-key c++-mode-map [C-tab] 'clang-format-buffer))

  (require 'edit-server)
  (edit-server-start)

  (when (locate-library "edit-server")
    (require 'edit-server)
    (setq edit-server-new-frame nil)
    (edit-server-start))

  (require 'cmake-ide)
  (require 'flycheck-rtags)
  (require 'company-rtags)
  (setq ahs-idle-timer 0)
  (setq vc-follow-symlinks t)
  (spacemacs/toggle-indent-guide-on)
  (spacemacs/toggle-golden-ratio-on)
  (spacemacs/toggle-camel-case-motion-globally-on)
  (spacemacs/toggle-syntax-checking-on)
  ;; (spacemacs/toggle-automatic-symbol-highlight-on)
  (global-auto-revert-mode 1)
  ;; (global-auto-complete-mode)
  (global-flycheck-mode t)
  (setq auto-mode-alist (cons '("\\.m$" . octave-mode) auto-mode-alist))
  (setenv "NO_PROXY" "127.0.0.1")
  (setenv "no_proxy" "127.0.0.1")
  (setq projectile-enable-caching t)
  (global-set-key (kbd "<f4>") 'gdb)
  (global-set-key (kbd "<f5>") 'gud-cont)
  (global-set-key (kbd "<f6>") 'gud-next)
  (global-set-key (kbd "<f7>") 'gud-step)
  (global-set-key (kbd "C-&") 'gud-break)
  (global-set-key (kbd "C-*") 'gud-remove)
  (global-set-key (kbd "<f12>") 'spotify-playpause)
  ;; (global-set-key [C-tab] 'evil-next-buffer)
  ;; (global-set-key [C-iso-lefttab] 'evil-prev-buffer)
  (setq neo-theme 'nerd)
  (indent-guide-global-mode t)
  ;; RTags
  (global-company-mode t)
  (add-hook 'c-mode-common-hook 'rtags-start-process-unless-running)
  (add-hook 'c++-mode-common-hook 'rtags-start-process-unless-running)
  (require 'company)
  (require 'rtags-helm)
  (require 'flycheck-rtags)
  (defun my-flycheck-rtags-setup ()
    "Configure flycheck-rtags for better experience."
    (flycheck-select-checker 'rtags)
    (setq-local flycheck-check-syntax-automatically nil)
    (setq-local flycheck-highlighting-mode nil))
  ;; c-mode-common-hook is also called by c++-mode
  (add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)
  (add-hook 'c++-mode #'my-flycheck-rtags-setup)

  (global-company-mode)
  (defun my-flycheck-rtags-setup ()
    (flycheck-select-checker 'rtags)
    (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
    (setq-local flycheck-check-syntax-automatically nil))
  ;; c-mode-common-hook is also called by c++-mode
  (add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)
  (add-hook 'c++-mode #'my-flycheck-rtags-setup)
  (add-hook 'company-mode-hook
            (lambda()
              (defun my/downcase-first-char (&optional string)
                "Downcase only the first character of the input STRING."
                (when (and string (> (length string) 0))
                  (let ((first-char (substring string nil 1))
                        (rest-str   (substring string 1)))
                    (concat (downcase first-char) rest-str))))
              ))

  (setq global-semantic-idle-completions-mode nil)

  (setq company-dabbrev-downcase nil)
  (setq dabbrev-case-fold-search nil)
  (setq dabbrev-upcase-means-case-search t)

  ;; QML
  (add-to-list 'load-path (expand-file-name "~/my_spacemacs/qml"))
  (require 'qml-mode)
  (setq auto-mode-alist (cons '("\\.qml$" . qml-mode) auto-mode-alist))

  ;; Avy settings
  (setq avy-all-windows nil)

  ;; Semantic
  (setq hlt-auto-faces-flag t)

  ;; LaTeX
  (setq-default TeX-engine 'xetex)
  (setq-default TeX-PDF-mode t)
  '(TeX-source-correlate-method (quote synctex))
  '(TeX-source-correlate-mode t)
  '(TeX-source-correlate-start-server t)
  '(TeX-view-program-selection (quote (((output-dvi has-no-display-manager) "dvi2tty") ((output-dvi style-pstricks) "dvips and gv") (output-pdf "Okular") (output-dvi "xdvi") (output-pdf "Evince") (output-html "xdg-open"))))

  ;; Term
  (defun bb/setup-term-mode ()
    (evil-local-set-key 'insert (kbd "C-r") 'bb/send-C-r))

  (defun bb/send-C-r ()
    (interactive)
    (term-send-raw-string "\C-r"))

  (add-hook 'term-mode-hook 'bb/setup-term-mode)

  '(golden-ratio-exclude-modes
    (quote
     ("bs-mode"
      "calc-mode"
      "ediff-mode"
      "dired-mode"
      "gud-mode"
      "gdb-locals-mode"
      "gdb-registers-mode"
      "gdb-breakpoints-mode"
      "gdb-threads-mode"
      "gdb-frames-mode"
      "gdb-inferior-io-mode"
      "gud-mode"
      "gdb-inferior-io-mode"
      "gdb-disassembly-mode"
      "gdb-memory-mode"
      "restclient-mode"
      "speedbar-mode")))
  (with-eval-after-load 'company
    (define-key company-active-map (kbd "M-n") nil)
    (define-key company-active-map (kbd "M-p") nil)
    (define-key company-active-map (kbd "C-j") #'company-select-next)
    (define-key company-active-map (kbd "C-k") #'company-select-previous))

  ;; RTags
  (with-eval-after-load 'rtags
    (setq rtags-autostart-diagnostics t)
    (setq rtags-completions-enabled t)
    ;; (setq rtags-enable-unsaved-reparsing t)
    ;; (setq rtags-periodic-reparse-timeout 1.0)
    (setq rtags-reindex-on-save t)
    (setq rtags-show-containing-function t)
    ;; (setq rtags-tracking-timer-interval 0.1)
    (setq rtags-verbose-results t)
    (define-key evil-normal-state-map (kbd "gd") 'rtags-find-symbol-at-point)
    (define-key evil-normal-state-map (kbd "gr") 'rtags-find-references-at-point)
    (define-key evil-normal-state-map (kbd "gR") 'rtags-find-all-references-at-point)
    (define-key evil-normal-state-map (kbd "gu") 'rtags-location-stack-back)
    (define-key evil-normal-state-map (kbd "gU") 'rtags-location-stack-forward)
    (define-key evil-normal-state-map (kbd "ge") 'rtags-reparse-file)
    (define-key evil-normal-state-map (kbd "gt") 'rtags-display-summary)
    (define-key evil-normal-state-map (kbd "ga") 'projectile-find-other-file)
    (define-key evil-normal-state-map (kbd "gA") 'projectile-find-other-file-other-window)
    )
  (push 'company-rtags company-backends)

  (setq company-backends-c-mode-common  '(
                                          (
                                           (company-rtags :with company-semantic company-dabbrev-code)
                                           (company-semantic :with company-dabbrev-code)
                                           company-dabbrev
                                           company-dabbrev-code
                                           )
                                          )
        )

  (defun my-flycheck-rtags-setup ()
    (flycheck-select-checker 'rtags)
    (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
    (setq-local flycheck-check-syntax-automatically nil))
  (add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)

  (eval-after-load 'company
    '(progn
       (define-key company-mode-map (kbd "C-;") 'helm-company)
       (define-key company-active-map (kbd "C-;") 'helm-company)))

  ;; '(company-backends
  ;;   (quote
  ;;    ((company-tern :with company-yasnippet)
  ;;     (company-elisp :with company-yasnippet)
  ;;     (company-bbdb :with company-yasnippet)
  ;;     (company-nxml :with company-yasnippet)
  ;;     (company-css :with company-yasnippet)
  ;;     (company-eclim :with company-yasnippet)
  ;;     (company-semantic :with company-yasnippet company-clang)
  ;;     (company-clang :with company-yasnippet company-semantic)
  ;;     (company-rtags :with company-yasnippet company-semantic)
  ;;     (company-xcode :with company-yasnippet)
  ;;     (company-ropemacs :with company-yasnippet)
  ;;     (company-cmake :with company-yasnippet)
  ;;     (company-capf :with company-yasnippet)
  ;;     ;; (company-dabbrev-code company-gtags company-etags company-keywords :with company-yasnippet)
  ;;     (company-dabbrev-code :with company-yasnippet)
  ;;     (company-oddmuse :with company-yasnippet)
  ;;     (company-files :with company-yasnippet)
  ;;     (company-anaconda :with company-yasnippet)
  ;;     (company-dabbrev :with company-yasnippet))))
  (setq company-dabbrev-downcase nil)
  (setq helm-buffer-max-length nil)

  ;; (defun run-compilation ()
  ;;   (when (eq major-mode 'c++-mode)
  ;;     (recompile nil)
  ;;     ))

  ;; (add-hook 'after-save-hook #'run-compilation)
  )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rtags zonokai-theme zenburn-theme zen-and-art-theme yapfify xterm-color ws-butler window-numbering which-key web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stickyfunc-enhance srefactor spotify spacemacs-theme spaceline spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle shell-pop seti-theme reverse-theme restart-emacs rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme quelpa pyvenv pytest pyenv-mode py-isort purple-haze-theme professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pastels-on-dark-theme paradox orgit organic-green-theme org-plus-contrib org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noflet noctilux-theme niflheim-theme neotree naquadah-theme mwim mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme magit-gitflow macrostep lush-theme lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme inkpot-theme info+ indent-guide ido-vertical-mode hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-spotify helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gmail-message-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gandalf-theme flyspell-correct-helm flycheck-pos-tip flx-ido flatui-theme flatland-theme firebelly-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help ensime engine-mode elisp-slime-nav edit-server dumb-jump dracula-theme dockerfile-mode docker django-theme disaster diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme csv-mode company-statistics column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmake-mode cmake-ide clues-theme clean-aindent-mode clang-format cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex apropospriate-theme anti-zenburn-theme anaconda-mode ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
