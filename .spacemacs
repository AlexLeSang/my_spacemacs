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
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     csv
     javascript
     spotify
     shell
     semantic
     (auto-completion
      :variables
      auto-completion-complete-with-key-sequence-delay 0.1
      auto-completion-tab-key-behavior nil
      auto-completion-complete-with-key-sequence "jk"
      auto-completion-enable-snippets-in-popup t
      auto-completion-enable-company-help-tooltip t
      auto-completion-enable-sort-by-usage t)
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
     (shell
      :variables
      shell-default-shell 'term
      shell-default-term-shell "/usr/bin/zsh"
      shell-default-height 30
      shell-default-position 'bottom)
     spell-checking
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
      c-c++-enable-clang-support t
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
                               :size 12
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
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
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
  (setq rtags-autostart-diagnostics t)
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

  (require 'company-rtags)
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
              (global-set-key (kbd "C-'") 'company-complete)
              (global-set-key (kbd "C-c i") 'yas-insert-snippet)
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

  ;; Avy settings
  (setq avy-all-windows nil)

  ;; Semantic
  (setq hlt-auto-faces-flag t)

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

  ;; RTags
  (with-eval-after-load 'rtags
    (define-key evil-normal-state-map (kbd "gd") 'rtags-find-symbol-at-point)
    (define-key evil-normal-state-map (kbd "gr") 'rtags-find-references-at-point)
    (define-key evil-normal-state-map (kbd "gR") 'rtags-find-all-references-at-point)
    (define-key evil-normal-state-map (kbd "gu") 'rtags-location-stack-back)
    (define-key evil-normal-state-map (kbd "gU") 'rtags-location-stack-forward)
    (define-key evil-normal-state-map (kbd "ge") 'rtags-reparse-file)
    (define-key evil-normal-state-map (kbd "gt") 'rtags-display-summary)
    (define-key evil-normal-state-map (kbd "gI") 'rtags-imenu)
    (define-key evil-normal-state-map (kbd "ga") 'projectile-find-other-file)
    (define-key evil-normal-state-map (kbd "gA") 'projectile-find-other-file-other-window)
    )
  (setq rtags-autostart-diagnostics t)
  (setq rtags-completions-enabled t)
  ;; (push 'company-rtags company-backends)
  ;; (push '(company-rtags :with company-semantic company-dabbrev-code company-yasnippet) company-backends)
  (push '(company-rtags :with company-dabbrev-code company-yasnippet) company-backends)
  (defun my-flycheck-rtags-setup ()
    (flycheck-select-checker 'rtags)
    (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
    (setq-local flycheck-check-syntax-automatically nil))
  ;; c-mode-common-hook is also called by c++-mode
  (add-hook 'c-mode-common-hook #'my-flycheck-rtags-setup)

  (setq large-file-warning-threshold nil)

  (setq company-dabbrev-downcase nil)
  (setq helm-buffer-max-length nil)

  ;; (defun run-compilation ()
  ;;   (when (eq major-mode 'c++-mode)
  ;;     (recompile nil)
  ;;     ))

  ;; (add-hook 'after-save-hook #'run-compilation)

  )

