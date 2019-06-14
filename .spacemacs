;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     dap
     graphviz
     windows-scripts
     yaml
     lsp
     (helm
      :variables
      helm-enable-auto-resize t
      helm-no-header t
      helm-position 'bottom
      )
     multiple-cursors
     treemacs
     ;; gnus
     ;; (mu4e :variables
     ;;       mu4e-installation-path "/usr/share/emacs/site-lisp/mu4e")
     ;; rust
     ;; yaml
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     markdown
     csv
     erlang
     ;; elixir
     html
     octave
     scala
     vimscript
     shell-scripts
     ;;crystal
     fasd
     (latex
      :variables
      latex-enable-auto-fill nil
      )
     ;; pdf-tools
     (org
      :variables
      org-enable-github-support t
      )
     ;;org-jira
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
      auto-completion-idle-delay nil
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
      enable-flyspell-auto-completion nil
      )
     (syntax-checking
      :variables
      syntax-checking-enable-by-default nil
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
      c-c++-backend 'lsp-ccls
      c-c++-lsp-cache-dir "/home/halushko/ccls-cache"
      ;; c-c++-lsp-executable "/home/halushko/aux_software/ccls/Release/ccls"
      c-c++-lsp-executable "/home/halushko/bin/ccls.sh"
      ;; c-c++-backend 'lsp-cquery
      ;; c-c++-lsp-executable "/home/halushko/Projects/cquery-tag/cquery/build/cquery"
      c-c++-lsp-sem-highlight-method nil
      c-c++-lsp-sem-highlight-rainbow nil
      c-c++-enable-auto-newline nil
      c-c++-adopt-subprojects t
      c-c++-enable-google-newline t
      )
     (gtags
      :variables gtags-enable-by-default nil
      )
     javascript
     confluence
     (python
      :variables
      python-fill-column 119
      python-test-runner 'pytest
      python-backend 'lsp
      )
     (ibuffer
      :variables
      ibuffer-group-buffers-by 'projects
      )
     cmake
     plantuml
     themes-megapack
     ;; private layers
     ;; olivetti
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(modern-cpp-font-lock lsp-elixir fzf company-box)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(alchemist)

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; File path pointing to emacs 27.1 executable compiled with support
   ;; for the portable dumper (this is currently the branch pdumper).
   ;; (default "emacs-27.0.50")
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa t

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'hybrid

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner nil

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; dotspacemacs-startup-lists '((recents . 5)
   ;;                              (projects . 7))
   dotspacemacs-startup-lists nil

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'emacs-lisp-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         zenburn
                         spacemacs-dark
                         kaolin-galaxy
                         kaolin-ocean
                         kaolin-dark
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.05)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 12
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 10

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 2.0

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
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

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; (setq configuration-layer-elpa-archives '(("melpa" . "melpa.org/packages/")   
  ;;                                           ("org" . "orgmode.org/elpa/") ("gnu" . "elpa.gnu.org/packages/")))
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;; Load files from private directory
  (add-to-list 'load-path "~/.emacs.d/private/local")

  ;; Spacemacs switches
  (spacemacs/toggle-mode-line-battery-on)
  (spacemacs/toggle-display-time-on)
  (spacemacs/toggle-indent-guide-off)
  (spacemacs/toggle-syntax-checking-on)
  (spacemacs/toggle-auto-fill-mode-off)
  (spacemacs/toggle-transparency)
  (spacemacs/toggle-truncate-lines-off)
  ;; (spacemacs/toggle-which-key-off)
  ;; (spacemacs/set-leader-keys "SPC" 'avy-goto-char-timer)
  (setq-default spacemacs-show-trailing-whitespace nil)

  ;; Misc
  (setq fancy-battery-show-percentage nil)

  ;; (indent-guide-global-mode t)

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
  ;; (require 'realgud)
  ;; (with-eval-after-load 'realgud
  ;;   (define-key spacemacs-python-mode-map-prefix "dD" 'realgud:pdb)
  ;;   (define-key spacemacs-python-mode-map-prefix "db" 'realgud:cmd-break)
  ;;   (define-key spacemacs-python-mode-map-prefix "dx" 'realgud:cmd-clear)
  ;;   (define-key spacemacs-python-mode-map-prefix "dn" 'realgud:cmd-next-no-arg)
  ;;   (define-key spacemacs-python-mode-map-prefix "ds" 'realgud:cmd-step-no-arg)
  ;;   (define-key spacemacs-python-mode-map-prefix "df" 'realgud:cmd-finish)
  ;;   (define-key spacemacs-python-mode-map-prefix "dc" 'realgud:cmd-continue)
  ;;   (define-key spacemacs-python-mode-map-prefix "de" 'realgud:cmd-eval-region)
  ;;   (define-key spacemacs-python-mode-map-prefix "dr" 'realgud:cmd-restart)
  ;;   (define-key spacemacs-python-mode-map-prefix "dU" 'realgud:cmd-until)
  ;;   (define-key spacemacs-python-mode-map-prefix "du" 'realgud:cmd-older-frame)
  ;;   (define-key spacemacs-python-mode-map-prefix "dd" 'realgud:cmd-newer-frame)
  ;;   )


  ;; Company
  ;; (global-company-mode t)
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
    ;; With use-package:
    (use-package company-box
      :hook (company-mode . company-box-mode))

    ;; Or:
    ;; (require 'company-box)
    ;; (add-hook 'company-mode-hook 'company-box-mode)
    )

  ;; (with-eval-after-load 'company
  ;;   (setq company-minimum-prefix-length 1)
  ;;   (setq company-show-numbers t)
  ;;   (setq company-tooltip-limit 10)
  ;;   (setq company-auto-complete t)
  ;;   (setq company-idle-delay 0.4)
  ;;   (setq company-frontends (quote (company-pseudo-tooltip-frontend)))
  ;;   (setq company-auto-complete-chars nil)

  ;;   (define-key company-active-map (kbd "<S-tab>") nil)
  ;;   (define-key company-active-map (kbd "<tab>") nil)
  ;;   (define-key company-active-map (kbd "<backtab>") nil)
  ;;   (define-key company-active-map (kbd "M-n") nil)
  ;;   (define-key company-active-map (kbd "M-p") nil)
  ;;   (define-key company-active-map (kbd "C-n") #'company-select-next)
  ;;   (define-key company-active-map (kbd "C-p") #'company-select-previous)
  ;;   (define-key company-active-map (kbd "<tab>") 'helm-company)
  ;;   (remove-hook 'eshell-directory-change-hook
  ;;                'spacemacs//toggle-shell-auto-completion-based-on-path)
  ;;   )

  ;; company-lsp
  ;; (require 'company-lsp)
  ;; (with-eval-after-load 'company-lsp
  ;;   (push 'company-lsp company-backends)
  ;;   (setq company-lsp-enable-recompletion t)
  ;;   )


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
    ;; (setq helm-swoop-move-to-line-cycle t)

    ;; Optional face for line numbers
    ;; Face name is `helm-swoop-line-number-face`
    ;; (setq helm-swoop-use-line-number-face t)

    ;; If you prefer fuzzy matching
    ;; (setq helm-swoop-use-fuzzy-match t)

    (require 'helm-fzf)
    (spacemacs/set-leader-keys "fz" 'helm-fzf)
    ;; (setq helm-buffer-max-length nil)
    ;; (set-face-attribute 'helm-source-header nil :height 0.1)
    )


  ;; Buffer switch
  (define-key evil-normal-state-map (kbd "<C-tab>") 'helm-buffers-list)


  ;; xref
  (with-eval-after-load 'xref
    (require 'helm-xref)
    (setq xref-show-xrefs-function 'helm-xref-show-xrefs)
    )


  ;; bm
  ;; (require 'bm)
  ;; (with-eval-after-load 'bm
  ;;   ;; helm-bm
  ;;   (require 'helm-bm)
  ;;   (spacemacs/set-leader-keys "fb" nil)
  ;;   (spacemacs/set-leader-keys "fbF" 'helm-filtered-bookmarks)
  ;;   (spacemacs/set-leader-keys "fbf" 'helm-bm)
  ;;   (spacemacs/set-leader-keys "fbt" 'bm-toggle)
  ;;   (spacemacs/set-leader-keys "fbn" 'bm-next)
  ;;   (spacemacs/set-leader-keys "fbp" 'bm-previous)
  ;;   )


  ;; google this
  ;; (require 'google-this)
  (with-eval-after-load 'google-this
    (lambda ()
     (google-this-mode 1)
     (setq google-this-keybind nil)
     (setq google-this-base-url "https://duckduckgo.")
     ;; (setq google-this-base-url "https://www.google.")
     (defun google-this-url ()
       "URL for google searches."
       (concat google-this-base-url google-this-location-suffix "?q=%s"))
     ;;   (spacemacs/set-leader-keys "sws" 'google-this-search)
     ;;   (spacemacs/set-leader-keys "swc" 'google-this-cpp-reference)
     )
    )


  ;; Semantic
  (setq hlt-auto-faces-flag t)


  ;; Term
  (defun bb/setup-term-mode ()
    (evil-local-set-key 'insert (kbd "C-r") 'bb/send-C-r))

  (defun bb/send-C-r ()
    (interactive)
    (term-send-raw-string "\C-r"))

  (add-hook 'term-mode-hook 'bb/setup-term-mode)


  ;; Matlab/Octave
  (setq auto-mode-alist (cons '("\\.m$" . octave-mode) auto-mode-alist))


  ;; RPM spec
  (autoload 'rpm-spec-mode "rpm-spec-mode.el" "RPM spec mode." t)
  (setq auto-mode-alist (append '(("\\.spec" . rpm-spec-mode))
 			                          auto-mode-alist))

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

  (setenv "PAGER" "cat")

  (defun eshell/gst (&rest args)
    (magit-status (pop args) nil)
    (eshell/echo))   ;; The echo command suppresses output

  (defun eshell/f (filename &optional dir try-count)
    "Searches for files matching FILENAME in either DIR or the
     current directory. Just a typical wrapper around the standard
     `find' executable.

     Since any wildcards in FILENAME need to be escaped, this wraps the shell command.

     If not results were found, it calls the `find' executable up to
     two more times, wrapping the FILENAME pattern in wildcat
     matches. This seems to be more helpful to me."
    ;; (let* ((cmd (concat
    ;;              (executable-find "find")
    ;;              " " (or dir ".")
    ;;              "      -not -path '*/.git*'"
    ;;              " -and -not -path '*node_modules*'"
    ;;              " -and -not -path '*classes*'"
    ;;              " -and "
    ;;              " -type f -and "
    ;;              "-iname '" filename "'"))
    (let* ((cmd (concat
                 (executable-find "fd")
                 " -t f "
                 "'" filename "'"))
           (results (shell-command-to-string cmd)))

      (if (not (s-blank-str? results))
          results
        (cond
         ((or (null try-count) (= 0 try-count))
          (eshell/f (concat filename "*") dir 1))
         ((or (null try-count) (= 1 try-count))
          (eshell/f (concat "*" filename) dir 2))
         (t "")))))

  (defun eshell/ef (filename &optional dir)
    "Searches for the first matching filename and loads it into a file to edit."
    (let* ((files (eshell/f filename dir))
           (file (car (s-split "\n" files))))
      (find-file file)))

  (defun curr-dir-git-branch-string (pwd)
    "Returns current git branch as a string, or the empty string if
PWD is not in a git repo (or the git command is not found)."
    (interactive)
    (when (and (not (file-remote-p pwd))
               (eshell-search-path "git")
               (locate-dominating-file pwd ".git"))
      (let* ((git-url (shell-command-to-string "git config --get remote.origin.url"))
             (git-repo (file-name-base (s-trim git-url)))
             (git-output (shell-command-to-string (concat "git rev-parse --abbrev-ref HEAD")))
             (git-branch (s-trim git-output))
             (git-icon  "\xe0a0")
             (git-icon2 (propertize "\xf020" 'face `(:family "octicons"))))
        (concat git-repo " " git-icon2 " " git-branch))))

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
    (define-key eshell-mode-map (kbd "<tab>") 'helm-esh-pcomplete)
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
    "Clear `eshell' buffer, comint-style."
    (interactive)
    (let ((input (eshell-get-old-input)))
      (eshell/clear-scrollback)
      (eshell-emit-prompt)
      (insert input)))

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
  ;; (require 'lsp-mode)
  ;; (with-eval-after-load 'lsp-mode
  ;;   (setq xref-prompt-for-identifier nil)
  ;;   (defun lsp--on-notification (p notification)
  ;;     "Call the appropriate handler for NOTIFICATION."
  ;;     (let* ((params (gethash "params" notification))
  ;;            (client (lsp--workspace-client (lsp--parser-workspace p)))
  ;;            (method (gethash "method" notification))
  ;;            (handler (gethash method
  ;;                              (lsp--client-notification-handlers client)
  ;;                              (gethash method lsp--default-notification-handlers))))
  ;;       (if handler
  ;;           (funcall handler (lsp--parser-workspace p) params)
  ;;         ;; (lsp-warn "Unknown method: %s" method))))
  ;;         (message (format "Unknown method: %s" method)))))
  ;;   )


  ;; lsp ui
  ;; (with-eval-after-load 'lsp-ui
  ;;   (setq lsp-ui-sideline-ignore-duplicate t)
  ;;   (setq lsp-ui-peek-peek-height 60)
  ;;   (setq lsp-ui-peek-list-width 65)
  ;;   (setq lsp-ui-peek-always-show t)
  ;;   (setq lsp-ui-peek-fontify 'always)
  ;;   (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  ;;   (add-hook 'c-mode-common-hook 'flycheck-mode)
  ;;   )


  ;; lsp imenu
  ;; (require 'lsp-imenu)
  ;; (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)


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
  
  (defun remove-dos-eol ()
    "Do not show ^M in files containing mixed UNIX and DOS line endings."
    (interactive)
    (setq buffer-display-table (make-display-table))
    (aset buffer-display-table ?\^M []))

  (add-hook 'c++-mode-hook #'remove-dos-eol)

  ;; Crystal
  (add-hook 'crystal-mode-hook
            (lambda ()
              (setq flycheck-checker 'lsp-ui)
              (setq company-backends-crystal-mode '((company-lsp :with company-yasnippet company-dabbrev-code)))
              )
            )

  ;; Action Script
  (require 'actionscript-mode)

  ;; ;; Python
  ;; (require 'pycoverage)
  ;; (defun my-coverage ()
  ;;   (interactive)
  ;;   (when (derived-mode-p 'python-mode)
  ;;     (progn
  ;;       (linum-mode)
  ;;       (pycoverage-mode))))

  ;; (require 'flycheck-mypy)
  ;; (add-hook 'python-mode-hook 'flycheck-mode)

  (add-hook 'python-mode-hook (lambda ()
                                (setq company-backends-python-mode '((company-lsp :with company-yasnippet company-dabbrev-code)))
                                ))

  ;; (require 'flycheck-pycheckers)
  ;; (with-eval-after-load 'flycheck
  ;;   (add-hook 'flycheck-mode-hook #'flycheck-pycheckers-setup)
  ;;   (setq flycheck-python-pylint-executable "pylint")
  ;;   (setq flycheck-display-errors-delay 1.0)
  ;;   )

  ;; (defun my-python-checkers ()
  ;;   "Set flycheck checkers, set checker to lsp"
  ;;   (setq flycheck-pycheckers-checkers '(pylint pep8 flake8 pyflakes mypy2))
  ;;   (setq flycheck-checker 'lsp-ui))

  ;; (add-hook 'python-mode-hook 'my-python-checkers)

  ;; (defun my-python-edit-hook ()
  ;;   (setq flycheck-checker 'lsp-ui)
  ;;   (setq company-lsp-async t company-lsp-cache-candidates nil)
  ;;   (modify-syntax-entry ?_ "w")
  ;;   (define-key evil-normal-state-map (kbd "gd") 'xref-find-definitions)
  ;;   (define-key evil-normal-state-map (kbd "gr") 'xref-find-references)
  ;;   (define-key evil-normal-state-map (kbd "gR") 'lsp-rename)
  ;;   (define-key evil-normal-state-map (kbd "gu") 'evil-jump-backward)
  ;;   (define-key evil-normal-state-map (kbd "s") nil)
  ;;   (define-key evil-normal-state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
  ;;   (define-key evil-normal-state-map (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
  ;;   (define-key evil-normal-state-map (kbd "sr") 'lsp-ui-peek-find-references)
  ;;   (define-key evil-normal-state-map (kbd "su") 'lsp-ui-peek-jump-backward)
  ;;   )

  ;; (add-hook 'python-mode-hook 'my-python-edit-hook)

  ;; ;; anaconda
  ;; (with-eval-after-load 'anaconda-mode
  ;;   (define-key spacemacs-python-mode-map-prefix (kbd "ah") 'anaconda-mode-show-doc)
  ;;   (define-key spacemacs-python-mode-map-prefix (kbd "ag") 'anaconda-mode-find-definitions)
  ;;   (define-key spacemacs-python-mode-map-prefix (kbd "ar") 'anaconda-mode-find-references)
  ;;   (define-key spacemacs-python-mode-map-prefix (kbd "aa") 'anaconda-mode-find-assignments)
  ;;   (define-key spacemacs-python-mode-map-prefix (kbd "au") 'anaconda-mode-go-back)
  ;;   )

  ;; (with-eval-after-load 'anaconda-mode
  ;;   (remove-hook 'anaconda-mode-response-read-fail-hook
  ;;                'anaconda-mode-show-unreadable-response))

  ;; ;; (require 'lsp-python)
  ;; ;; (add-hook 'python-mode-hook #'lsp-python-enable)

  ;; ;; (lsp-define-stdio-client lsp-python "python3"
  ;; ;;                          #'projectile-project-root
  ;; ;;                          '("pyls"))

  ;; (add-hook 'lsp-mode-hook 'flycheck-mode)

  ;; (defun lsp-set-cfg ()
  ;;   (let ((lsp-cfg `(:pyls (:configurationSources ("flake8")))))
  ;;     ;; TODO: check lsp--cur-workspace here to decide per server / project
  ;;     (lsp--set-configuration lsp-cfg)))

  ;; (add-hook 'lsp-after-initialize-hook 'lsp-set-cfg)

  ;; ;; (add-hook 'python-mode-hook
  ;; ;;           (lambda ()
  ;; ;;             (lsp-python-enable)))


  ;; Elixir
  ;; (use-package lsp-mode
  ;;   :commands lsp
  ;;   :ensure t
  ;;   :diminish lsp-mode
  ;;   :hook
  ;;   (elixir-mode . lsp)
  ;;   :init
  ;;   (add-to-list 'exec-path "/home/halushko/Projects/Elixir/elixir-lsp/elixir-ls/release"))

  ;; (with-eval-after-load 'elixir-mode
  ;;   (spacemacs/declare-prefix-for-mode 'elixir-mode
  ;;     "mt" "tests" "testing related functionality")
  ;;   (spacemacs/set-leader-keys-for-major-mode 'elixir-mode
  ;;     "tb" 'exunit-verify-all
  ;;     "ta" 'exunit-verify
  ;;     "tk" 'exunit-rerun
  ;;     "tt" 'exunit-verify-single))

  ;; (require 'elixir-mode)

  ;; (add-to-list 'load-path "/opt/spacemacs-distro/.emacs.d/private/local/lsp-elixir")
  ;; (require 'lsp-elixir)

  ;; (add-hook 'elixir-mode-hook #'lsp-elixir-enable)

  ;; (with-eval-after-load 'lsp-elixir
  ;;   ;; (setq lsp-elixir-ls-command "sh")
  ;;   (add-hook ‘elixir-mode-hook ’lsp)
  ;;   (setq lsp-clients-elixir-server-executable '("/home/halushko/Projects/Elixir/elixir-ls-0.2.23/release/language_server.sh"))
  ;;   )

  ;; (add-hook 'elixir-mode-hook
  ;;           (lambda ()
  ;;             (add-hook 'before-save-hook 'lsp-format-buffer)
  ;;             (setq flycheck-checker 'lsp-ui)
  ;;             (setq company-backends-elixir-mode '((company-lsp :with company-dabbrev-code)))
  ;;             ;; xref elixir
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "gd") 'xref-find-definitions)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "gD") 'xref-find-definitions-other-frame)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "gr") 'xref-find-references)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "gu") 'evil-jump-backward)
  ;;             ;; Lps ui peek
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "sd") 'lsp-ui-peek-find-definitions)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "sr") 'lsp-ui-peek-find-references)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "su") 'evil-jump-backward)
  ;;             ;; Dumb jump
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "dd") 'dumb-jump-go)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "dD") 'dumb-jump-go-other-window)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "dp") 'dumb-jump-go-prompt)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "du") 'dumb-jump-back)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "de") 'dumb-jump-go-prefer-external)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "dE") 'dumb-jump-go-prefer-external-other-window)
  ;;             (define-key spacemacs-elixir-mode-map-prefix (kbd "dc") 'dumb-jump-go-current-window)
  ;;             ))


  ;; C++ TODO: clean this
  ;; Clang-format
  ;; (with-eval-after-load 'clang-format
  ;;   (setq clang-format-executable "clang-format-7"))

  ;; (defun clang-format-bindings ()
  ;;   (define-key spacemacs-c-mode-map "=" 'clang-format-buffer)
  ;;   (define-key spacemacs-c-mode-map "," 'clang-format-region)
  ;;   (define-key spacemacs-c++-mode-map "=" 'clang-format-buffer)
  ;;   (define-key spacemacs-c++-mode-map "," 'clang-format-region)
  ;;   )

  ;; (add-hook 'c++-mode-hook 'clang-format-bindings)
  ;; (add-hook 'c-mode-hook 'clang-format-bindings)

  ;; (defun clang-format-for-filetype ()
  ;;   "Run clang-format if the current file has a file extensions in the filetypes list."
  ;;   (let ((filetypes '("c" "cpp" "h" "hpp")))
  ;;     (when (member (file-name-extension (buffer-file-name)) filetypes)
  ;;       (clang-format-buffer))))

  ;; (add-hook 'before-save-hook 'clang-format-for-filetype)
  ;; (use-package modern-cpp-font-lock :ensure t)
  ;; (add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)


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
  ;; (use-package lsp-mode :commands lsp)
  ;; (use-package lsp-ui :commands lsp-ui-mode)
  ;; (use-package company-lsp :commands company-lsp)

  ;; (use-package ccls
  ;;   :hook ((c-mode c++-mode objc-mode) .
  ;;          (lambda () (require 'ccls) (lsp))))
  ;; (setq ccls-executable "/home/halushko/aux_software/ccls/Release/ccls")

  ;; (require 'ccls)

  ;; (defun ccls//enable ()
  ;;   (condition-case nil
  ;;       (lsp-ccls-enable)
  ;;     (user-error nil))
  ;;   )

  ;; (use-package ccls
  ;;   :commands lsp-ccls-enable
  ;;   :init
  ;;   (add-hook 'c++-mode-hook 'ccls//enable)
  ;;   (add-hook 'c-mode-hook 'ccls//enable)
  ;;   )

  ;; (defun +ccls/enable ()
  ;;   (condition-case nil
  ;;       (lsp-ccls-enable)
  ;;     (user-error nil)))

  ;; (use-package ccls
  ;;   :commands lsp-ccls-enable
  ;;   :init
  ;;   (add-hook 'c-mode-hook #'+ccls/enable)
  ;;   (add-hook 'c++-mode-hook #'+ccls/enable)
  ;;   (add-hook 'objc-mode-hook #'+ccls/enable)
  ;;   (add-hook 'cuda-mode-hook #'+ccls/enable)
  ;;   )
  ;; (with-eval-after-load 'ccls
  ;;   (setq ccls-initialization-options '(:index (:comments 2) :cacheFormat "msgpack" :completion (:detailedLabel t)))
  ;;   )

  ;; (with-eval-after-load 'ccls
  ;;   ;; (setq ccls-executable "/home/halushko/Projects/ccls/build/ccls")
  ;;   ;; (setq ccls-executable "/home/halushko/bin/my-ccls")
  ;;   ;; (setq ccls-executable "/home/halushko/Projects/ccls/ccls") ;; Works
  ;;   ;; (setq ccls-executable "/home/halushko/Projects/ccls/build-0.20180924/Release/ccls")
  ;;   ;; (setq ccls-executable "/home/halushko/Projects/ccls/build-0.20181010/Release/ccls")
  ;;   ;; (setq ccls-executable "/home/halushko/Projects/ccls/build-0.20180924/Release/ccls")
  ;;   ;; (setq ccls-executable "/home/halushko/Projects/ccls/Release-20181111/ccls")
  ;;   (setq ccls-executable "/home/halushko/Projects/ccls/Release-12-25/ccls")
  ;;   (setq ccls-extra-args '("--log-file=/tmp/cq.log"))
  ;;   (setq ccls-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack" :completion (:detailedLabel t)))
  ;;   ;; (setq ccls-sem-highlight-method 'overlay)
  ;;   (setq ccls-sem-highlight-method nil)
  ;;   )

  ;; (defun ccls/member (kind)
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom 'member "$ccls/member" `(:kind ,kind)))

  ;; (defun ccls/member-type ()
  ;;   (interactive)
  ;;   (ccls/member 2))

  ;; (defun ccls/member-func ()
  ;;   (interactive)
  ;;   (ccls/member 3))

  ;; (defun ccls/member-var ()
  ;;   (interactive)
  ;;   (ccls/member 0))

  ;; (defun ccls/down ()
  ;;   (interactive)
  ;;   (ccls-navigate "D"))

  ;; (defun ccls/up ()
  ;;   (interactive)
  ;;   (ccls-navigate "U"))

  ;; (defun ccls/left ()
  ;;   (interactive)
  ;;   (ccls-navigate "L"))

  ;; (defun ccls/right ()
  ;;   (interactive)
  ;;   (ccls-navigate "R"))

  ;; (defun ccls/vars (kind) (lsp-ui-peek-find-custom 'vars "$ccls/vars" `(:kind ,kind)))
  ;; ;; (ccls/vars 3) ;; field or local variable
  ;; ;; (ccls/vars 1) ;; field
  ;; ;; (ccls/vars 4) ;; parameter

  ;; (defun ccls/field-or-local-variable ()
  ;;   (interactive)
  ;;   (ccls/vars 3))

  ;; (defun ccls/field ()
  ;;   (interactive)
  ;;   (ccls/vars 1))

  ;; (defun ccls/parameter ()
  ;;   (interactive)
  ;;   (ccls/vars 4))

  ;; (defun ccls/callee ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom 'callee "$ccls/call" '(:callee t)))

  ;; (defun ccls/caller ()
  ;;   (interactive)
  ;;   (lsp-ui-peek-find-custom 'caller "$ccls/call"))

  (defun ccls/callee () (interactive) (lsp-ui-peek-find-custom "$ccls/call" '(:callee t)))
  (defun ccls/caller () (interactive) (lsp-ui-peek-find-custom "$ccls/call"))
  (defun ccls/vars (kind) (lsp-ui-peek-find-custom "$ccls/vars" `(:kind ,kind)))
  (defun ccls/base (levels) (lsp-ui-peek-find-custom "$ccls/inheritance" `(:levels ,levels)))
  (defun ccls/derived (levels) (lsp-ui-peek-find-custom "$ccls/inheritance" `(:levels ,levels :derived t)))
  (defun ccls/member (kind) (interactive) (lsp-ui-peek-find-custom "$ccls/member" `(:kind ,kind)))

  ;; References w/ Role::Role
  (defun ccls/references-read () (interactive)
         (lsp-ui-peek-find-custom "textDocument/references"
                                  (plist-put (lsp--text-document-position-params) :role 8)))

  ;; References w/ Role::Write
  (defun ccls/references-write ()
    (interactive)
    (lsp-ui-peek-find-custom "textDocument/references"
                             (plist-put (lsp--text-document-position-params) :role 16)))

  ;; References w/ Role::Dynamic bit (macro expansions)
  (defun ccls/references-macro () (interactive)
         (lsp-ui-peek-find-custom "textDocument/references"
                                  (plist-put (lsp--text-document-position-params) :role 64)))

  ;; References w/o Role::Call bit (e.g. where functions are taken addresses)
  (defun ccls/references-not-call () (interactive)
         (lsp-ui-peek-find-custom "textDocument/references"
                                  (plist-put (lsp--text-document-position-params) :excludeRole 32)))

  ;; ccls/vars ccls/base ccls/derived ccls/members have a parameter while others are interactive.
  ;; (ccls/base 1) direct bases
  ;; (ccls/derived 1) direct derived
  ;; (ccls/member 2) => 2 (Type) => nested classes / types in a namespace
  ;; (ccls/member 3) => 3 (Func) => member functions / functions in a namespace
  ;; (ccls/member 0) => member variables / variables in a namespace
  ;; (ccls/vars 1) => field
  ;; (ccls/vars 2) => local variable
  ;; (ccls/vars 3) => field or local variable. 3 = 1 | 2
  ;; (ccls/vars 4) => parameter

  ;; References whose filenames are under this project
  ;; (require 'lsp-ui)
  ;; (lsp-ui-peek-find-references nil (list :folders (vector (projectile-project-root))))

  ;; (add-hook 'c++-mode-hook (lambda ()
  ;;                            (push '(?< . ("< " . " >")) evil-surround-pairs-alist)))

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

  (defun my-c-settings ()
    (setq company-transformers nil company-lsp-async t company-lsp-cache-candidates nil)
    ;; (setq company-backends-c-mode-common '((company-lsp)))
    (setq company-backends-c-mode-common '((company-capf)))
    (modify-syntax-entry ?_ "w")
    (remove-hook 'company-mode-hook 'company-statistics-mode)
    )

  (defun lsp-ccls-xref-navigation (state-map)
    "Setting projectile other file, xref and lsp keybindings"
    ;; go to keybindings
    (define-key state-map (kbd "g") nil)
    (define-key state-map (kbd "ga") 'projectile-find-other-file)
    (define-key state-map (kbd "gA") 'projectile-find-other-file-other-window)
    (define-key state-map (kbd "gd") 'xref-find-definitions)
    (define-key state-map (kbd "gD") 'lsp-ui-peek-find-definitions)
    (define-key state-map (kbd "gr") 'xref-find-references)
    (define-key state-map (kbd "gR") 'lsp-ui-peek-find-references)
    (define-key state-map (kbd "gu") 'xref-pop-marker-stack)
    (define-key state-map (kbd "gU") 'lsp-ui-peek-jump-backward)
    (define-key state-map (kbd "gsd") 'ccls/member)
    ;; see keybindings
    ;; (define-key state-map (kbd "s") nil)
    ;; (define-key state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
    ;; (define-key state-map (kbd "sd") 'lsp-ui-peek-find-definitions)
    ;; (define-key state-map (kbd "ss") 'lsp-ui-peek-find-workspace-symbol)
    ;; (define-key state-map (kbd "sb") 'ccls/base)
    ;; (define-key state-map (kbd "sc") 'ccls/callee)
    ;; (define-key state-map (kbd "sC") 'ccls/caller)
    ;; (define-key state-map (kbd "shc") 'ccls/callees)
    ;; (define-key state-map (kbd "shC") 'ccls/callers)
    ;; (define-key state-map (kbd "shb") 'ccls/bases)
    ;; (define-key state-map (kbd "shd") 'ccls/derived)
    ;; (define-key state-map (kbd "shm") 'ccls-member-hierarchy)
    ;; (define-key state-map (kbd "sr") 'lsp-ui-peek-find-references)
    ;; (define-key state-map (kbd "sm") 'ccls/references-macro)
    ;; (define-key state-map (kbd "sa") 'ccls/references-address)
    ;; (define-key state-map (kbd "sR") 'ccls/references-read)
    ;; (define-key state-map (kbd "sw") 'ccls/references-write)
    ;; (define-key state-map (kbd "sg") 'ccls/references-not-call)
    ;; (define-key state-map (kbd "sn") 'lsp-ui-find-next-reference)
    ;; (define-key state-map (kbd "sp") 'lsp-ui-find-prev-reference)
    ;; (define-key state-map (kbd "su") 'lsp-ui-peek-jump-backward)
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
    ;; (lsp-ccls-xref-navigation evil-normal-state-map)
    ;; (lsp-ccls-xref-navigation evil-hybrid-state-map)
    ;; (lsp-ccls-xref-navigation evil-mc-key-map)
    )

  (add-hook 'c-mode-hook (lambda () (my-c-ccls-keybindings spacemacs-c-mode-map) ))
  (add-hook 'c++-mode-hook (lambda () (my-c-ccls-keybindings spacemacs-c++-mode-map) ))

  (add-hook 'c-mode-hook 'my-c-settings)
  (add-hook 'c++-mode-hook 'my-c-settings)

  )

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-all-windows 'all-frames)
 '(blink-cursor-mode nil)
 '(ccls-sem-highlight-method nil)
 '(clang-format-executable "clang-format")
 '(column-number-mode t)
 '(company-idle-delay 0)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(company-transformers
   '(spacemacs//company-transformer-cancel company-sort-by-backend-importance))
 '(display-time-mode t)
 '(evil-move-cursor-back nil)
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#383838")
 '(fzf/window-height 50)
 '(garbage-collection-messages t)
 '(gc-cons-percentage 0.12)
 '(global-vi-tilde-fringe-mode nil)
 '(helm-buffer-max-length nil)
 '(helm-display-header-line nil)
 '(helm-eshell-fuzzy-match t)
 '(helm-grep-ag-command
   "rg --color=always --smart-case --no-heading --line-number %s %s %s")
 '(inhibit-eol-conversion nil)
 '(lsp-clients-clangd-executable "clangd-8")
 '(lsp-project-whitelist '("/home/halushko/Projects/*"))
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-doc-header nil)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-position 'at-point)
 '(lsp-ui-doc-use-childframe nil)
 '(lsp-ui-imenu-enable nil)
 '(lsp-ui-imenu-kind-position 'left)
 '(lsp-ui-peek-always-show t)
 '(lsp-ui-peek-fontify 'always)
 '(lsp-ui-peek-list-width 90)
 '(lsp-ui-peek-peek-height 60)
 '(lsp-ui-sideline-delay 2.0)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-code-actions nil)
 '(lsp-ui-sideline-show-hover nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-export-with-sub-superscripts nil)
 '(package-selected-packages
   '(powershell counsel-gtags fzf zenburn-theme zen-and-art-theme yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum white-sand-theme which-key web-mode web-beautify volatile-highlights vimrc-mode vi-tilde-fringe uuidgen use-package unfill underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme treemacs-projectile treemacs-evil toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit symon sunny-day-theme sublime-themes subatomic256-theme subatomic-theme string-inflection spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme restart-emacs rebecca-theme rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme prettier-js popwin plantuml-mode planet-theme pippel pipenv pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el password-generator paradox ox-gfm overseer orgit organic-green-theme org-projectile org-present org-pomodoro org-mime org-download org-bullets org-brain open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noflet noctilux-theme naquadah-theme nameless mwim mvn mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme modern-cpp-font-lock mmm-mode minimal-theme meghanada maven-test-mode material-theme markdown-toc majapahit-theme magit-svn magit-gitflow madhat2r-theme macrostep lush-theme lsp-ui lsp-java lsp-elixir lorem-ipsum livid-mode live-py-mode link-hint light-soap-theme kaolin-themes json-navigator json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme insert-shebang inkpot-theme indent-guide importmagic impatient-mode ibuffer-projectile hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme helm-xref helm-themes helm-swoop helm-rtags helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gtags helm-gitignore helm-git-grep helm-flx helm-descbinds helm-ctest helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme groovy-mode groovy-imports grandshell-theme gradle-mode gotham-theme google-translate google-c-style golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md ggtags gandalf-theme fuzzy font-lock+ flyspell-correct-helm flycheck-rtags flycheck-pos-tip flycheck-bashate flx-ido flatui-theme flatland-theme fish-mode fill-column-indicator fasd farmhouse-theme fancy-battery eziam-theme eyebrowse expand-region exotica-theme evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu espresso-theme eshell-z eshell-prompt-extras esh-help erlang ensime emmet-mode elisp-slime-nav editorconfig dumb-jump dracula-theme dotenv-mode doom-themes doom-modeline django-theme disaster diminish diff-hl define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme dactyl-mode cython-mode cyberpunk-theme csv-mode cquery counsel-projectile confluence company-web company-tern company-statistics company-shell company-rtags company-lsp company-emacs-eclim company-c-headers company-auctex company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode cmake-mode cmake-ide clues-theme clojure-snippets clean-aindent-mode clang-format cider-eval-sexp-fu cider cherry-blossom-theme centered-cursor-mode ccls busybee-theme bubbleberry-theme browse-at-remote birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme ace-link ace-jump-helm-line ac-ispell))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(projectile-svn-command "fd -0 -t f")
 '(python-shell-interpreter "ipython3")
 '(python-shell-interpreter-args "--simple-prompt -i")
 '(send-mail-function 'smtpmail-send-it)
 '(smtpmail-debug-info t)
 '(smtpmail-debug-verb t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
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
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
