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
     gnus
     (mu4e :variables
           mu4e-installation-path "/usr/share/emacs/site-lisp/mu4e")
     rust
     yaml
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     markdown
     csv
     erlang
     elixir
     extra-langs
     html
     octave
     scala
     vimscript
     shell-scripts
     crystal
     fasd
     (latex
      :variables
      latex-enable-auto-fill nil
      )
     pdf-tools
     (org
      :variables
      org-enable-github-support t
      )
     org-jira
     (clojure
      :variables clojure-enable-fancify-symbols nil
      )
     (auto-completion
      :variables
      auto-completion-return-key-behavior 'complete
      auto-completion-complete-with-key-sequence-delay 0.3
      auto-completion-tab-key-behavior 'cycle
      auto-completion-complete-with-key-sequence "jk"
      auto-completion-enable-company-help-tooltip nil
      auto-completion-enable-sort-by-usage t
      )
     (better-defaults
      :variables
      better-defaults-move-to-beginning-of-code-first t
      )
     (evil-snipe
      :variables
      evil-snipe-enable-alternate-f-and-t-behaviors t
      )
     emacs-lisp
     (colors
      :variables
      colors-colorize-identifiers 'all
      )
     (git
      :variables
      git-magit-status-fullscreen t
      )
     (shell
      :variables
      shell-default-shell 'multi-term
      shell-default-term-shell "/usr/bin/zsh"
      shell-default-height 30
      shell-default-position 'left
      )
     (spell-checking
      :variables
      spell-checking-enable-by-default t
      )
     (syntax-checking
      :variables
      syntax-checking-enable-by-default t
      syntax-checking-enable-tooltips nil
      )
     (version-control
      :variables
      version-control-diff-tool 'diff-hl
      version-control-global-margin t
      )
     (c-c++
      :variables
      c-c++-default-mode-for-headers 'c++-mode
      )
     (gtags
      :variables gtags-enable-by-default nil
      )
     javascript
     (python
      :variables
      python-fill-column 119
      python-test-runner 'pytest
      )
     (ibuffer
      :variables
      ibuffer-group-buffers-by 'projects
      )
     themes-megapack
     ;; private layers
     ;; olivetti
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(flycheck-mypy flycheck-pycheckers
                                                    pycoverage realgud realgud-pry helm-tramp
                                                    modern-cpp-font-lock org-projectile
                                                    lsp-mode lsp-python company-lsp
                                                    cquery
                                                    ccls
                                                    cquery
                                                    helm-xref lsp-ui fzf
                                                    yasnippet-snippets
                                                    helm-bm
                                                    bm
                                                    google-this
                                                    )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(org-projectile)
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
   dotspacemacs-elpa-timeout 20
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update nil
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'hybrid
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading t
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
                         monokai
                         zenburn
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
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
   dotspacemacs-helm-position 'left
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 2.0
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
   dotspacemacs-fullscreen-at-startup t
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
   dotspacemacs-inactive-transparency 100
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
   ;; If non\\\\\-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
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
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; Load files from private directory
  (add-to-list 'load-path "~/.emacs.d/private/local")

  ;; Set memory threshold
  (setq gc-cons-threshold 8000000)


  ;; Minibuffer setup
  (defun my-minibuffer-exit-hook ()
    (setq gc-cons-threshold 8000000))

  (defun my-minibuffer-setup-hook ()
    (setq helm-buffer-max-length nil)
    (set-face-attribute 'helm-source-header nil :height 0.1)
    (setq gc-cons-threshold most-positive-fixnum))

  (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
  (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)


  ;; Spacemacs switches
  (spacemacs/toggle-mode-line-battery-on)
  (spacemacs/toggle-display-time-on)
  (spacemacs/toggle-truncate-lines-off)
  (spacemacs/toggle-indent-guide-on)
  (spacemacs/toggle-syntax-checking-on)
  (spacemacs/toggle-auto-fill-mode-off)
  (spacemacs/toggle-transparency)
  (spacemacs/toggle-truncate-lines-off)
  ;; (spacemacs/toggle-which-key-off)
  (spacemacs/set-leader-keys "SPC" 'avy-goto-char-timer)
  (setq-default spacemacs-show-trailing-whitespace nil)


  ;; Misc
  (setq dotspacemacs-large-file-size 50)

  (setq fancy-battery-show-percentage nil)

  (setq avy-timeout-seconds 0.5)

  (indent-guide-global-mode t)

  (global-auto-revert-mode 1)

  (setq ahs-idle-timer 0)

  (auto-fill-mode nil)

  (setq backup-directory-alist `((".*" . ,temporary-file-directory)))

  (setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

  (setq mark-ring-max 128)

  (setq global-mark-ring-max 128)


  ;; Translations
  ;; Translate C-h to backspace, and M-h to C-h
  (keyboard-translate ?\C-h ?\C-?)
  (define-key key-translation-map (kbd "M-h") (kbd "C-h"))

  (modify-syntax-entry ?_ "w")

  ;; Version control
  (setq vc-follow-symlinks t)
  (setq-default git-enable-magit-svn-plugin t)
  (add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode)

  ;; Magit
  (with-eval-after-load 'magit
    (setq magit-revision-show-gravatars nil)
    )


  ;; Org
  (with-eval-after-load 'org
    (setq org-agenda-files (list "./org/work.org"))
    (setq org-clock-persist 'history)
    (org-clock-persistence-insinuate)
    )

  ;; Function arguments
  ;; bind evil-args text objects
  (define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
  (define-key evil-outer-text-objects-map "a" 'evil-outer-arg)

  ;; bind evil-forward/backward-args
  (define-key evil-normal-state-map "L" 'evil-forward-arg)
  (define-key evil-normal-state-map "H" 'evil-backward-arg)
  (define-key evil-motion-state-map "L" 'evil-forward-arg)
  (define-key evil-motion-state-map "H" 'evil-backward-arg)

  ;; bind evil-jump-out-args
  (define-key evil-normal-state-map "K" 'evil-jump-out-args)

  ;; Yasnippet
  (with-eval-after-load 'yasnippet
    (define-key yas-keymap (kbd "TAB") nil)
    (define-key yas-keymap (kbd "<tab>") nil)
    (define-key yas-keymap (kbd "<S-tab>") nil)
    (define-key yas-keymap (kbd "<backtab>") nil)
    (define-key yas-keymap (kbd "C-n") #'yas-next-field)
    (define-key yas-keymap (kbd "C-p") #'yas-prev-field)
    )


  ;; Realgud
  (require 'realgud)
  (with-eval-after-load 'realgud
    (define-key spacemacs-python-mode-map-prefix "dD" 'realgud:pdb)
    (define-key spacemacs-python-mode-map-prefix "db" 'realgud:cmd-break)
    (define-key spacemacs-python-mode-map-prefix "dx" 'realgud:cmd-clear)
    (define-key spacemacs-python-mode-map-prefix "dn" 'realgud:cmd-next-no-arg)
    (define-key spacemacs-python-mode-map-prefix "ds" 'realgud:cmd-step-no-arg)
    (define-key spacemacs-python-mode-map-prefix "df" 'realgud:cmd-finish)
    (define-key spacemacs-python-mode-map-prefix "dc" 'realgud:cmd-continue)
    (define-key spacemacs-python-mode-map-prefix "de" 'realgud:cmd-eval-region)
    (define-key spacemacs-python-mode-map-prefix "dr" 'realgud:cmd-restart)
    (define-key spacemacs-python-mode-map-prefix "dU" 'realgud:cmd-until)
    (define-key spacemacs-python-mode-map-prefix "du" 'realgud:cmd-older-frame)
    (define-key spacemacs-python-mode-map-prefix "dd" 'realgud:cmd-newer-frame)
    )


  ;; Company
  (global-company-mode t)
  (add-hook 'company-mode-hook
            (lambda()
              (defun my/downcase-first-char (&optional string)
                "Downcase only the first character of the input STRING."
                (when (and string (> (length string) 0))
                  (let ((first-char (substring string nil 1))
                        (rest-str   (substring string 1)))
                    (concat (downcase first-char) rest-str))))
              ))

  (with-eval-after-load 'company
    (setq company-transformers '(spacemacs//company-transformer-cancel company-sort-by-backend-importance))
    (setq company-dabbrev-downcase nil)
    )

  (with-eval-after-load 'company
    (setq company-minimum-prefix-length 1)
    (setq company-show-numbers t)
    (setq company-tooltip-limit 10)
    (setq company-auto-complete t)
    (setq company-idle-delay 0.4)
    (setq company-frontends (quote (company-pseudo-tooltip-frontend)))
    (setq company-auto-complete-chars nil)

    (define-key company-active-map (kbd "<S-tab>") nil)
    (define-key company-active-map (kbd "<tab>") nil)
    (define-key company-active-map (kbd "<backtab>") nil)
    (define-key company-active-map (kbd "M-n") nil)
    (define-key company-active-map (kbd "M-p") nil)
    (define-key company-active-map (kbd "C-n") #'company-select-next)
    (define-key company-active-map (kbd "C-p") #'company-select-previous)
    (define-key company-active-map (kbd "<tab>") 'helm-company)
    (remove-hook 'eshell-directory-change-hook
                 'spacemacs//toggle-shell-auto-completion-based-on-path)
    )

  ;; company-lsp
  (require 'company-lsp)
  (with-eval-after-load 'company-lsp
    (push 'company-lsp company-backends)
    (setq company-lsp-enable-recompletion t)
    )


  ;; Dabbrev
  (with-eval-after-load 'dabbrev
    (setq dabbrev-case-fold-search nil)
    (setq dabbrev-upcase-means-case-search t)
    )


  ;; Projectile
  (with-eval-after-load 'projectile
    (spacemacs/set-leader-keys "ps" 'helm-multi-swoop-projectile)
    (spacemacs/set-leader-keys "pz" 'helm-fzf-project-root)
    (spacemacs/set-leader-keys "ps" 'helm-multi-swoop-projectile)
    (spacemacs/set-leader-keys "pA" 'projectile-find-file-other-window)
    (setq projectile-enable-caching t)
    (setq projectile-generic-command "fd -0 -t f")
    (setq projectile-project-compilation-cmd "")
    (setq projectile-project-root-files-top-down-recurring
          (append '("compile_commands.json"
                    ".cquery"
                    ".ccls"
                    ".git")
                  projectile-project-root-files-top-down-recurring))
    )


  ;; Helm
  (with-eval-after-load 'helm
    ;; helm ag command
    (setq helm-grep-ag-command "ag --follow --line-numbers -S --hidden --color --nogroup %s %s %s")

    ;; Go to the opposite side of line from the end or beginning of line
    (setq helm-swoop-move-to-line-cycle t)

    ;; Optional face for line numbers
    ;; Face name is `helm-swoop-line-number-face`
    (setq helm-swoop-use-line-number-face t)

    ;; If you prefer fuzzy matching
    (setq helm-swoop-use-fuzzy-match t)

    (require 'helm-fzf)
    (spacemacs/set-leader-keys "fz" 'helm-fzf)
    (setq helm-buffer-max-length nil)
    (set-face-attribute 'helm-source-header nil :height 0.1)

    )


  ;; xref
  (with-eval-after-load 'xref
    (require 'helm-xref)
    (setq xref-show-xrefs-function 'helm-xref-show-xrefs)
    )


  ;; bm
  (require 'bm)
  (with-eval-after-load 'bm
    ;; helm-bm
    (require 'helm-bm)
    (spacemacs/set-leader-keys "fb" nil)
    (spacemacs/set-leader-keys "fbF" 'helm-filtered-bookmarks)
    (spacemacs/set-leader-keys "fbf" 'helm-bm)
    (spacemacs/set-leader-keys "fbt" 'bm-toggle)
    (spacemacs/set-leader-keys "fbn" 'bm-next)
    (spacemacs/set-leader-keys "fbp" 'bm-previous)
    )


  ;; google this
  (require 'google-this)
  (with-eval-after-load 'google-this
    (google-this-mode 1)
    (setq google-this-keybind nil)
    (spacemacs/set-leader-keys "sws" 'google-this-search)
    (spacemacs/set-leader-keys "swc" 'google-this-cpp-reference)
    )

  ;; Avy
  (setq avy-all-windows t)


  ;; Semantic
  (setq hlt-auto-faces-flag t)


  ;; Term
  (defun bb/setup-term-mode ()
    (evil-local-set-key 'insert (kbd "C-r") 'bb/send-C-r))

  (defun bb/send-C-r ()
    (interactive)
    (term-send-raw-string "\C-r"))

  (add-hook 'term-mode-hook 'bb/setup-term-mode)


  ;; Evil
  (setq evil-move-cursor-back nil)


  ;; Matlab/Octave
  (setq auto-mode-alist (cons '("\\.m$" . octave-mode) auto-mode-alist))

  ;; ClearCase helper functions
  (defun clearcase-checkout ()
    "Checkout file in current view with WI and no commentary"
    (interactive)
    (shell-command
     (format "cleartool co -c '' %s"
             (shell-quote-argument (buffer-file-name))))
    (revert-buffer t t t))

  (defun clearcase-uncheckout ()
    "Checkout file in current view with WI and no commentary"
    (interactive)
    (shell-command
     (format "cleartool unco %s"
             (shell-quote-argument (buffer-file-name))))
    (revert-buffer t t t))


  ;; Eshell
  (with-eval-after-load 'eshell
    (setq eshell-save-history-on-exit t)
    (setq eshell-history-size 10000)
    )

  ;; (defun get-clearcase-string ()
  ;;   "TODO: finish"
  ;;   (concat
  ;;    (shell-command-to-string "echo -n `echo ${CLEARCASE_ROOT} | cut -d/ -f3`")
  ;;    ": "
  ;;    (shell-command-to-string "echo -n `cleartool lsact -cact | cut -d\\\" -f2`")
  ;;    )
  ;;   )

  ;; (setq eshell-prompt-function (lambda ()
  ;;                                (concat
  ;;                                 (propertize (eshell/pwd) 'face `(:foreground "deep sky blue"))
  ;;                                 " "
  ;;                                 (propertize
  ;;                                  (get-clearcase-string)
  ;;                                  'face `(:foreground "dark orange")
  ;;                                  )
  ;;                                 "\n"
  ;;                                 "λ "
  ;;                                 )))

  (defun my-eshell-cmpl-initialize ()
    "Initialize the completions module."
    (set (make-local-variable 'pcomplete-command-completion-function) eshell-command-completion-function)
    (set (make-local-variable 'pcomplete-command-name-function) eshell-cmpl-command-name-function)
    (set (make-local-variable 'pcomplete-default-completion-function) eshell-default-completion-function)
    (set (make-local-variable 'pcomplete-parse-arguments-function) 'eshell-complete-parse-arguments)
    (set (make-local-variable 'pcomplete-file-ignore) eshell-cmpl-file-ignore)
    (set (make-local-variable 'pcomplete-dir-ignore) eshell-cmpl-dir-ignore)
    (set (make-local-variable 'pcomplete-ignore-case) eshell-cmpl-ignore-case)
    (set (make-local-variable 'pcomplete-autolist) eshell-cmpl-autolist)
    (set (make-local-variable 'pcomplete-suffix-list) eshell-cmpl-suffix-list)
    (set (make-local-variable 'pcomplete-recexact) eshell-cmpl-recexact)
    (set (make-local-variable 'pcomplete-man-function) eshell-cmpl-man-function)
    (set (make-local-variable 'pcomplete-compare-entry-function) eshell-cmpl-compare-entry-function)
    (set (make-local-variable 'pcomplete-expand-before-complete) eshell-cmpl-expand-before-complete)
    (set (make-local-variable 'pcomplete-cycle-completions) eshell-cmpl-cycle-completions)
    (set (make-local-variable 'pcomplete-cycle-cutoff-length) 0)
    (set (make-local-variable 'pcomplete-restore-window-delay) 0)
    (set (make-local-variable 'pcomplete-use-paring) eshell-cmpl-use-paring)
    ;; `comint-file-name-quote-list' should only be set after all the
    ;; load-hooks for any other extension modules have been run, which
    ;; is true at the time `eshell-mode-hook' is run
    (add-hook 'eshell-mode-hook
              (function
               (lambda ()
                 (set (make-local-variable 'comint-file-name-quote-list)
                      eshell-special-chars-outside-quoting))) nil t)
    (add-hook 'pcomplete-quote-arg-hook 'eshell-quote-backslash nil t)
    (define-key eshell-mode-map [(meta tab)] 'helm-lisp-completion-at-point)
    (define-key eshell-mode-map [(meta control ?i)] 'helm-lisp-completion-at-point)
    (define-key eshell-command-map [(meta ?h)] 'eshell-completion-help)
    (define-key eshell-command-map [tab] 'pcomplete-expand-and-complete)
    (define-key eshell-command-map [(control ?i)] 'pcomplete-expand-and-complete)
    (define-key eshell-command-map [space] 'pcomplete-expand)
    (define-key eshell-command-map [? ] 'pcomplete-expand)
    (define-key eshell-mode-map [tab] 'helm-esh-pcomplete)
    (define-key eshell-mode-map [(control ?i)] 'helm-esh-pcomplete)
    (add-hook 'completion-at-point-functions #'pcomplete-completions-at-point nil t)
    (define-key eshell-mode-map [(meta ??)] 'pcomplete-list))

  (add-hook 'eshell-mode-hook
            (lambda ()
              (setq company-backends-eshell-mode '((company-capf :with company-dabbrev company-files)))
              (my-eshell-cmpl-initialize)
              (define-key eshell-mode-map (kbd "M-l") 'helm-eshell-history)
              (setq helm-show-completion-display-function #'spacemacs//display-helm-window)
              (set (make-local-variable 'company-idle-delay) nil)
              ))

  (defun eshell/clear ()
    "Clear the eshell buffer."
    (let ((inhibit-read-only t))
      (erase-buffer)
      (eshell-send-input)))

  ;; eshell here
  (defun eshell-here ()
    "Opens up a new shell in the directory associated with the
    current buffer's file. The eshell is renamed to match that
    directory to make multiple eshell windows easier."
    (interactive)
    (let* ((height (/ (window-total-height) 2)))
      (split-window-vertically (- height))
      (other-window 1)
      (eshell "new")
      (insert (concat "ls"))
      (eshell-send-input)))

  (bind-key "C-!" 'eshell-here)


  ;; lsp
  (require 'lsp-mode)
  (with-eval-after-load 'lsp-mode
    (setq xref-prompt-for-identifier nil)
    )


  ;; lsp ui
  (with-eval-after-load 'lsp-ui
    (setq lsp-ui-sideline-ignore-duplicate t)
    (setq lsp-ui-peek-peek-height 60)
    (setq lsp-ui-peek-list-width 65)
    (setq lsp-ui-peek-always-show t)
    (setq lsp-ui-peek-fontify 'always)
    (add-hook 'lsp-mode-hook 'lsp-ui-mode)
    (add-hook 'c-mode-common-hook 'flycheck-mode)
    )


  ;; lsp imenu
  (require 'lsp-imenu)
  (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)


  ;; Gnus
  (setq gnus-secondary-select-methods
        '(
          (nnimap "transip"
                  (nnimap-address
                   "imap.transip.email")
                  (nnimap-server-port 993)
                  (nnimap-stream ssl))
          ))

  ;; Send email via Transip:
  (setq message-send-mail-function 'smtpmail-send-it
        smtpmail-default-smtp-server "smtp.transip.com")

  ;; Archive outgoing email in Sent folder on imap.transip.email:
  (setq gnus-message-archive-method '(nnimap "imap.transip.email")
        gnus-message-archive-group "[Transip]/Sent Mail")

  ;; set return email address based on incoming email address
  (setq gnus-posting-styles
        '(((header "to" "mail@oleksandrhalushko.nl")
           (address "mail@oleksandrhalushko.nl"))))

  ;; store email in ~/transip directory
  (setq nnml-directory "~/transip")
  (setq message-directory "~/transip")

  ;; Mu4e

  (setq mu4e-maildir "~/Maildir")

  (setq mu4e-drafts-folder "/TransIP/Drafts")
  (setq mu4e-sent-folder   "/TransIP/Sent")
  (setq mu4e-trash-folder  "/TransIP/Trash")
  ;; (setq mu4e-sent-messages-behavior 'delete)

  (setq mu4e-maildir-shortcuts
        '( ("/TransIP/INBOX"     . ?i)
           ("/TransIP/Sent"      . ?s)
           ("/TransIP/Trash"     . ?t)
           ("/TransIP/All Mail"  . ?a)
           ))

  ;; allow for updating mail using 'U' in the main view:
  (setq mu4e-get-mail-command "offlineimap")
  (setq
   user-mail-address "mail@oleksandrhalushko.nl"
   user-full-name  "Oleksand Halushko"
   mu4e-compose-signature
   (concat
    "Best regards\n"
    "Oleksandr Halushko"))

  ;; sending mail -- replace USERNAME with your gmail username
  ;; also, make sure the gnutls command line utils are installed
  ;; package 'gnutls-bin' in Debian/Ubuntu

  (require 'smtpmail)
  (setq message-send-mail-function 'smtpmail-send-it
        starttls-use-gnutls t
        smtpmail-starttls-credentials '(("smtp.transip.email" 465 nil nil))
        smtpmail-auth-credentials
        '(("smtp.transip.email" 465 "mail@oleksandrhalushko.nl" nil))
        smtpmail-default-smtp-server "smtp.transip.email"
        smtpmail-smtp-server "smtp.transip.email"
        smtpmail-smtp-service 465
        smtpmail-stream-type 'ssl)

  ;; olivetti mode
  ;; (add-hook 'text-mode-hook (lambda ()
  ;;                             (interactive)
  ;;                             (message "Olivetti text-mode-hook")
  ;;                             (olivetti-set-width 0.98)
  ;;                             (hidden-mode-line-mode)
  ;;                             (olivetti-mode 1)))
  ;; (add-hook 'prog-mode-hook (lambda ()
  ;;                             (interactive)
  ;;                             (message "Olivetti prog-mode-hook")
  ;;                             (olivetti-set-width 0.98)
  ;;                             (hidden-mode-line-mode)
  ;;                             (olivetti-mode 1)))

  ;; ddf mode
  ;; (require 'ddf-mode)

  ;; Rust
  (add-hook 'rust-mode-hook (lambda ()
                              (setq lsp-rust-rls-command '("rls"))
                              (require 'lsp-rust)
                              (add-hook 'rust-mode-hook #'lsp-rust-enable)
                              )
            )
  (add-hook 'rust-mode-hook #'flycheck-mode)


  ;; Crystal
  (add-hook 'crystal-mode-hook
            (lambda ()
              (setq flycheck-checker 'lsp-ui)
              (setq company-backends-crystal-mode '((company-lsp :with company-yasnippet company-dabbrev-code)))
              )
            )


  ;; Python
  (require 'pycoverage)
  (defun my-coverage ()
    (interactive)
    (when (derived-mode-p 'python-mode)
      (progn
        (linum-mode)
        (pycoverage-mode))))

  (require 'flycheck-mypy)
  (add-hook 'python-mode-hook 'flycheck-mode)

  (add-hook 'python-mode-hook (lambda ()
                                (setq company-backends-python-mode '((company-lsp :with company-yasnippet company-dabbrev-code)))
                                ))

  (setq python-shell-interpreter-args "-i")
  (setq python-shell-interpreter "python")
  ;; (setq python-shell-interpreter "ipython3")
  ;; (setq python-shell-interpreter-args "--simple-prompt -i")

  (require 'flycheck-pycheckers)
  (with-eval-after-load 'flycheck
    (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup)
    (setq flycheck-python-pylint-executable "pylint")
    (setq flycheck-display-errors-delay 1.0)
    )

  (defun my-python-checkers ()
    "Set flycheck checkers, set checker to lsp"
    (setq flycheck-pycheckers-checkers '(pylint pep8 flake8 pyflakes mypy2))
    (setq flycheck-checker 'lsp-ui))

  (add-hook 'python-mode-hook 'my-python-checkers)

  (defun my-python-edit-hook ()
    (setq flycheck-checker 'lsp-ui)
    (setq company-lsp-async t company-lsp-cache-candidates nil)
    (modify-syntax-entry ?_ "w")
    (define-key evil-normal-state-map (kbd "gd") 'xref-find-definitions)
    (define-key evil-normal-state-map (kbd "gr") 'xref-find-references)
    (define-key evil-normal-state-map (kbd "gR") 'lsp-rename)
    (define-key evil-normal-state-map (kbd "gu") 'evil-jump-backward)
    (define-key evil-normal-state-map (kbd "s") nil)
    (define-key evil-normal-state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
    (define-key evil-normal-state-map (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
    (define-key evil-normal-state-map (kbd "sr") 'lsp-ui-peek-find-references)
    (define-key evil-normal-state-map (kbd "su") 'lsp-ui-peek-jump-backward)
    )

  (add-hook 'python-mode-hook 'my-python-edit-hook)

  ;; anaconda
  (with-eval-after-load 'anaconda-mode
    (define-key spacemacs-python-mode-map-prefix (kbd "ah") 'anaconda-mode-show-doc)
    (define-key spacemacs-python-mode-map-prefix (kbd "ag") 'anaconda-mode-find-definitions)
    (define-key spacemacs-python-mode-map-prefix (kbd "ar") 'anaconda-mode-find-references)
    (define-key spacemacs-python-mode-map-prefix (kbd "aa") 'anaconda-mode-find-assignments)
    (define-key spacemacs-python-mode-map-prefix (kbd "au") 'anaconda-mode-go-back)
    )

  (with-eval-after-load 'anaconda-mode
    (remove-hook 'anaconda-mode-response-read-fail-hook
                 'anaconda-mode-show-unreadable-response))

  (require 'lsp-python)
  (add-hook 'python-mode-hook #'lsp-python-enable)

  (lsp-define-stdio-client lsp-python "python3"
                           #'projectile-project-root
                           '("pyls"))

  (add-hook 'lsp-mode-hook 'flycheck-mode)

  (defun lsp-set-cfg ()
    (let ((lsp-cfg `(:pyls (:configurationSources ("flake8")))))
      ;; TODO: check lsp--cur-workspace here to decide per server / project
      (lsp--set-configuration lsp-cfg)))

  (add-hook 'lsp-after-initialize-hook 'lsp-set-cfg)

  (add-hook 'python-mode-hook
            (lambda ()
              (lsp-python-enable)))


  ;; Elixir
  (require 'elixir-mode)
  (require 'lsp-mode)

  (add-to-list 'load-path "/opt/spacemacs-distro/.emacs.d/private/local/lsp-elixir")
  (require 'lsp-elixir)

  (add-hook 'elixir-mode-hook #'lsp-elixir-enable)

  (with-eval-after-load 'lsp-elixir
    (setq lsp-elixir-ls-command "sh")
    (setq lsp-elixir-ls-args '("/home/halushko/Projects/Elixir/elixir-ls-0.2.23/release/language_server.sh"))
    )

  (add-hook 'elixir-mode-hook
            (lambda ()
              (add-hook 'before-save-hook 'lsp-format-buffer)
              (setq flycheck-checker 'lsp-ui)
              (setq company-backends-elixir-mode '((company-lsp :with company-dabbrev-code)))
              ;; xref elixir
              (define-key spacemacs-elixir-mode-map-prefix (kbd "gd") 'xref-find-definitions)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "gD") 'xref-find-definitions-other-frame)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "gr") 'xref-find-references)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "gu") 'evil-jump-backward)
              ;; Lps ui peek
              (define-key spacemacs-elixir-mode-map-prefix (kbd "sd") 'lsp-ui-peek-find-definitions)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "sr") 'lsp-ui-peek-find-references)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "su") 'evil-jump-backward)
              ;; Dumb jump
              (define-key spacemacs-elixir-mode-map-prefix (kbd "dd") 'dumb-jump-go)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "dD") 'dumb-jump-go-other-window)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "dp") 'dumb-jump-go-prompt)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "du") 'dumb-jump-back)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "de") 'dumb-jump-go-prefer-external)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "dE") 'dumb-jump-go-prefer-external-other-window)
              (define-key spacemacs-elixir-mode-map-prefix (kbd "dc") 'dumb-jump-go-current-window)
              ))


  ;; C++ TODO: clean this
  ;; Clang-format
  (defun clang-format-bindings ()
    (define-key spacemacs-c-mode-map "=" 'clang-format-buffer)
    (define-key spacemacs-c-mode-map "," 'clang-format-region)
    (define-key spacemacs-c++-mode-map "=" 'clang-format-buffer)
    (define-key spacemacs-c++-mode-map "," 'clang-format-region)
    )

  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (add-hook 'c-mode-hook 'clang-format-bindings)

  (defun clang-format-for-filetype ()
    "Run clang-format if the current file has a file extensions in the filetypes list."
    (let ((filetypes '("c" "cpp" "h" "hpp")))
      (when (member (file-name-extension (buffer-file-name)) filetypes)
        (clang-format-buffer))))

  ;; (add-hook 'before-save-hook 'clang-format-for-filetype)
  (use-package modern-cpp-font-lock :ensure t)
  (add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)


  ;; cquery
  ;; (require 'cquery)

  ;; (with-eval-after-load 'cquery
  ;;   ;; (setq cquery-executable "/home/ohalushk/aux_home/App/cquery/build/release/bin/cquery")
  ;;   (setq cquery-executable "/home/ohalushk/aux_home/App/cquery-new/cquery/build/cquery")
  ;;   ;; (setq cquery-extra-args '("--log-file=/tmp/cq.log"))
  ;;   (setq cquery-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack" :completion (:detailedLabel t)))
  ;;   )

  ;; (defun cquery//enable ()
  ;;   (condition-case nil
  ;;       (lsp-cquery-enable)
  ;;     (user-error nil)))

  ;; (use-package cquery
  ;;   :commands lsp-cquery-enable
  ;;   :init (add-hook 'c-mode-common-hook #'cquery//enable))

  ;; (defun cquery/inheritance-base () (interactive) (cquery-inheritance-hierarchy nil))
  ;; (defun cquery/inheritance-derived () (interactive) (cquery-inheritance-hierarchy t))
  ;; (defun cquery/caller-hierarchy () (interactive) (cquery-call-hierarchy nil))
  ;; (defun cquery/callee-hierarchy () (interactive) (cquery-call-hierarchy t))
  ;; (defun cquery/base () (interactive) (lsp-ui-peek-find-custom 'base "$cquery/base"))
  ;; (defun cquery/callers () (interactive) (lsp-ui-peek-find-custom 'callers "$cquery/callers"))
  ;; (defun cquery/xref-callers () (interactive) (ccls-xref-find-custom "$cquery/callers"))
  ;; (defun cquery/xref-base () (interactive) (ccls-xref-find-custom "$cquery/base"))

  ;; (defun lsp-cquery-xref-navigation (state-map)
  ;;   "Setting projectile other file, xref and lsp keybindings"
  ;;   ;; go to keybindings
  ;;   (define-key state-map (kbd "ga") 'projectile-find-other-file)
  ;;   (define-key state-map (kbd "gA") 'projectile-find-other-file-other-window)
  ;;   (define-key state-map (kbd "gd") 'xref-find-definitions)
  ;;   (define-key state-map (kbd "gD") 'xref-find-definitions-other-frame)
  ;;   (define-key state-map (kbd "gr") 'xref-find-references)
  ;;   (define-key state-map (kbd "gu") 'evil-jump-backward)
  ;;   (define-key state-map (kbd "gR") 'lsp-rename)
  ;;   (define-key state-map (kbd "gx") 'lsp-execute-code-action)
  ;;   ;; see keybindings
  ;;   (define-key state-map (kbd "s") nil)
  ;;   (define-key state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
  ;;   (define-key state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
  ;;   (define-key state-map (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
  ;;   (define-key state-map (kbd "sr") 'lsp-ui-peek-find-references)
  ;;   (define-key state-map (kbd "sb") 'cquery/base)
  ;;   (define-key state-map (kbd "sc") 'cquery/callers)
  ;;   (define-key state-map (kbd "sCr") 'cquery/caller-hierarchy)
  ;;   (define-key state-map (kbd "sCe") 'cquery/callee-hierarchy)
  ;;   (define-key state-map (kbd "sib") 'cquery/inheritance-base)
  ;;   (define-key state-map (kbd "sid") 'cquery/inheritance-derived)
  ;;   (define-key state-map (kbd "sn") 'lsp-ui-find-next-reference)
  ;;   (define-key state-map (kbd "sp") 'lsp-ui-find-prev-reference)
  ;;   (define-key state-map (kbd "su") 'lsp-ui-peek-jump-backward)
  ;;   )

  ;; (defun my-c-cquery-keybindings (mode-map-prefix)
  ;;   "Setting projectile , xref, lsp, dumb and gtags"
  ;;   ;; dumb-jump
  ;;   (define-key mode-map-prefix (kbd "dg") 'dumb-jump-go)
  ;;   (define-key mode-map-prefix (kbd "dG") 'dumb-jump-go-other-window)
  ;;   (define-key mode-map-prefix (kbd "dp") 'dumb-jump-go-prompt)
  ;;   (define-key mode-map-prefix (kbd "du") 'dumb-jump-back)
  ;;   (define-key mode-map-prefix (kbd "de") 'dumb-jump-go-prefer-external)
  ;;   (define-key mode-map-prefix (kbd "dE") 'dumb-jump-go-prefer-external-other-window)
  ;;   (define-key mode-map-prefix (kbd "dc") 'dumb-jump-go-current-window)
  ;;   (define-key mode-map-prefix (kbd "dq") 'dumb-jump-quick-look)
  ;;   ;; gtags
  ;;   (define-key mode-map-prefix (kbd "td") 'helm-gtags-dwim)
  ;;   (define-key mode-map-prefix (kbd "tD") 'helm-gtags-dwim-other-window)
  ;;   (define-key mode-map-prefix (kbd "tr") 'helm-gtags-dwim)
  ;;   (define-key mode-map-prefix (kbd "tu") 'helm-gtags-previous-history)
  ;;   (define-key mode-map-prefix (kbd "tU") 'helm-gtags-next-history)
  ;;   (define-key mode-map-prefix (kbd "te") 'helm-gtags-parse-file)
  ;;   (define-key mode-map-prefix (kbd "ts") 'helm-gtags-show-stack)
  ;;   (define-key mode-map-prefix (kbd "tn") 'helm-gtags-next-history)
  ;;   (define-key mode-map-prefix (kbd "tp") 'helm-gtags-previous-history)
  ;;   (define-key mode-map-prefix (kbd "tf") 'helm-gtags-tags-in-this-function)
  ;;   (define-key mode-map-prefix (kbd "ts") 'helm-gtags-find-files)
  ;;   ;; reuse keymap
  ;;   (lsp-cquery-xref-navigation mode-map-prefix)
  ;;   (lsp-cquery-xref-navigation evil-normal-state-map)
  ;;   )

  ;; (add-hook 'c-mode-hook (lambda () (my-c-cquery-keybindings spacemacs-c-mode-map-prefix) ))
  ;; (add-hook 'c++-mode-hook (lambda () (my-c-cquery-keybindings spacemacs-c++-mode-map-prefix) ))


  ;; ccls
  (require 'ccls)

  (defun ccls//enable ()
    (condition-case nil
        (lsp-ccls-enable)
      (user-error nil))
    )

  (with-eval-after-load 'ccls
    ;; (setq ccls-executable "/home/halushko/Projects/ccls/build/ccls")
    ;; (setq ccls-executable "/home/halushko/bin/my-ccls")
    ;; (setq ccls-executable "/home/halushko/Projects/ccls/ccls") ;; Works
    ;; (setq ccls-executable "/home/halushko/Projects/ccls/build-0.20180924/Release/ccls")
    (setq ccls-executable "/home/halushko/Projects/ccls/build-0.20181010/Release/ccls")
    (setq ccls-extra-args '("--log-file=/tmp/cq.log"))
    (setq ccls-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack" :completion (:detailedLabel t)))
    ;; (setq ccls-sem-highlight-method 'overlay)
    (setq ccls-sem-highlight-method nil)
    )

  (use-package ccls
    :commands lsp-ccls-enable
    :init
    (add-hook 'c++-mode-hook 'ccls//enable)
    (add-hook 'c-mode-hook 'ccls//enable)
    )

  (defun ccls/member (kind)
    (interactive)
    (lsp-ui-peek-find-custom 'member "$ccls/member" `(:kind ,kind)))

  (defun ccls/member-type ()
    (interactive)
    (ccls/member 2))

  (defun ccls/member-func ()
    (interactive)
    (ccls/member 3))

  (defun ccls/member-var ()
    (interactive)
    (ccls/member 0))

  (defun ccls/down ()
    (interactive)
    (ccls-navigate "D"))

  (defun ccls/up ()
    (interactive)
    (ccls-navigate "U"))

  (defun ccls/left ()
    (interactive)
    (ccls-navigate "L"))

  (defun ccls/right ()
    (interactive)
    (ccls-navigate "R"))
  
  (defun ccls/vars (kind) (lsp-ui-peek-find-custom 'vars "$ccls/vars" `(:kind ,kind)))
  ;; (ccls/vars 3) ;; field or local variable
  ;; (ccls/vars 1) ;; field
  ;; (ccls/vars 4) ;; parameter

  (defun ccls/field-or-local-variable ()
    (interactive)
    (ccls/vars 3))

  (defun ccls/field ()
    (interactive)
    (ccls/vars 1))

  (defun ccls/parameter ()
    (interactive)
    (ccls/vars 4))

  (defun ccls/callee ()
    (interactive)
    (lsp-ui-peek-find-custom 'callee "$ccls/call" '(:callee t)))

  (defun ccls/caller ()
    (interactive)
    (lsp-ui-peek-find-custom 'caller "$ccls/call"))

  (require 'lsp-ui)
  (defun ccls/base () (interactive) (lsp-ui-peek-find-custom 'base "$ccls/base"))
  (defun ccls/callees () (interactive) (ccls-call-hierarchy t))
  (defun ccls/callers () (interactive) (ccls-call-hierarchy nil))

  (defun ccls/vars (kind) (lsp-ui-peek-find-custom 'vars "$ccls/vars" `(:kind ,kind)))

  (defun ccls/xref-base () (interactive) (ccls-xref-find-custom "$ccls/base"))
  (defun ccls/xref-callers () (interactive) (ccls-xref-find-custom "$ccls/callers"))
  (defun ccls/bases ()
    (interactive)
    (ccls-inheritance-hierarchy nil))

  (defun ccls/derived ()
    (interactive)
    (ccls-inheritance-hierarchy t))

  (defun ccls/members ()
    (interactive)
    (lsp-ui-peek-find-custom 'base "$ccls/memberHierarchy"
                             (append (lsp--text-document-position-params) '(:flat t))))
  ;; The meaning of :role corresponds to https://github.com/maskray/ccls/blob/master/src/symbol.h
  ;; References w/ Role::Address bit (e.g. variables explicitly being taken addresses)
  (defun ccls/references-address ()
    (interactive)
    (lsp-ui-peek-find-custom
     'address "textDocument/references"
     (plist-put (lsp--text-document-position-params) :context
                '(:role 128))))

  ;; References w/ Role::Dynamic bit (macro expansions)
  (defun ccls/references-macro ()
    (interactive)
    (lsp-ui-peek-find-custom
     'address "textDocument/references"
     (plist-put (lsp--text-document-position-params) :context
                '(:role 64))))

  ;; References w/o Role::Call bit (e.g. where functions are taken addresses)
  (defun ccls/references-not-call ()
    (interactive)
    (lsp-ui-peek-find-custom
     'address "textDocument/references"
     (plist-put (lsp--text-document-position-params) :context
                '(:excludeRole 32))))

  ;; References w/ Role::Read
  (defun ccls/references-read ()
    (interactive)
    (lsp-ui-peek-find-custom
     'read "textDocument/references"
     (plist-put (lsp--text-document-position-params) :context
                '(:role 8))))

  ;; References w/ Role::Write
  (defun ccls/references-write ()
    (interactive)
    (lsp-ui-peek-find-custom
     'write "textDocument/references"
     (plist-put (lsp--text-document-position-params) :context
                '(:role 16))))

  ;; xref-find-apropos (workspace/symbol)

  (defun my/highlight-pattern-in-text (pattern line)
    (when (> (length pattern) 0)
      (let ((i 0))
        (while (string-match pattern line i)
          (setq i (match-end 0))
          (add-face-text-property (match-beginning 0) (match-end 0) 'isearch t line)
          )
        line)))

  (with-eval-after-load 'lsp-methods
  ;;; Override
    ;; This deviated from the original in that it highlights pattern appeared in symbol
    (defun lsp--symbol-information-to-xref (pattern symbol)
      "Return a `xref-item' from SYMBOL information."
      (let* ((location (gethash "location" symbol))
             (uri (gethash "uri" location))
             (range (gethash "range" location))
             (start (gethash "start" range))
             (name (gethash "name" symbol)))
        (xref-make (format "[%s] %s"
                           (alist-get (gethash "kind" symbol) lsp--symbol-kind)
                           (my/highlight-pattern-in-text (regexp-quote pattern) name))
                   (xref-make-file-location (string-remove-prefix "file://" uri)
                                            (1+ (gethash "line" start))
                                            (gethash "character" start)))))

    (cl-defmethod xref-backend-apropos ((_backend (eql xref-lsp)) pattern)
      (let ((symbols (lsp--send-request (lsp--make-request
                                         "workspace/symbol"
                                         `(:query ,pattern)))))
        (mapcar (lambda (x) (lsp--symbol-information-to-xref pattern x)) symbols)))
    )

  (add-hook 'c++-mode-hook (lambda ()
                             (push '(?< . ("< " . " >")) evil-surround-pairs-alist)))

  (defun my-c-settings ()
    (setq flycheck-checker 'lsp-ui)
    ;; (setq company-lsp-async t company-lsp-cache-candidates nil)
    (setq company-transformers nil company-lsp-async t company-lsp-cache-candidates nil)
    ;; (setq company-backends-c-mode-common '((company-lsp :with company-yasnippet company-dabbrev-code)))
    (setq company-backends-c-mode-common '((company-lsp)))
    (modify-syntax-entry ?_ "w")
    )

  (defun lsp-ccls-xref-navigation (state-map)
    "Setting projectile other file, xref and lsp keybindings"
    ;; go to keybindings
    (define-key state-map (kbd "ga") 'projectile-find-other-file)
    (define-key state-map (kbd "gA") 'projectile-find-other-file-other-window)
    (define-key state-map (kbd "gd") 'xref-find-definitions)
    (define-key state-map (kbd "gD") 'xref-find-definitions-other-frame)
    (define-key state-map (kbd "gr") 'xref-find-references)
    (define-key state-map (kbd "gu") 'evil-jump-backward)
    (define-key state-map (kbd "gR") 'lsp-rename)
    (define-key state-map (kbd "gx") 'lsp-execute-code-action)
    ;; see keybindings
    (define-key state-map (kbd "s") nil)
    (define-key state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
    (define-key state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
    (define-key state-map (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
    (define-key state-map (kbd "sb") 'ccls/base)
    (define-key state-map (kbd "sc") 'ccls/callee)
    (define-key state-map (kbd "sC") 'ccls/caller)
    (define-key state-map (kbd "shc") 'ccls/callees)
    (define-key state-map (kbd "shC") 'ccls/callers)
    (define-key state-map (kbd "shb") 'ccls/bases)
    (define-key state-map (kbd "shd") 'ccls/derived)
    (define-key state-map (kbd "shm") 'ccls-member-hierarchy)
    (define-key state-map (kbd "sR") 'lsp-ui-peek-find-references)
    (define-key state-map (kbd "sm") 'ccls/references-macro)
    (define-key state-map (kbd "sa") 'ccls/references-address)
    (define-key state-map (kbd "sr") 'ccls/references-read)
    (define-key state-map (kbd "sw") 'ccls/references-write)
    (define-key state-map (kbd "sg") 'ccls/references-not-call)
    (define-key state-map (kbd "sn") 'lsp-ui-find-next-reference)
    (define-key state-map (kbd "sp") 'lsp-ui-find-prev-reference)
    (define-key state-map (kbd "su") 'lsp-ui-peek-jump-backward)
    )

  (defun my-c-ccls-keybindings (mode-map-prefix)
    "Setting projectile , xref, lsp, dumb and gtags"
    ;; dumb-jump
    (define-key mode-map-prefix (kbd "dg") 'dumb-jump-go)
    (define-key mode-map-prefix (kbd "dG") 'dumb-jump-go-other-window)
    (define-key mode-map-prefix (kbd "dp") 'dumb-jump-go-prompt)
    (define-key mode-map-prefix (kbd "du") 'dumb-jump-back)
    (define-key mode-map-prefix (kbd "de") 'dumb-jump-go-prefer-external)
    (define-key mode-map-prefix (kbd "dE") 'dumb-jump-go-prefer-external-other-window)
    (define-key mode-map-prefix (kbd "dc") 'dumb-jump-go-current-window)
    (define-key mode-map-prefix (kbd "dq") 'dumb-jump-quick-look)
    ;; gtags
    (define-key mode-map-prefix (kbd "td") 'helm-gtags-dwim)
    (define-key mode-map-prefix (kbd "tD") 'helm-gtags-dwim-other-window)
    (define-key mode-map-prefix (kbd "tr") 'helm-gtags-dwim)
    (define-key mode-map-prefix (kbd "tu") 'helm-gtags-previous-history)
    (define-key mode-map-prefix (kbd "tU") 'helm-gtags-next-history)
    (define-key mode-map-prefix (kbd "te") 'helm-gtags-parse-file)
    (define-key mode-map-prefix (kbd "ts") 'helm-gtags-show-stack)
    (define-key mode-map-prefix (kbd "tn") 'helm-gtags-next-history)
    (define-key mode-map-prefix (kbd "tp") 'helm-gtags-previous-history)
    (define-key mode-map-prefix (kbd "tf") 'helm-gtags-tags-in-this-function)
    (define-key mode-map-prefix (kbd "ts") 'helm-gtags-find-files)
    ;; reuse keymap
    (lsp-ccls-xref-navigation mode-map-prefix)
    (lsp-ccls-xref-navigation evil-normal-state-map)
    )

  (add-hook 'c-mode-hook (lambda () (my-c-ccls-keybindings spacemacs-c-mode-map-prefix) ))
  (add-hook 'c++-mode-hook (lambda () (my-c-ccls-keybindings spacemacs-c++-mode-map-prefix) ))

  (add-hook 'c++-mode-hook 'my-c-settings)
  (add-hook 'c-mode-hook 'my-c-settings)

  )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 116 :width normal))))
 '(lsp-face-highlight-read ((t (:background "OliveDrab4"))))
 '(lsp-face-highlight-write ((t (:background "firebrick")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-all-windows t t)
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(company-idle-delay nil t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(display-time-mode t)
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-color "#383838" t)
 '(fzf/window-height 50)
 '(helm-buffer-max-length nil)
 '(helm-display-header-line nil t)
 '(helm-eshell-fuzzy-match t)
 '(helm-grep-ag-command
   "rg --color=always --smart-case --no-heading --line-number %s %s %s")
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-sideline-delay 2.0)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (org-jira with-editor magit-popup anaconda-mode highlight rust-mode bm mu4e-maildirs-extension mu4e-alert ht autothemer pythonic realgud hydra yasnippet flyspell-correct avy multiple-cursors git-commit graphql olivetti evil treepy company markdown-mode dash sesman iedit clojure-mode smartparens crystal-mode lsp-mode alert helm helm-core cider org-plus-contrib flycheck-pycheckers ccls flycheck projectile magit zenburn-theme zen-and-art-theme yasnippet-snippets yapfify yaml-mode xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights vimrc-mode vi-tilde-fringe uuidgen use-package unfill underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toml-mode toc-org thrift tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stan-mode spaceline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode scad-mode sass-mode reverse-theme restart-emacs rebecca-theme realgud-pry rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme racer qml-mode pyvenv pytest pyenv-mode pycoverage py-isort purple-haze-theme pug-mode professional-theme popwin play-crystal planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pdf-tools pcre2el paradox ox-gfm orgit organic-green-theme org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-elixir ob-crystal noflet noctilux-theme neotree naquadah-theme mwim mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme modern-cpp-font-lock mmm-mode minimal-theme matlab-mode material-theme markdown-toc majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lsp-ui lsp-python lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme julia-mode json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme inf-crystal indent-guide ibuffer-projectile hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-xref helm-tramp helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gtags helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-bm helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate google-this golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ ghub gh-md ggtags gandalf-theme fzf fuzzy flyspell-correct-helm flycheck-rust flycheck-pos-tip flycheck-mypy flycheck-mix flycheck-crystal flycheck-credo flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator fasd farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu espresso-theme eshell-z eshell-prompt-extras esh-help erlang ensime emmet-mode elisp-slime-nav dumb-jump dracula-theme django-theme disaster diminish diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme dactyl-mode cython-mode cyberpunk-theme csv-mode cquery company-web company-tern company-statistics company-shell company-lsp company-c-headers company-auctex company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmake-mode clues-theme clojure-snippets clj-refactor clean-aindent-mode clang-format cider-eval-sexp-fu cherry-blossom-theme cargo busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk arduino-mode apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme ameba alect-themes alchemist aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(powerline-default-separator (quote alternate))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-debug-info t)
 '(smtpmail-debug-verb t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
