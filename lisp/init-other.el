;;; init-other.el --- Defaults for basic configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(setq inhibit-startup-message t); 关闭启动页
(setq visible-bell t) ; 禁掉蜂鸣
(setq make-backup-files nil)        ; 禁止备份文件
(setq mac-command-key-is-meta t)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
					;设置command键为meta

(fset 'yes-or-no-p 'y-or-n-p)       ; 使用 'y/n' 代替 'yes/no'			      	
(electric-pair-mode t)              ; 自动补全括号

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





(use-package all-the-icons)

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))



(use-package which-key
  :defer 0
  :diminish which-key-mode
  :config
  (which-key-mode)
  (setq which-key-idle-delay 1))



(provide 'init-other)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init-other.el ends here
