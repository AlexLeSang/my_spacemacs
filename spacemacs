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
   '(windows-scripts
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion
      :variables
      auto-completion-complete-with-key-sequence "jk"
      auto-completion-idle-delay 0.1
      auto-completion-enable-help-tooltip t
      auto-completion-minimum-prefix-length 1
      )
     (better-defaults
      :variables
      better-defaults-move-to-beginning-of-code-first t)
     bm
     ;; (dap
     ;;  :variables
     ;;  dap-enable-mouse-support t)
     (docker
      :variables
      docker-dockerfile-backend 'lsp)
     graphviz
     (cmake
      :variables
      cmake-enable-cmake-ide-support t
      cmake-backend 'lsp)
     copy-as-format
     (colors
      :variables
      colors-colorize-identifiers 'all)
     csv
     (c-c++
      :variables
      c-c++-default-mode-for-headers 'c++-mode
      c-c++-backend 'lsp-ccls
      c-c++-lsp-cache-dir "/home/halushko/ccls-cache"
      c-c++-lsp-executable "/home/halushko/bin/ccls.sh"
      c++-enable-organize-includes-on-save nil
      c-c++-enable-clang-format-on-save nil
      c-c++-adopt-subprojects t)
     html
     emacs-lisp
     elixir
     git
     (gtags
      :variables
      gtags-enable-by-default nil)
     html
     (ivy
      :variables
      ivy-enable-advanced-buffer-information nil
      ivy-use-virtual-buffers nil
      ivy-height 24
      )
     ;; (helm
     ;;  :variables
     ;;  helm-no-header t
     ;;  helm-position 'bottom
     ;;  helm-enable-auto-resize t
     ;;  )
     nginx
     markdown
     multiple-cursors
     octave
     (org
      :variables
      org-enable-sticky-header t
      org-enable-github-support t
      org-enable-org-journal-support t
      org-journal-dir "~/org/journal/"
      org-enable-hugo-support t
      org-projectile-file "TODOs.org"
      org-enable-verb-support t)
     pdf
     (python
      :variables
      python-fill-column 119
      python-test-runner 'pytest
      python-backend 'lsp
      python-save-before-test t
      python-sort-imports-on-save nil
      )
     restclient
     (shell
      :variables shell-default-shell 'eshell
      shell-default-position 'right
      close-window-with-terminal t
      shell-default-width 40)
     (shell-scripts
      :variables
      shell-scripts-backend 'lsp)
     (spell-checking
      :variables
      spell-checking-enable-by-default nil
      enable-flyspell-auto-completion nil)
     syntax-checking
     systemd
     (evil-snipe
      :variables
      evil-snipe-enable-alternate-f-and-t-behaviors t)
     (version-control
      :variables
      version-control-diff-tool 'diff-hl
      version-control-global-margin nil)
     (lsp
      :variables
      lsp-navigation 'simple
      lsp-ui-doc-enable t
      lsp-ui-sideline-enable nil
      )
     (ranger
      :variables
      ranger-show-preview t)
     json
     themes-megapack
     pandoc
     (plantuml
      :variables
      plantuml-jar-path "/usr/share/plantuml/plantuml.jar"
      org-plantuml-jar-path "/usr/share/plantuml/plantuml.jar"
      )
     (javascript
      :variables
      javascript-backend 'lsp
      javascript-fmt-tool 'web-beautify
      javascript-repl `nodejs)
     (yaml
      :variables
      yaml-enable-lsp t)
     (latex
      :variables
      latex-enable-auto-fill t)
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(fish-completion
                                      hide-mode-line
                                      doom-themes
                                      lsp-java
                                      nord-theme
                                      org-plus-contrib
                                      org-mind-map
                                      pcmpl-args
                                      pcomplete-extension
                                      logview
                                      srefactor
                                      zenburn-theme
                                      org-roam
                                      company-org-roam
                                      (journalctl-mode :location (recipe
                                                                  :fetcher github
                                                                  :repo "SebastianMeisel/journalctl-mode"))
                                      (explain-pause-mode :location (recipe
                                                                     :fetcher github
                                                                     :repo "lastquestion/explain-pause-mode"))
                                      log4j-mode
                                      vlf
                                      material-theme
                                      fish-completion
                                      syslog-mode)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

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
   dotspacemacs-enable-emacs-pdumper t

   ;; File path pointing to emacs 27.1 executable compiled with support
   ;; for the portable dumper (this is currently the branch pdumper).
   ;; (default "emacs-27.0.50")
   dotspacemacs-emacs-pdumper-executable-file "emacs-28.0.50"

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
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   dotspacemacs-gc-cons '(120000000 0.12)

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
   dotspacemacs-check-for-update nil

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
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
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

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'lisp-interaction-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(zenburn
                         doom-one-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   ;; dotspacemacs-mode-line-theme '(spacemacs :separator nil :separator-scale 1.0)
   dotspacemacs-mode-line-theme 'custom

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Fira Code"
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
   dotspacemacs-large-file-size 100

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
   dotspacemacs-enable-paste-transient-state t

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
   dotspacemacs-fullscreen-at-startup t

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

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
   dotspacemacs-smooth-scrolling nil

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
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
   dotspacemacs-pretty-docs t))

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
  (setq-default git-magit-status-fullscreen t)
  (setq-default git-enable-magit-svn-plugin t)

  (defun spaceline-custom-theme (&rest additional-segments)
    "My custom spaceline theme."
    (spaceline-compile
      `((window-number)
        ((buffer-id buffer-modified)
         :priority 98)
        (process :when active)
        ((flycheck-error flycheck-warning flycheck-info)
         :when active
         :priority 89)
        )
      `(which-function
        (selection-info :priority 95)
        input-method
        ((point-position
          line-column)
         :separator " "
         :priority 96)
        (global :when active)
        ,@additional-segments
        ))
    (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))
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

  ;; Native compile
  ;; (native-compile-async "/home/halushko/.emacs.d/elpa" t t)
  ;; Explain Pause Mode
  ;; (explain-pause-mode t)

  ;; Load files from private directory
  (add-to-list 'load-path "~/.spacemacs.emacs.d/private/local")

  (spacemacs/disable-transparency)
  (spacemacs/toggle-display-time-on)
  (spacemacs/toggle-auto-fill-mode-off)
  (spacemacs/toggle-vi-tilde-fringe-off)
  (spacemacs/toggle-display-time-off)
  (spacemacs/toggle-mode-line-minor-modes-off)
  (spacemacs/toggle-mode-line-major-mode-off)
  (spacemacs/toggle-mode-line-point-position-off)
  (spacemacs/toggle-mode-line-new-version-off)
  (spacemacs/toggle-mode-line-version-control-off)
  (spacemacs/toggle-mode-line-point-position-off)
  (spacemacs/toggle-which-key-off)
  (spacemacs/toggle-spelling-checking-off)
  ;; (spacemacs/toggle-version-control-margin-off)
  ;; (spacemacs/toggle-version-control-margin-globally-off)
  (setq-default spacemacs-show-trailing-whitespace nil)

  ;; plantuml
  (setq plantuml-default-exec-mode 'jar)
  (setq plantuml-output-type "png")

  (with-eval-after-load 'org-mode
    (require 'ox-confluence))

  (require 'journalctl-mode) 

  ;; (use-package org-roam
  ;;   :hook
  ;;   (after-init . org-roam-mode)
  ;;   :custom
  ;;   (org-roam-directory "/home/halushko/org/")
  ;;   :bind (:map org-roam-mode-map
  ;;               (("C-c n l" . org-roam)
  ;;                ("C-c n f" . org-roam-find-file)
  ;;                ("C-c n g" . org-roam-show-graph))
  ;;               :map org-mode-map
  ;;               (("C-c n i" . org-roam-insert))))

  ;; (use-package company-org-roam
  ;;   :straight (:host github :repo "org-roam/company-org-roam")
  ;;   :config
  ;;   (push 'company-org-roam company-backends))

  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (mapcar '(lambda (file)
               (when (file-exists-p file)
                 (push file org-agenda-files)))
            (org-projectile-todo-files)))

  ;; helm buffers list
  ;; (define-key evil-normal-state-map (kbd "<C-tab>") 'helm-buffers-list)
  ;; (bind-key (kbd "<C-tab>") 'helm-buffers-list)

  (define-key evil-normal-state-map (kbd "<C-tab>") 'switch-to-buffer)
  (bind-key (kbd "<C-tab>") 'switch-to-buffer)


  (with-eval-after-load 'org-brain
    (setq org-id-track-globally t)
    (setq org-id-locations-file "~/.emacs.d/.org-id-locations")
    (add-hook 'before-save-hook #'org-brain-ensure-ids-in-buffer))

  ;; (define-key evil-normal-state-map (kbd "gs") 'helm-swoop)
  (define-key evil-normal-state-map (kbd "gs") 'swiper)

  ;; (define-key evil-normal-state-map (kbd "<C-tab>") 'switch-to-buffer)
  ;; (bind-key (kbd "<C-tab>") 'switch-to-buffer)

  ;; eshell here
  (defun eshell-here ()
    "Opens up a new shell in the directory associated with the
    current buffer's file. The eshell is renamed to match that
    directory to make multiple eshell windows easier."
    (interactive)
    (let* ((width (/ (window-total-width) 2)))
      (split-window-horizontally (- width))
      (other-window 1)
      (eshell "new")
      (insert (concat "pwd"))
      (eshell-send-input)))

  (bind-key "C-!" 'eshell-here)

  (require 'doom-company)
  (require 'doom-eshell)

  (with-eval-after-load 'eshell
    (setq eshell-save-history-on-exit t)
    (setq eshell-history-size 100000)
    (require 'pcmpl-args)
    (require 'pcomplete-extension)
    ;; (setq helm-show-completion-display-function #'spacemacs//display-helm-window)
    (add-hook 'eshell-mode-hook
              (lambda ()
                (set (make-local-variable 'company-frontends) '(company-pseudo-tooltip-frontend))
                (set (make-local-variable 'company-idle-delay) nil)
                ))
    (remove-hook 'eshell-directory-change-hook
                 'spacemacs//toggle-shell-auto-completion-based-on-path)
    (remove-hook 'eshell-mode-hook
                 'spacemacs//eshell-switch-company-frontend)
    ;; (remove-hook 'eshell-mode-hook
    ;;              'spacemacs/init-helm-eshell)
    (add-hook 'eshell-mode-hook
              (defun +eshell-remove-fringes-h ()
                (set-window-fringes nil 0 0)
                (set-window-margins nil 1 nil)))
    ;; (add-hook 'eshell-mode-hook #'hide-mode-line-mode)
    (add-hook 'eshell-mode-hook
              (lambda ()
                (when (and (executable-find "fish")
                           (require 'fish-completion nil t))
                  (fish-completion-mode))))
    (add-hook 'eshell-mode-hook (lambda ()
                                  (define-key eshell-mode-map (kbd "<tab>") nil)
                                  (define-key eshell-mode-map (kbd "<tab>") '+eshell/pcomplete)))
    ;; (add-hook 'eshell-mode-hook (lambda ()
    ;;                               (spacemacs/set-leader-keys-for-major-mode 'eshell-mode
    ;;                                 "H" 'spacemacs/helm-eshell-history)
    ;;                               (define-key eshell-mode-map
    ;;                                 (kbd "M-l") 'spacemacs/helm-eshell-history)
    ;;                               ))
    )

  (defun pcomplete/dpkg ()
    (while (pcomplete-match "^-" 'last)
      (cond ((pcomplete-match "^-\\{2\\}" 'last)
             (while (pcomplete-here
                     '("--list" "--install" "--unpack" "--configure" "--triggers-only" "--remove"
                       "--purge" "--verify" "--audit" "--update-avail" "--merge-avail"
                       "--record-avail" "--forget-old-unavail" "--clear-avail" "--get-selections"
                       "--set-selections" "--clear-selections" "--yet-to-unpack" "--predep-package"
                       "--add-architecture" "--remove-architecture" "--print-architecture" "--print-foreign-architectures"
                       ))))
            ((pcomplete-match "^-\\{1\\}" 'last)
             ;; probably in sudo, work-around: increase index
             ;; otherwise pcomplete-opt returns nil
             (when (< pcomplete-index pcomplete-last)
               (pcomplete-next-arg))
             (pcomplete-opt "aAbBcCdDfFgGhHiIklLmnNopqQrRsStTuUvwxXZ1"))))
    (while (pcomplete-here (pcomplete-entries) nil 'identity)))

  (with-eval-after-load 'projectile
    (setq projectile-generic-command "fd -0 -t f")
    (setq projectile-project-compilation-cmd "")
    (setq projectile-project-root-files-top-down-recurring
          (append '("compile_commands.json"
                    ".cquery"
                    ".ccls"
                    ".git")
                  projectile-project-root-files-top-down-recurring))
    )


  (add-to-list 'auto-mode-alist '("\\.xslt\\'" . nxml-mode))
  (add-to-list 'auto-mode-alist '("\\Dockerfile-build\\'" . dockerfile-mode))
  (add-to-list 'auto-mode-alist '("conanfile.txt" . conf-mode))
  (add-to-list 'auto-mode-alist '("\\.prf\\'" . conf-mode))
  (add-to-list 'auto-mode-alist '("\\.ks\\'" . conf-mode))
  (add-to-list 'auto-mode-alist '("\\.repo\\'" . conf-mode))
  (add-to-list 'auto-mode-alist '("\\.conf\\'" . conf-mode))

  (add-to-list 'load-path "~/.spacemacs.emacs.d/private/local/clang-refactor")
  (require 'clang-refactor)

  (with-eval-after-load 'company-lsp
    (progn
      (spacemacs|add-company-backends
        :backends company-lsp
        :modes sh-mode)
      (spacemacs|add-company-backends
        :backends company-lsp
        :modes shell-script-mode)))

  (setq auto-mode-alist (cons '("\\.as$" . js-mode) auto-mode-alist))

  (defun remove-dos-eol ()
    "Do not show ^M in files containing mixed UNIX and DOS line endings."
    (interactive)
    (setq buffer-display-table (make-display-table))
    (aset buffer-display-table ?\^M []))

  (add-hook 'c++-mode-hook #'remove-dos-eol)

  (require 'vlf-setup)

  (require 'logview)

  ;; (defun spacemacs/helm-gtags-define-keys-for-mode (mode)
  ;;   "Define key bindings for the specific MODE."
  ;;   ;; The functionality of `helm-gtags-mode' is pretty much entirely superseded
  ;;   ;; by `ggtags-mode', so we don't add this hook
  ;;   ;; (let ((hook (intern (format "%S-hook" mode))))
  ;;   ;;   (add-hook hook 'helm-gtags-mode))

  ;;   ;; `helm-gtags-dwim' is added to the end of the mode-specific jump handlers
  ;;   ;; Some modes have more sophisticated jump handlers that go to the beginning
  ;;   ;; It might be possible to add `helm-gtags-dwim' instead to the default
  ;;   ;; handlers, if it does a reasonable job in ALL modes.
  ;;   ;; (let ((jumpl (intern (format "spacemacs-jump-handlers-%S" mode))))
  ;;   ;;   (when (boundp jumpl)
  ;;   ;;     (add-to-list jumpl 'spacemacs/helm-gtags-maybe-dwim 'append)))

  ;;   (spacemacs/set-leader-keys-for-major-mode mode
  ;;     "tC" 'helm-gtags-create-tags
  ;;     "td" 'helm-gtags-find-tag
  ;;     "tD" 'helm-gtags-find-tag-other-window
  ;;     "tf" 'helm-gtags-select-path
  ;;     "tg" 'helm-gtags-dwim
  ;;     "tG" 'helm-gtags-dwim-other-window
  ;;     "ti" 'helm-gtags-tags-in-this-function
  ;;     "tl" 'helm-gtags-parse-file
  ;;     "tn" 'helm-gtags-next-history
  ;;     "tp" 'helm-gtags-previous-history
  ;;     "tr" 'helm-gtags-find-rtag
  ;;     "tR" 'helm-gtags-resume
  ;;     "ts" 'helm-gtags-select
  ;;     "tS" 'helm-gtags-show-stack
  ;;     "ty" 'helm-gtags-find-symbol
  ;;     "tu" 'helm-gtags-update-tags))

  ;; (defun gtags/init-helm-gtags ()
  ;;   (use-package helm-gtags
  ;;     :defer t
  ;;     :init
  ;;     (progn
  ;;       (setq helm-gtags-ignore-case t
  ;;             helm-gtags-auto-update t
  ;;             helm-gtags-use-input-at-cursor t
  ;;             helm-gtags-pulse-at-cursor t)
  ;;       ;; modes that do not have a layer, define here
  ;;       (spacemacs/helm-gtags-define-keys-for-mode 'c-c++-modes)
  ;;       (spacemacs/helm-gtags-define-keys-for-mode 'tcl-mode)
  ;;       (spacemacs/helm-gtags-define-keys-for-mode 'vhdl-mode)
  ;;       (spacemacs/helm-gtags-define-keys-for-mode 'awk-mode)
  ;;       (spacemacs/helm-gtags-define-keys-for-mode 'dired-mode)
  ;;       (spacemacs/helm-gtags-define-keys-for-mode 'compilation-mode)
  ;;       (spacemacs/helm-gtags-define-keys-for-mode 'shell-mode))))

  ;; (gtags/init-helm-gtags)

  (require 'syslog-mode)
  (add-to-list 'auto-mode-alist '("/var/log.*\\'" . syslog-mode))

  ;; (with-eval-after-load 'dap-mode
  ;;   (dap-register-debug-template
  ;;    "GDB::Run feedercontrolstubbed"
  ;;    (list :type "gdb"
  ;;          :request "launch"
  ;;          :name "GDB::Run"
  ;;          :debugger_args ["--command=/home/halushko/Projects/sgs-trunk-local/remote-gdb.txt"]
  ;;          :target "/home/halushko/Projects/sgs-trunk-local/result/debug/feedercontrolstubbed"
  ;;          :cwd nil))
  ;;   )

  ;; (add-to-list 'load-path "/home/halushko/projects/clang-refactor")
  ;; (with-eval-after-load 'projectile
  ;;   (require 'clang-refactor))

  ;; (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hook-common-lisp-mode)


  (defun check-expansion ()
    (save-excursion
      (if (looking-at "\\_>") t
        (backward-char 1)
        (if (looking-at "\\.") t
          (backward-char 1)
          (if (looking-at "->") t nil)))))

  (defun do-yas-expand ()
    (let ((yas/fallback-behavior 'return-nil))
      (yas/expand)))

  (defun tab-indent-or-complete ()
    (interactive)
    (if (minibufferp)
        (minibuffer-complete)
      (if (or (not yas/minor-mode)
              (null (do-yas-expand)))
          (if (check-expansion)
              (company-complete-common)
            (indent-for-tab-command)))))


  ;; (add-hook 'c++-mode-hook (lambda () (define-key c++-mode-map (kbd "<tab>") 'tab-indent-or-complete)))
  ;; (add-hook 'c-mode-hook (lambda () (define-key c-mode-map (kbd "<tab>") 'tab-indent-or-complete)))

  (add-hook 'prog-mode-hook (lambda () (define-key prog-mode-map (kbd "<tab>") 'tab-indent-or-complete)))

  (add-hook 'c++-mode-hook (lambda () (define-key c++-mode-map (kbd "<tab>") 'tab-indent-or-complete)))
  (add-hook 'c-mode-hook (lambda () (define-key c-mode-map (kbd "<tab>") 'tab-indent-or-complete)))

  ;; garbage collections
  (defun my-minibuffer-setup-hook ()
    (setq gc-cons-threshold most-positive-fixnum))

  (defun my-minibuffer-exit-hook ()
    (setq gc-cons-threshold 800000))

  (add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
  (add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

  (add-hook 'doc-view-mode-hook 'auto-revert-mode)
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
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#212337" "#ff757f" "#c3e88d" "#ffc777" "#82aaff" "#c099ff" "#b4f9f8" "#c8d3f5"])
 '(beacon-color "#F8BBD0")
 '(blink-cursor-mode nil)
 '(clang-format-executable "clang-format")
 '(company-minimum-prefix-length 3)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(company-quickhelp-delay 0.1)
 '(create-lockfiles nil)
 '(delete-by-moving-to-trash nil)
 '(electric-indent-mode nil)
 '(evil-emacs-state-cursor '("#D50000" hbar) t)
 '(evil-insert-state-cursor '("#D50000" bar) t)
 '(evil-normal-state-cursor '("#F57F17" box) t)
 '(evil-snipe-scope 'whole-visible)
 '(evil-visual-state-cursor '("#66BB6A" box) t)
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#383a42")
 '(flycheck-sh-shellcheck-executable "shellcheck")
 '(fzf/window-height 50)
 '(garbage-collection-messages nil)
 '(global-company-mode t)
 '(helm-buffer-max-length nil)
 '(helm-candidate-number-limit 25)
 '(helm-completion-style 'emacs)
 '(helm-mini-default-sources '(helm-source-buffers-list helm-source-buffer-not-found))
 '(helm-swoop-speed-or-color nil)
 '(helm-swoop-use-fuzzy-match nil)
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   '("#F57F17" "#66BB6A" "#0097A7" "#42A5F5" "#7E57C2" "#D84315"))
 '(highlight-symbol-foreground-color "#546E7A")
 '(highlight-tail-colors '(("#F8BBD0" . 0) ("#FAFAFA" . 100)))
 '(hl-sexp-background-color "#efebe9")
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#4f97d7")
     ("OKAY" . "#4f97d7")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#86dc2f")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(hybrid-style-enable-hjkl-bindings t)
 '(indent-guide-global-mode nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(lsp-clients-clangd-executable "clangd")
 '(lsp-completion-provider t)
 '(lsp-file-watch-threshold nil)
 '(lsp-project-whitelist '("/home/halushko/Projects/*"))
 '(lsp-signature-auto-activate nil)
 '(lsp-ui-doc-include-signature t)
 '(lsp-ui-doc-position 'bottom)
 '(lsp-ui-peek-list-width 90)
 '(lsp-ui-peek-peek-height 60)
 '(lsp-ui-sideline-delay 2.0)
 '(lsp-ui-sideline-ignore-duplicate t)
 '(lsp-ui-sideline-show-code-actions nil)
 '(lsp-ui-sideline-show-hover nil)
 '(max-lisp-eval-depth 3200)
 '(max-specpdl-size 6400)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(objed-cursor-color "#ff6c6b")
 '(org-export-with-sub-superscripts nil)
 '(org-journal-dir "~/org/journal/" t)
 '(org-pomodoro-long-break-length 10)
 '(org-pomodoro-play-sounds nil)
 '(org-pomodoro-time-format "%.2m")
 '(package-selected-packages
   '(pandoc-mode ox-pandoc zenburn-theme zen-and-art-theme yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum white-sand-theme which-key wgrep web-mode web-beautify vterm volatile-highlights vlf vi-tilde-fringe verb uuidgen use-package unfill undo-tree underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme treemacs-projectile treemacs-persp treemacs-magit treemacs-icons-dired treemacs-evil toxi-theme toc-org terminal-here tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit systemd syslog-mode symon symbol-overlay sunny-day-theme sublime-themes subatomic256-theme subatomic-theme string-inflection srefactor sphinx-doc spaceline-all-the-icons spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smex smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme restart-emacs rebecca-theme ranger rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme pytest pyenv-mode py-isort purple-haze-theme pug-mode professional-theme prettier-js powershell popwin plantuml-mode planet-theme pippel pipenv pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme pdf-tools pcre2el pcomplete-extension pcmpl-args password-generator paradox ox-hugo ox-gfm overseer orgit organic-green-theme org-superstar org-sticky-header org-rich-yank org-projectile org-present org-pomodoro org-mind-map org-mime org-journal org-download org-cliplink org-brain open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-restclient ob-http ob-elixir nord-theme nodejs-repl noctilux-theme nginx-mode naquadah-theme nameless mwim mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme modus-vivendi-theme modus-operandi-theme mmm-mode minimal-theme material-theme markdown-toc majapahit-theme magit-svn magit-section magit-gitflow madhat2r-theme macrostep lush-theme lsp-ui lsp-python-ms lsp-pyright lsp-origami lsp-java lsp-ivy lorem-ipsum logview log4j-mode livid-mode live-py-mode link-hint light-soap-theme kaolin-themes json-navigator js2-refactor js-doc journalctl-mode jbeans-theme jazz-theme ivy-yasnippet ivy-xref ivy-rtags ivy-rich ivy-purpose ivy-hydra ivy-avy ir-black-theme insert-shebang inkpot-theme indent-guide importmagic impatient-mode hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-mode-line heroku-theme hemisu-theme helm-make hc-zenburn-theme gruvbox-theme gruber-darker-theme graphviz-dot-mode grandshell-theme gotham-theme google-translate google-c-style golden-ratio gnuplot gitignore-templates gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md ggtags gandalf-theme fuzzy font-lock+ flyspell-correct-ivy flycheck-ycmd flycheck-rtags flycheck-pos-tip flycheck-package flycheck-elsa flycheck-credo flycheck-bashate flx-ido flatui-theme flatland-theme fish-mode fish-completion farmhouse-theme fancy-battery eziam-theme eyebrowse explain-pause-mode expand-region exotica-theme evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-snipe evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help emr emmet-mode elisp-slime-nav editorconfig dumb-jump dracula-theme dotenv-mode doom-themes dockerfile-mode docker django-theme disaster diminish diff-hl devdocs define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme csv-mode cpp-auto-include counsel-projectile counsel-gtags counsel-css copy-as-format company-ycmd company-web company-shell company-rtags company-restclient company-reftex company-quickhelp company-org-roam company-c-headers company-auctex company-anaconda column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-identifiers-mode cmake-mode cmake-ide clues-theme clean-aindent-mode chocolate-theme cherry-blossom-theme centered-cursor-mode ccls busybee-theme bubbleberry-theme browse-at-remote bm blacken birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile auctex-latexmk apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes alchemist aggressive-indent afternoon-theme ace-link ac-ispell))
 '(pdf-view-midnight-colors (cons "#c8d3f5" "#212337"))
 '(pos-tip-background-color "#ffffffffffff")
 '(pos-tip-foreground-color "#78909C")
 '(projectile-svn-command "fd -0 -t f")
 '(python-shell-interpreter "ipython3" t)
 '(python-shell-interpreter-args "--simple-prompt -i" t)
 '(rustic-ansi-faces
   ["#fafafa" "#e45649" "#50a14f" "#986801" "#4078f2" "#a626a4" "#0184bc" "#383a42"])
 '(smartparens-global-mode t)
 '(tabbar-background-color "#ffffffffffff")
 '(tramp-default-proxies-alist nil)
 '(tramp-save-ad-hoc-proxies t)
 '(vc-annotate-background "#fafafa")
 '(vc-annotate-color-map
   (list
    (cons 20 "#50a14f")
    (cons 40 "#688e35")
    (cons 60 "#807b1b")
    (cons 80 "#986801")
    (cons 100 "#ae7118")
    (cons 120 "#c37b30")
    (cons 140 "#da8548")
    (cons 160 "#c86566")
    (cons 180 "#b74585")
    (cons 200 "#a626a4")
    (cons 220 "#ba3685")
    (cons 240 "#cf4667")
    (cons 260 "#e45649")
    (cons 280 "#d2685f")
    (cons 300 "#c07b76")
    (cons 320 "#ae8d8d")
    (cons 340 "#383a42")
    (cons 360 "#383a42")))
 '(vc-annotate-very-old-color nil)
 '(vc-follow-symlinks t)
 '(yas-snippet-dirs
   '("/home/halushko/.spacemacs.emacs.d/private/snippets/" "/home/halushko/.spacemacs.emacs.d/layers/+completion/auto-completion/local/snippets" yasnippet-snippets-dir)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 '(company-tooltip-common
   ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection
   ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 )
