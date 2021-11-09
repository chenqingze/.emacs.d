;;; init-package.el --- package management -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; 加载包管理器
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
;; 如果又没安装的package 则安装
(unless package-archive-contents
  (package-refresh-contents))

;; 如果use-package没有安装，则安装
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))
;(require 'diminish)               
(require 'bind-key)               

(setq use-package-verbose nil)

;; 全局配置user-package :ensure参数
(setq use-package-always-ensure t)

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


(provide 'init-package)
;;; init-package.el ends here
