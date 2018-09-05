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
      org-projectile-file "TODOs.org"
      )
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
      :variables gtags-enable-by-default t
      )
     javascript
     ;;ycmd
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
                                                    helm-xref lsp-ui fzf
                                                    yasnippet-snippets
                                                    helm-bm
                                                    bm
                                                    google-this
                                                    )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
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
                         zenburn
                         monokai
                         spacemacs-dark
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

  (add-to-list 'load-path "~/.emacs.d/private/local")
  (setq gc-cons-threshold 8000000)

  (defun my-minibuffer-setup-hook ()
    (setq helm-buffer-max-length nil)
    (set-face-attribute 'helm-source-header nil :height 0.1)
    (setq gc-cons-threshold most-positive-fixnum))

  (defun my-minibuffer-exit-hook ()
    (setq gc-cons-threshold 9000000))

  (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
  (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

  (defun clang-format-bindings ()
    (define-key spacemacs-c-mode-map "=" 'clang-format-buffer)
    (define-key spacemacs-c-mode-map "," 'clang-format-region)
    (define-key spacemacs-c++-mode-map "=" 'clang-format-buffer)
    (define-key spacemacs-c++-mode-map "," 'clang-format-region)
    )

  (add-hook 'c++-mode-hook 'clang-format-bindings)
  (add-hook 'c-mode-hook 'clang-format-bindings)

  ;; Org
  (eval-after-load 'org
    '(progn
       (setq org-clock-persist 'history)
       (org-clock-persistence-insinuate)
       )
    )

  (require 'realgud)
  (eval-after-load 'realgud
    '(progn
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
    )

  (require 'pycoverage)
  (defun my-coverage ()
    (interactive)
    (when (derived-mode-p 'python-mode)
      (progn
        (linum-mode)
        (pycoverage-mode))))

  (require 'flycheck-mypy)
  (add-hook 'python-mode-hook 'flycheck-mode)

  (setq ahs-idle-timer 0)
  (setq vc-follow-symlinks t)
  ;; (spacemacs/toggle-transparency)
  ;; (spacemacs/toggle-vi-tilde-fringe-off)
  (spacemacs/toggle-mode-line-battery-on)
  (spacemacs/toggle-display-time-on)
  (spacemacs/toggle-truncate-lines-off)
  (spacemacs/toggle-indent-guide-on)
  ;; (spacemacs/toggle-golden-ratio-on)
  ;; (spacemacs/toggle-camel-case-motion-globally-on)
  (spacemacs/toggle-syntax-checking-on)
  (spacemacs/toggle-auto-fill-mode-off)
  (spacemacs/toggle-transparency)
  ;; (spacemacs/toggle-which-key-off)
  (spacemacs/set-leader-keys "SPC" 'avy-goto-char-timer)
  (setq avy-timeout-seconds 0.5)
  (global-auto-revert-mode 1)

  (setq auto-mode-alist (cons '("\\.m$" . octave-mode) auto-mode-alist))
  (setenv "NO_PROXY" "127.0.0.1")
  (setenv "no_proxy" "127.0.0.1")
  (setq dotspacemacs-large-file-size 50)
  (indent-guide-global-mode t)
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

  (setq company-dabbrev-downcase nil)
  (setq dabbrev-case-fold-search nil)
  (setq dabbrev-upcase-means-case-search t)

  (setq helm-grep-ag-command "ag --follow --line-numbers -S --hidden --color --nogroup %s %s %s")
  ;; Avy settings
  (setq avy-all-windows t)

  ;; Semantic
  (setq hlt-auto-faces-flag t)

  ;; Term
  (defun bb/setup-term-mode ()
    (evil-local-set-key 'insert (kbd "C-r") 'bb/send-C-r))

  (auto-fill-mode nil)

  (defun bb/send-C-r ()
    (interactive)
    (term-send-raw-string "\C-r"))

  (add-hook 'term-mode-hook 'bb/setup-term-mode)

  (with-eval-after-load 'ggtags
    ;; Remove old key c++
    (define-key spacemacs-c++-mode-map-prefix (kbd "gd") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gD") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gc") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gl") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gn") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gp") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gr") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gf") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gi") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gs") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gS") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gu") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gR") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gG") nil)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gg") nil)
    ;; Remove old key elixir
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gd") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gD") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gc") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gl") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gn") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gp") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gr") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gf") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gi") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gs") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gS") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gu") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gR") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gG") nil)
    (define-key spacemacs-elixir-mode-map-prefix (kbd "gg") nil)
    ;; New keybindings for dumb jump elixir mode

    ;; New keybindings c
    ;; ycmd
    ;; C
    ;; (define-key spacemacs-c-mode-map-prefix (kbd "yg") 'ycmd-goto)
    ;; (define-key spacemacs-c-mode-map-prefix (kbd "yi") 'ycmd-goto-imprecise)
    ;; (define-key spacemacs-c-mode-map-prefix (kbd "yT") 'ycmd-get-type)
    ;; (define-key spacemacs-c-mode-map-prefix (kbd "yd") 'ycmd-goto-definition)
    ;; (define-key spacemacs-c-mode-map-prefix (kbd "yD") 'ycmd-goto-declaration)
    ;; C++
    ;; (define-key spacemacs-c++-mode-map-prefix (kbd "yg") 'ycmd-goto)
    ;; (define-key spacemacs-c++-mode-map-prefix (kbd "yi") 'ycmd-goto-imprecise)
    ;; (define-key spacemacs-c++-mode-map-prefix (kbd "yT") 'ycmd-get-type)
    ;; (define-key spacemacs-c++-mode-map-prefix (kbd "yd") 'ycmd-goto-definition)
    ;; (define-key spacemacs-c++-mode-map-prefix (kbd "yD") 'ycmd-goto-declaration)
    )

  (eval-after-load 'projectile
    '(progn
       (spacemacs/set-leader-keys "ps" 'helm-multi-swoop-projectile)
       (spacemacs/set-leader-keys "pz" 'helm-fzf-project-root)
       (define-key evil-normal-state-map (kbd "gA") 'projectile-find-other-file)
       (setq projectile-enable-caching t)
       (setq projectile-generic-command "fd -0 -t f")
       (setq projectile-project-compilation-cmd "")
       )
    )

  ;; Go to the opposite side of line from the end or beginning of line
  (setq helm-swoop-move-to-line-cycle t)

  ;; Optional face for line numbers
  ;; Face name is `helm-swoop-line-number-face`
  (setq helm-swoop-use-line-number-face t)

  ;; If you prefer fuzzy matching
  (setq helm-swoop-use-fuzzy-match t)

  (eval-after-load 'company
    '(progn
       (setq company-minimum-prefix-length 1)
       (setq company-show-numbers t)
       (setq company-tooltip-limit 10)
       (setq company-auto-complete t)
       (setq company-idle-delay 0.4)
       (setq company-frontends (quote (company-pseudo-tooltip-frontend)))
       (setq company-auto-complete-chars nil)

       ;; (backtab . spacemacs//company-complete-common-or-cycle-backward)
       ;; (S-tab . spacemacs//company-complete-common-or-cycle-backward)
       (define-key company-active-map (kbd "<S-tab>") nil)
       (define-key company-active-map (kbd "<tab>") nil)
       (define-key company-active-map (kbd "<backtab>") nil)
       (define-key company-active-map (kbd "M-n") nil)
       (define-key company-active-map (kbd "M-p") nil)
       (define-key company-active-map (kbd "C-n") #'company-select-next)
       (define-key company-active-map (kbd "C-p") #'company-select-previous)
       ;; (define-key company-mode-map (kbd "<tab>") 'helm-company)
       (define-key company-active-map (kbd "<tab>") 'helm-company)
       (remove-hook 'eshell-directory-change-hook
                    'spacemacs//toggle-shell-auto-completion-based-on-path)
       )
    )

  ;; translate C-h to backspace, and M-h to C-h
  (keyboard-translate ?\C-h ?\C-?)
  (define-key key-translation-map (kbd "M-h") (kbd "C-h"))

  ;; This snippet allows you to run clang-format before saving
  ;; given the current file as the correct filetype.
  ;; This relies on the c-c++ layer being enabled.
  (defun clang-format-for-filetype ()
    "Run clang-format if the current file has a file extensions in the filetypes list."
    (let ((filetypes '("c" "cpp" "h" "hpp")))
      (when (member (file-name-extension (buffer-file-name)) filetypes)
        (clang-format-buffer))))

  ;; See http://www.gnu.org/software/emacs/manual/html_node/emacs/Hooks.html for
  ;; what this line means
  ;; (add-hook 'before-save-hook 'clang-format-for-filetype)
  (setq-default git-enable-magit-svn-plugin t)
  (add-hook 'magit-mode-hook 'turn-off-evil-snipe-override-mode)

  ;; (eval-after-load 'evil
  ;;   '(progn
  ;;      (defun my-save-if-bufferfilename ()
  ;;        (if (buffer-file-name)
  ;;            (progn (save-buffer) )
  ;;          (message "no file is associated to this buffer: do nothing")
  ;;          )
  ;;        )
  ;;      (add-hook 'hybrid-mode-insert-state-exit-hook 'my-save-if-bufferfilename)
  ;;      )
  ;;   )

  ;; Python
  ;; http://pythoscope.org/
  (setq python-shell-interpreter-args "-i")
  (setq python-shell-interpreter "python")

  (require 'flycheck-pycheckers)
  (with-eval-after-load 'flycheck
    (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup)
    (setq flycheck-python-pylint-executable "pylint")
    (setq flycheck-display-errors-delay 1.0)
    )

  (add-hook 'python-mode-hook (lambda ()
                                (setq flycheck-pycheckers-checkers '(pylint pep8 flake8 pyflakes mypy2))
                                (setq flycheck-checker 'lsp-ui)
                                )
            )

  ;; (define-key spacemacs-elixir-mode-map-prefix (kbd "d") 'alchemist-goto-definition-at-point)


  (add-hook 'elixir-mode-hook
            (lambda ()
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

  (eval-after-load 'anaconda-mode
    '(progn
       (define-key spacemacs-python-mode-map-prefix (kbd "ah") 'anaconda-mode-show-doc)
       (define-key spacemacs-python-mode-map-prefix (kbd "ag") 'anaconda-mode-find-definitions)
       (define-key spacemacs-python-mode-map-prefix (kbd "ar") 'anaconda-mode-find-references)
       (define-key spacemacs-python-mode-map-prefix (kbd "aa") 'anaconda-mode-find-assignments)
       (define-key spacemacs-python-mode-map-prefix (kbd "au") 'anaconda-mode-go-back)
       )
    )

  (with-eval-after-load 'anaconda-mode
    (remove-hook 'anaconda-mode-response-read-fail-hook
                 'anaconda-mode-show-unreadable-response))

  (with-eval-after-load 'magit
    (setq magit-revision-show-gravatars nil)
    )

  (eval-after-load 'yasnippet
    '(progn
       (define-key yas-keymap (kbd "TAB") nil)
       (define-key yas-keymap (kbd "<tab>") nil)
       (define-key yas-keymap (kbd "<S-tab>") nil)
       (define-key yas-keymap (kbd "<backtab>") nil)
       (define-key yas-keymap (kbd "C-n") #'yas-next-field)
       (define-key yas-keymap (kbd "C-p") #'yas-prev-field)
       )
    )

  (setq company-backends-python-mode '((company-lsp :with company-yasnippet company-dabbrev-code)))

  (setq company-backends-c-mode-common '((company-lsp :with company-dabbrev-code)))

  (setq company-transformers '(spacemacs//company-transformer-cancel
                               company-sort-by-backend-importance))

  ;; pip install --user rope ropemacs
  ;; pip install -e "git+https://github.com/pinard/Pymacs.git#egg=Pymacs" --user
  ;; (add-to-list 'load-path "~/.emacs.d/src/pymacs")
  ;; (require 'pymacs)
  ;; (setq pymacs-python-command "python")
  ;; (pymacs-load "ropemacs" "rope-")
  ;; (setq ropemacs-confirm-saving t)

  ;; (eval-after-load 'ropemacs
  ;;   '(progn
  ;;      (define-key spacemacs-python-mode-map-prefix "ro" 'rope-open-project)
  ;;      (define-key spacemacs-python-mode-map-prefix "rv" 'rope-extract-variable)
  ;;      (define-key spacemacs-python-mode-map-prefix "rm" 'rope-extract-method)
  ;;      (define-key spacemacs-python-mode-map-prefix "rr" 'rope-rename)
  ;;      (define-key spacemacs-python-mode-map-prefix "ri" 'rope-inline)
  ;;      (define-key spacemacs-python-mode-map-prefix "rcf" 'rope-cleate-file)
  ;;      )
  ;;   )
  (setq backup-directory-alist `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

  (eval-after-load 'helm
    '(progn
       (spacemacs/set-leader-keys "fz" 'helm-fzf)
       (setq helm-buffer-max-length nil)
       ;; (setq helm-display-header-line nil)
       (set-face-attribute 'helm-source-header nil :height 0.1)
       ;; (setq helm-candidate-number-limit 100)
       )
    )

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

  (add-hook 'elixir-mode-hook (lambda () (add-hook 'before-save-hook 'lsp-format-buffer)))

  (setq org-agenda-files (list
                          "./org/work.org"))

  (setq evil-move-cursor-back nil)
  (use-package modern-cpp-font-lock :ensure t)
  (add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

  (setq fancy-battery-show-percentage nil)

  ;; eshell
  (with-eval-after-load 'eshell
    (setq eshell-save-history-on-exit t)
    (setq eshell-history-size 10000)
    )

  (defun update-code-navigation-c ()
    (define-key evil-normal-state-map (kbd "gd") 'xref-find-definitions)
    (define-key evil-normal-state-map (kbd "gr") 'xref-find-references)
    (define-key evil-normal-state-map (kbd "s") nil)
    (define-key evil-normal-state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
    (define-key evil-normal-state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
    (define-key evil-normal-state-map (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
    (define-key evil-normal-state-map (kbd "sb") 'ccls/base)
    (define-key evil-normal-state-map (kbd "sc") 'ccls/callers)
    (define-key evil-normal-state-map (kbd "sR") 'lsp-ui-peek-find-references)
    (define-key evil-normal-state-map (kbd "sm") 'ccls/references-macro)
    (define-key evil-normal-state-map (kbd "sa") 'ccls/references-address)
    (define-key evil-normal-state-map (kbd "sr") 'ccls/references-read)
    (define-key evil-normal-state-map (kbd "sw") 'ccls/references-write)
    (define-key evil-normal-state-map (kbd "sn") 'ccls/references-not-call)
    (define-key evil-normal-state-map (kbd "su") 'evil-jump-backward)
    (define-key evil-normal-state-map (kbd "gR") 'lsp-rename)
    (define-key evil-normal-state-map (kbd "gu") 'evil-jump-backward)
    (define-key evil-normal-state-map (kbd "ga") 'projectile-find-other-file)
    (define-key evil-normal-state-map (kbd "gA") 'projectile-find-other-file-other-window)
    )

  (add-hook 'c-mode-hook #'update-code-navigation-c)
  (add-hook 'c++-mode-hook #'update-code-navigation-c)

  ;; My eshell-initialize
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

  ;; lsp-mode
  (require 'lsp-mode)
  (require 'lsp-python)
  (add-hook 'python-mode-hook #'lsp-python-enable)

  ;; lsp-python
  (lsp-define-stdio-client lsp-python "python3"
                           #'projectile-project-root
                           '("pyls"))

  (add-hook 'lsp-mode-hook 'flycheck-mode)

  (defun lsp-set-cfg ()
    (let ((lsp-cfg `(:pyls (:configurationSources ("flake8")))))
      ;; TODO: check lsp--cur-workspace here to decide per server / project
      (lsp--set-configuration lsp-cfg)))

  (add-hook 'lsp-after-initialize-hook 'lsp-set-cfg)

  ;; lsp-ui
  (require 'lsp-ui)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  (setq lsp-ui-sideline-ignore-duplicate t)

  (add-hook 'python-mode-hook
            (lambda ()
              (lsp-python-enable)))

  ;; company-lsp
  (require 'company-lsp)
  (push 'company-lsp company-backends)
  (setq company-lsp-enable-recompletion t)

  (require 'lsp-mode)
  (require 'ccls)

  (defun ccls//enable ()
    (condition-case nil
        (lsp-ccls-enable)
      (user-error nil))
    )

  (with-eval-after-load 'ccls
    (setq ccls-executable "/home/halushko/Projects/ccls/build/ccls")
    (setq ccls-extra-args '("--log-file=/tmp/cq.log"))
    (setq ccls-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack" :highlight (:lsRanges true)))
    ;; (setq ccls-sem-highlight-method 'overlay)
    )

  ;; ;; Log file

  (use-package ccls
    :commands lsp-ccls-enable
    :init
    (add-hook 'c++-mode-hook 'ccls//enable)
    (add-hook 'c-mode-hook 'ccls//enable)
    )

  (defun ccls/base () (interactive) (lsp-ui-peek-find-custom 'base "$ccls/base"))
  (defun ccls/callers () (interactive) (lsp-ui-peek-find-custom 'callers "$ccls/callers"))
  (defun ccls/vars (kind) (lsp-ui-peek-find-custom 'vars "$ccls/vars" (plist-put (lsp--text-document-position-params) :kind kind)))
  (defun ccls/xref-base () (interactive) (ccls-xref-find-custom "$ccls/base"))
  (defun ccls/xref-callers () (interactive) (ccls-xref-find-custom "$ccls/callers"))

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

  (defun my-c-hook ()
    (setq flycheck-checker 'lsp-ui)
    (setq company-transformers nil company-lsp-async t company-lsp-cache-candidates nil)
    ;; New keybindings for dumb jump c mode
    (define-key spacemacs-c-mode-map-prefix (kbd "dg") 'dumb-jump-go)
    (define-key spacemacs-c-mode-map-prefix (kbd "dG") 'dumb-jump-go-other-window)
    (define-key spacemacs-c-mode-map-prefix (kbd "dp") 'dumb-jump-go-prompt)
    (define-key spacemacs-c-mode-map-prefix (kbd "du") 'dumb-jump-back)
    (define-key spacemacs-c-mode-map-prefix (kbd "de") 'dumb-jump-go-prefer-external)
    (define-key spacemacs-c-mode-map-prefix (kbd "dE") 'dumb-jump-go-prefer-external-other-window)
    (define-key spacemacs-c-mode-map-prefix (kbd "dc") 'dumb-jump-go-current-window)
    (define-key spacemacs-c-mode-map-prefix (kbd "dq") 'dumb-jump-quick-look)
    ;; New keybindings for dumb jump c++ mode
    (define-key spacemacs-c++-mode-map-prefix (kbd "dg") 'dumb-jump-go)
    (define-key spacemacs-c++-mode-map-prefix (kbd "dG") 'dumb-jump-go-other-window)
    (define-key spacemacs-c++-mode-map-prefix (kbd "dp") 'dumb-jump-go-prompt)
    (define-key spacemacs-c++-mode-map-prefix (kbd "du") 'dumb-jump-back)
    (define-key spacemacs-c++-mode-map-prefix (kbd "de") 'dumb-jump-go-prefer-external)
    (define-key spacemacs-c++-mode-map-prefix (kbd "dE") 'dumb-jump-go-prefer-external-other-window)
    (define-key spacemacs-c++-mode-map-prefix (kbd "dc") 'dumb-jump-go-current-window)
    (define-key spacemacs-c++-mode-map-prefix (kbd "dq") 'dumb-jump-quick-look)
    ;; gtags
    (define-key spacemacs-c-mode-map-prefix (kbd "tg") 'helm-gtags-dwim)
    (define-key spacemacs-c-mode-map-prefix (kbd "tG") 'helm-gtags-dwim-other-window)
    (define-key spacemacs-c-mode-map-prefix (kbd "tu") 'helm-gtags-previous-history)
    (define-key spacemacs-c-mode-map-prefix (kbd "tU") 'helm-gtags-next-history)
    (define-key spacemacs-c-mode-map-prefix (kbd "te") 'helm-gtags-parse-file)
    (define-key spacemacs-c-mode-map-prefix (kbd "ts") 'helm-gtags-show-stack)
    (define-key spacemacs-c-mode-map-prefix (kbd "tn") 'helm-gtags-next-history)
    (define-key spacemacs-c-mode-map-prefix (kbd "tp") 'helm-gtags-previous-history)
    (define-key spacemacs-c-mode-map-prefix (kbd "tf") 'helm-gtags-tags-in-this-function)
    (define-key spacemacs-c-mode-map-prefix (kbd "tF") 'helm-gtags-find-files)
    ;; New keybindings c++
    (define-key spacemacs-c++-mode-map-prefix (kbd "tg") 'helm-gtags-dwim)
    (define-key spacemacs-c++-mode-map-prefix (kbd "tG") 'helm-gtags-dwim-other-window)
    (define-key spacemacs-c++-mode-map-prefix (kbd "tu") 'helm-gtags-previous-history)
    (define-key spacemacs-c++-mode-map-prefix (kbd "tU") 'helm-gtags-next-history)
    (define-key spacemacs-c++-mode-map-prefix (kbd "te") 'helm-gtags-parse-file)
    (define-key spacemacs-c++-mode-map-prefix (kbd "ts") 'helm-gtags-show-stack)
    (define-key spacemacs-c++-mode-map-prefix (kbd "tn") 'helm-gtags-next-history)
    (define-key spacemacs-c++-mode-map-prefix (kbd "tp") 'helm-gtags-previous-history)
    (define-key spacemacs-c++-mode-map-prefix (kbd "tf") 'helm-gtags-tags-in-this-function)
    (define-key spacemacs-c++-mode-map-prefix (kbd "tF") 'helm-gtags-find-files)
    ;; ;; xref C++
    (define-key spacemacs-c++-mode-map-prefix (kbd "gd") 'xref-find-definitions)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gD") 'xref-find-definitions-other-frame)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gr") 'xref-find-references)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gc") 'ccls/xref-callers)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gb") 'ccls/xref-base)
    (define-key spacemacs-c++-mode-map-prefix (kbd "gu") 'evil-jump-backward)
    ;; ;; peek
    (define-key spacemacs-c++-mode-map-prefix (kbd "sd") 'lsp-ui-peek-find-definitions)
    (define-key spacemacs-c++-mode-map-prefix (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
    (define-key spacemacs-c++-mode-map-prefix (kbd "sb") 'ccls/base)
    (define-key spacemacs-c++-mode-map-prefix (kbd "sc") 'ccls/callers)
    (define-key spacemacs-c++-mode-map-prefix (kbd "sr") 'lsp-ui-peek-find-references)
    (define-key spacemacs-c++-mode-map-prefix (kbd "sRm") 'ccls/references-macro)
    (define-key spacemacs-c++-mode-map-prefix (kbd "sRa") 'ccls/references-address)
    (define-key spacemacs-c++-mode-map-prefix (kbd "sRr") 'ccls/references-read)
    (define-key spacemacs-c++-mode-map-prefix (kbd "sRn") 'ccls/references-not-call)
    (define-key spacemacs-c++-mode-map-prefix (kbd "sRw") 'ccls/references-write)
    (define-key spacemacs-c++-mode-map-prefix (kbd "su") 'evil-jump-backward)
    ;; C
    (define-key spacemacs-c-mode-map-prefix (kbd "gd") 'xref-find-definitions)
    (define-key spacemacs-c-mode-map-prefix (kbd "gD") 'xref-find-definitions-other-frame)
    (define-key spacemacs-c-mode-map-prefix (kbd "gr") 'xref-find-references)
    (define-key spacemacs-c-mode-map-prefix (kbd "gc") 'ccls/xref-callers)
    (define-key spacemacs-c-mode-map-prefix (kbd "gb") 'ccls/xref-base)
    (define-key spacemacs-c-mode-map-prefix (kbd "gu") 'evil-jump-backward)
    ;; peek
    (define-key spacemacs-c-mode-map-prefix (kbd "sd") 'lsp-ui-peek-find-definitions)
    (define-key spacemacs-c-mode-map-prefix (kbd "sr") 'lsp-ui-peek-find-references)
    (define-key spacemacs-c-mode-map-prefix (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
    (define-key spacemacs-c-mode-map-prefix (kbd "sb") 'ccls/base)
    (define-key spacemacs-c-mode-map-prefix (kbd "sc") 'ccls/callers)
    (define-key spacemacs-c-mode-map-prefix (kbd "sc") 'ccls/callers)
    (define-key spacemacs-c-mode-map-prefix (kbd "sr") 'lsp-ui-peek-find-references)
    (define-key spacemacs-c-mode-map-prefix (kbd "sRm") 'ccls/references-macro)
    (define-key spacemacs-c-mode-map-prefix (kbd "sRa") 'ccls/references-address)
    (define-key spacemacs-c-mode-map-prefix (kbd "sRr") 'ccls/references-read)
    (define-key spacemacs-c-mode-map-prefix (kbd "sRn") 'ccls/references-not-call)
    (define-key spacemacs-c-mode-map-prefix (kbd "sRw") 'ccls/references-write)
    (define-key spacemacs-c-mode-map-prefix (kbd "su") 'evil-jump-backward)
    )

  (add-hook 'c++-mode-hook 'my-c-hook)
  (add-hook 'c-mode-hook 'my-c-hook)

  (with-eval-after-load 'projectile
    (setq projectile-project-root-files-top-down-recurring
          (append '("compile_commands.json"
                    ".cquery"
                    ".ccls")
                  projectile-project-root-files-top-down-recurring)))

  ;; lsp-ui
  (require 'lsp-ui)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  (add-hook 'c-mode-common-hook 'flycheck-mode)

  ;; helm-xref
  (require 'helm-xref)
  (setq xref-show-xrefs-function 'helm-xref-show-xrefs)

  (require 'helm-fzf)

  ;; rust
  (with-eval-after-load 'lsp-mode
    ;; (setq lsp-rust-rls-command '("rustup" "run" "nightly" "rls"))
    (setq xref-prompt-for-identifier nil)
    (setq lsp-rust-rls-command '("rls"))
    (require 'lsp-rust)
    (add-hook 'rust-mode-hook #'lsp-rust-enable))

  (add-hook 'rust-mode-hook #'flycheck-mode)

  (setq mark-ring-max 128)
  (setq global-mark-ring-max 128)

  (with-eval-after-load 'google-this
    (setq google-this-keybind nil)
    (spacemacs/set-leader-keys "sws" 'google-this-search)
    (spacemacs/set-leader-keys "swc" 'google-this-cpp-reference)
    )

  ;; google this
  (require 'google-this)
  (google-this-mode 1)

  ;; crystal
  (add-hook 'crystal-mode-hook
            (lambda ()
              (setq flycheck-checker 'lsp-ui)
              (setq company-backends-crystal-mode '((company-lsp :with company-dabbrev-code)))
              )
            )

  ;; helm-bm
  (spacemacs/set-leader-keys "fb" nil)
  (spacemacs/set-leader-keys "fbF" 'helm-filtered-bookmarks)
  (spacemacs/set-leader-keys "fbf" 'helm-bm)
  (spacemacs/set-leader-keys "fbt" 'bm-toggle)
  (spacemacs/set-leader-keys "fbn" 'bm-next)
  (spacemacs/set-leader-keys "fbp" 'bm-previous)
  )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-all-windows t t)
 '(company-idle-delay nil t)
 '(fzf/window-height 50)
 '(helm-buffer-max-length nil)
 '(helm-display-header-line nil)
 '(helm-eshell-fuzzy-match t)
 '(helm-grep-ag-command
   "rg --color=always --smart-case --no-heading --line-number %s %s %s")
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-sideline-delay 0.5)
 '(package-selected-packages
   (quote
    (helm helm-core cider org-plus-contrib flycheck-pycheckers ccls flycheck projectile magit zenburn-theme zen-and-art-theme yasnippet-snippets yapfify yaml-mode xterm-color ws-butler winum white-sand-theme which-key web-mode web-beautify volatile-highlights vimrc-mode vi-tilde-fringe uuidgen use-package unfill underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme toml-mode toc-org thrift tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stan-mode spaceline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode scad-mode sass-mode reverse-theme restart-emacs rebecca-theme realgud-pry rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme racer qml-mode pyvenv pytest pyenv-mode pycoverage py-isort purple-haze-theme pug-mode professional-theme popwin play-crystal planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pdf-tools pcre2el paradox ox-gfm orgit organic-green-theme org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-elixir ob-crystal noflet noctilux-theme neotree naquadah-theme mwim mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme modern-cpp-font-lock mmm-mode minimal-theme matlab-mode material-theme markdown-toc majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lsp-ui lsp-python lorem-ipsum livid-mode live-py-mode linum-relative link-hint light-soap-theme julia-mode json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme inf-crystal indent-guide ibuffer-projectile hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-xref helm-tramp helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gtags helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-bm helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate google-this golden-ratio gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ ghub gh-md ggtags gandalf-theme fzf fuzzy flyspell-correct-helm flycheck-rust flycheck-pos-tip flycheck-mypy flycheck-mix flycheck-crystal flycheck-credo flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator fasd farmhouse-theme fancy-battery eyebrowse expand-region exotica-theme exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu espresso-theme eshell-z eshell-prompt-extras esh-help erlang ensime emmet-mode elisp-slime-nav dumb-jump dracula-theme django-theme disaster diminish diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme dactyl-mode cython-mode cyberpunk-theme csv-mode cquery company-web company-tern company-statistics company-shell company-lsp company-c-headers company-auctex company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode coffee-mode cmake-mode clues-theme clojure-snippets clj-refactor clean-aindent-mode clang-format cider-eval-sexp-fu cherry-blossom-theme cargo busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk arduino-mode apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme ameba alect-themes alchemist aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(powerline-default-separator (quote alternate)))
