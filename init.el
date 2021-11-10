;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; Produce backtraces when errors occur: can be helpful to diagnose startup issues
;; Activate debugging.
(setq debug-on-error t
      debug-on-signal nil
      debug-on-quit nil)

;; 通过设置启动时（启动前和启动后）的垃圾回收阀门值来减少启动时间
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  ;; 测量启动时间
  (add-hook 'emacs-startup-hook
            (lambda ()
              (message "*** Emacs loaded in %s seconds with %d garbage collections." (emacs-init-time) gcs-done)
              (setq gc-cons-threshold normal-gc-cons-threshold))))

;; 启动引导配置
;; 设置自定义配置文件加载目录
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; 配置用户定制化信息文件位置
(setq custom-file (locate-user-emacs-file "lisp/custom.el"))

(require 'init-package)
(require 'init-other)
(require 'init-gui-frames)
(require 'init-themes)
(require 'init-macos-keys)
(require 'init-org)
;; Variables configured via the interactive 'customize' interface
(when (file-exists-p custom-file)
  (load custom-file 'no-error 'no-message))

(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init.el ends here
