;;; init-gui-frames.el --- Behaviour specific to non-TTY frames -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; 设置主题
(load-theme 'wombat)

;; Suppress GUI features
(setq use-file-dialog nil)
(setq use-dialog-box nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Window size and features
;; 设置默认窗口尺寸
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 100))

(setq-default
 window-resize-pixelwise t
 frame-resize-pixelwise t)

(let ((no-border '(internal-border-width . 0)))
  (add-to-list 'default-frame-alist no-border)
  (add-to-list 'initial-frame-alist no-border))

;; 禁用工具栏
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; 禁用滚动条
(when (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))

;; 禁用菜单栏
(menu-bar-mode -1)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq-default cursor-type 'bar)

;; 显示行号
(global-display-line-numbers-mode t)

;; 禁掉一些模式的行号
(dolist (mode '(org-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))







(provide 'init-gui-frames)
;;; init-gui-frames.el ends here
