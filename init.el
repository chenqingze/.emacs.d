;;关闭启动画面
(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode -1)            ; Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

(load-theme 'wombat)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
;设置command键为meta
(setq mac-command-key-is-meta t)
;自定义文件位置
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Initialize package sources
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))
(require 'bind-key)
(setq use-package-verbose nil)

(setq use-package-always-ensure t)
(column-number-mode)
(global-display-line-numbers-mode t)
;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;;; package 使用
;; :init 在 package 加载之前执行
;; :config 在 package 加载之后配置
;; :bind 按键绑定
;; :custom 可自定义 package custom variables
;; :hook 为 package hooks 添加函数
;; :ensure t 若未安装 package，则自动安装
;; :diminish 不在 mode-line 显示 minor-mode
;; :demand 覆盖包的延迟加载，强制立即加载
;; :disabled 禁用模块
;; :map 局部键绑定，只有 package 加载后生效
;; :defer 延迟加载（:commands,:bind, :bind*, :mode 都有延迟加载效果)
;; :commands 创建自动加载，参数为 symbol 或 symbol 列表

;; 监听当前 buffer 命令，并显示
(use-package command-log-mode)
(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

;(buse-package which-key
;  :init (which-key-mode)
;  :diminish which-key-mode
;  :config
;  (setq which-key-idle-delay 1))
