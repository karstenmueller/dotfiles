# This file describes the desired state of brew installed apps if using the followimg commands::
# brew bundle check --global || ( brew bundle --global; brew bundle --cleanup --global); brew upgrade; brew cleanup

cask_args appdir: '/Applications'

# Taps
tap 'homebrew/core'             # -- Core formulae for the Homebrew package manager
tap 'homebrew/bundle'           # -- Bundler for non-Ruby dependencies from Homebrew, Homebrew Cask, Mac App Store and Whalebrew
tap 'homebrew/services'         # -- Manage background services with macOS' launchctl daemon manager.

# Docker Inc
cask 'docker'                   # -- Docker Desktop (run it to create the link to docker command)
brew 'colima'                   # -- Container runtimes on MacOS (and Linux) with minimal setup
# brew 'nerdctl'                  # Docker-compatible CLI for containerd

# Kubernetes
# brew 'kubernetes-cli'           # -- Kubernetes command-line interface
# tap 'johanhaleby/kubetail'      # -- aggregate (tail/follow) logs from multiple pods into one stream
# brew 'stern'                    # -- Tail multiple Kubernetes pods & their containers
# brew 'kubectx'                  # -- Tool that can switch between kubectl contexts easily and create aliases
# brew 'krew'                     # -- Package manager for kubectl plugins
# brew 'kube-ps1'                 # -- Kubernetes prompt info for bash and zsh
# brew 'derailed/k9s/k9s'         # -- provides a terminal UI to interact with your Kubernetes clusters
# brew 'derailed/popeye/popeye'   # -- A Kubernetes Cluster Sanitizer
# brew 'kubescape'                # -- Kubescape is a K8s open-source tool providing a multi-cloud K8s single pane of glass

# Helm
# brew 'helm@2'
# brew 'helmfile'                 # -- Deploy Kubernetes Helm Charts
# tap 'helm/tap'  
# brew 'chart-releaser'           # -- Helps Turn GitHub Repositories into Helm Chart Repositories

# Cloud azure
# brew 'azure/draft/draft'
# brew 'azure-cli'

# Cloud google
# cask 'google-cloud-sdk'       

# Cloud aws
# tap 'versent/homebrew-taps'
brew 'awscli'                   # -- Official Amazon AWS command-line interface
# brew 'chamber'
# brew 'saml2aws'                 # -- enables you to login and retrieve AWS temporary credentials using with ADFS or PingFederate Identity Providers
# cask 'session-manager-plugin'   # -- Plugin for AWS CLI to start and end sessions that connect to managed instances
# tap 'weaveworks/tap'
# brew 'weaveworks/tap/eksctl'    # -- a CLI tool for creating clusters on EKS 
# cask 'aws-vault'                # -- ool to securely store and access AWS credentials in a development environment

# Ubuntu
# cask 'multipass'              # -- Orchestrates virtual Ubuntu instances

# Terraform related
brew 'graphviz'                 # -- Graph visualization software from AT&T and Bell Labs
# terraform installed by tfenv
brew 'tfenv', link: true        # -- Terraform version manager
brew 'tflint'                   # -- Linter for Terraform files
brew 'terraform-docs'           # -- Tool to generate documentation from Terraform modules
# terragrunt installed by tgenv
# tap 'alextodicescu/tgenv'
# brew 'tgenv', link: true        # -- Terragrunt version manager
brew 'tfsec'                    # -- Static analysis security scanner for your terraform code
brew 'terrascan'                # -- Detect compliance and security violations across Infrastructure as Code
brew 'infracost'                # -- Cost estimates for Terraform
# tap 'salesforce/policy_sentry' 'https://github.com/salesforce/policy_sentry' # -- IAM Least Privilege Policy Generator
# brew 'policy_sentry'

# Pulumi related
# brew 'pulumi'

# Microsoft related
# cask 'powershell'             # -- Command-line shell and scripting language
# brew 'unix2dos'               # -- Convert text between DOS, UNIX, and Mac formats

# Font related
tap 'homebrew/cask-fonts'
cask 'font-source-code-pro-for-powerline' # -- Open Source Font 
# cask 'font-source-code-pro'     # -- Open Source Font 
# cask 'font-source-sans-pro'     # -- Open Source Font 
#cask 'font-fantasque-sans-mono'
brew 'svn'                      # -- Required by font-source-*-pro
brew 'highlight'                # -- Convert source code to formatted text with syntax highlighting

# QuickLook
# See https://github.com/sindresorhus/quick-look-plugins
# cask 'betterzip'              # -- Utility to create and modify archives
# cask 'quicklook-json'         # -- preview JSON files

# git tools
# brew 'git'                    # -- Distributed revision control system --> Better use macOS git 
brew 'gitup'                    # -- Git interface focused on visual interaction
brew 'git-secret'               # -- Prevents you from committing sensitive information to a git repo
brew 'pre-commit'               # -- Framework for managing multi-language pre-commit hooks

# GitHub tools
brew 'gh'                       # -- GitHub’s official command line tool
# cask 'github'                   # -- GitHub’s official desktop client
brew 'gitversion'               # -- semantic versioning
# brew 'git-credential-oauth'   # -- Stores Git credentials
# brew 'act'                      # -- Run your GitHub Actions locally
brew 'actionlint'               # -- Static checker for GitHub Actions workflow files


# Editor & Terminal tools
cask 'visual-studio-code'       # -- Open-source code editor
cask 'alacritty'                # -- Cross-platform, GPU-accelerated terminal emulator
# cask 'kitty'                    # -- GPU-based terminal emulator
brew 'ripgrep'                  # -- a line-oriented search tool that recursively searches your current directory for a regex pattern.
brew 'tmux'                     # -- Terminal multiplexer
# cask 'obsidian'                 # -- Knowledge base that works on top of a local folder of plain text Markdown files
# yaml / json
brew 'jq'                       # -- command-line JSON processor
brew 'yq'                       # -- Process YAML documents from the CLI
brew 'yamllint'                 # -- Linter for YAML files
# tap 'starkandwayne/cf'        # -- BOSH / Cloud Foundry / Kubernetes utilities
# brew 'spruce'                 # -- a general purpose YAML & JSON merging tool
cask 'postman'                # -- Collaboration platform for API development
# cask 'mactex-no-gui'            # -- Full TeX Live distribution without GUI applications, use with VScode extension "Latex Workshop"

# Shell tools
brew 'bash'                     # -- install bash version > 4 (macos provides version 3)
brew 'fzf'                      # -- Command-line fuzzy finder written in Go
brew 'direnv'                   # -- Load/unload environment variables based on $PWD
brew 'shellcheck'               # -- Static analysis and lint tool, for (ba)sh scripts
brew 'shfmt'                    #  Autoformat shell script source code
brew "gnu-sed"                  # -- GNU `sed`

# dev Node.js
brew 'node'                     # -- Platform built on V8 to build network applications
brew 'nvm'                      # -- Manage multiple Node.js versions
brew 'yarn'
# dev Ruby
# brew 'rbenv'                  # -- ruby version manager
# brew 'ruby-build'             # -- Install various Ruby versions and implementations

# dev Go 
brew 'golang'                   # -- programming language
brew 'dep'                      # -- DEPRECATED dependency management tool for Go

# dev python
brew 'python3'
brew 'pyenv-virtualenv'
brew 'python-tk'

# dev Kubernetes
# brew 'skaffold', link: true     # -- cli tool that facilitates continuous development for Kubernetes applications.

# dev typescript
brew 'typescript'               # -- Language for application scale JavaScript development

# miscellaneous tools
brew 'dialog'                   # -- Script-driven curses widgets (application and library)
brew 'pandoc'                   # -- a universal document converter
brew 'watch'                    # -- procps
brew 'mosh'                     # -- mobile shell / Remote terminal application
brew 'nmap'                     # -- utility for network discovery and security auditing
brew 'coreutils'                # -- GNU core utilities
brew 'tree'                     # -- recursive directory listing command
brew 'mtr'                      # -- improved traceroute
brew 'keychain'                 # -- helps you to manage SSH and GPG keys in a convenient and secure manner
brew 'wget'                     # -- retrieves content from web servers
brew 'hugo'                     # -- framework for building websites
brew 'miniupnpc'                # -- enabling applications to access the services provided by an UPnP "Internet Gateway Device"
brew 'gnupg'                    # -- GNU Pretty Good Privacy (PGP) package
brew 'pinentry-mac'             # -- Pinentry for GPG on Mac
cask 'flux'                     # -- Adaptive brightness for external displays
# brew 'ffmpeg'                   # -- Play, record, convert, and stream audio and video

# more messengers ;)
# cask 'slack'
# cask 'telegram'
cask 'signal'

# miscellaneous apps
# cask 'dropbox'                  # -- Client for the Dropbox cloud storage service
# cask 'alfred'                   # -- Application launcher and productivity software
# cask 'caffeine'                 # -- Utility that prevents the system from going to sleep
cask 'google-chrome'            # -- Web Browser
# cask 'hazel'                    # -- Automated organization
# cask 'calibre'                  # -- E-books management software
cask 'grandperspective'         # -- Graphically shows disk usage within a file system
cask 'atext'                    # -- Tool to replace abbreviations while typing
# cask 'openconnect-gui'          # -- Graphical OpenConnect client
# cask '1password-cli'            # -- Command-line helper for the 1Password password manager
cask 'drawio'                   # -- free online diagram software
# cask 'deepl'                    # -- online translating helper
# cask 'firefox'                  # -- Web Browser Mozilla Firefox
# cask 'monitorcontrol'           # -- Tool to control external monitor brightness & volume
# cask 'handbrake'
