;;; init-basic.el --- Defaults for basic configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(setq inhibit-startup-message t); 关闭启动页
(setq visible-bell t) ; 禁掉蜂鸣
(setq make-backup-files nil)        ; 禁止备份文件
(setq mac-command-key-is-meta t)
(scroll-bar-mode -1)        ; 禁掉滚动条
(tool-bar-mode -1)          ; 禁掉工具栏
(tooltip-mode -1)           ; 禁掉提示窗
(menu-bar-mode -1)            ; 禁掉菜单栏
(set-fringe-mode 5)                 ; 设置侧边空白大小
(blink-cursor-mode -1)              ; 去掉光标闪烁

(load-theme 'wombat)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
					;设置command键为meta

(fset 'yes-or-no-p 'y-or-n-p)       ; 使用 'y/n' 代替 'yes/no'			      	
(setq-default fill-column 80)       ; 设置填充列

(electric-pair-mode t)              ; 自动补全括号


(column-number-mode); 开启行号
(global-display-line-numbers-mode t); 全局开启行号
;; 禁掉一些模式的行号
(dolist (mode '(org-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))



;; 监听当前 buffer 命令，并显示
(use-package command-log-mode)


;;; 中英文等宽字体
(defun set-font (english chinese english-size chinese-size)
  "Set CHINESE and ENGLISH font size."
   (set-face-attribute 'default nil :font
		       (format   "%s:pixelsize=%d"  english english-size))
   (dolist (charset '(kana han symbol cjk-misc bopomofo))
     (set-fontset-font (frame-parameter nil 'font) charset
		       (font-spec :family chinese :size chinese-size))))


(provide 'init-basic)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init-basic.el ends here
