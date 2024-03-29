;;; init-org.el --- Org-mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package org
  ;;:bind
  ;;(:map org-mode-map
  ;; <<org-mode-keybindings>>)
  :custom
  (org-directory "~/chenqingze.github.io");org文件默认保存目录
  (org-log-done t);待办事项自动记录完成时间
  (org-startup-indented t);保持良好的缩紧结构
  (org-log-into-drawer t);开启跟踪日志
  ;;(org-use-speed-commands
  ;; (lambda ()
  ;;   (and (looking-at org-outline-regexp)
  ;;        (looking-back "^\**"))))
  ;;(org-confirm-babel-evaluate nil)
  ;;(org-src-fontify-natively t);提高代码可读性
  ;;(org-src-tab-acts-natively t);代码缩进
  ;;(org-hide-emphasis-markers t);隐藏标记符号
  ;;(prettify-symbols-unprettify-at-point 'right-edge);设置光标在行末时显示标记符号
  ;;(org-fontify-done-headline t)
  ;;(org-tags-column 0);设置在标题的最后一个字符之后定位标签
  ;;:custom-face
  ;;<<org-mode-faces>>
  :hook
  ;;(org-mode . (lambda () (add-hook 'after-save-hook 'org-babel-tangle :append :local)))
  ;;(org-babel-after-execute . org-redisplay-inline-images);;自动显示内嵌图像
  ;;(org-mode . (lambda ()
  ;;              "Beautify Org Checkbox Symbol"
  ;;            (push '("[ ]" . "☐" ) prettify-symbols-alist)
  ;;            (push '("[X]" . "☑" ) prettify-symbols-alist)
  ;;            (push '("[-]" . "⊡" ) prettify-symbols-alist)
  ;;            (prettify-symbols-mode)));美化复选框列表
  (org-mode . visual-line-mode)
  ;;(org-mode . org-toggle-inline-images)
  (org-mode . variable-pitch-mode)
  ;;:config
  ;; 下面两种模式下禁用 buffer-face-mode和visual-line-mode
  ;;(eval-after-load 'face-remap '(diminish 'buffer-face-mode))
  ;;(eval-after-load 'simple '(diminish 'visual-line-mode))
  )
;; 控制缩进为4个字符
;;(use-package org-indent
;;  :ensure nil
;;  :diminish
;;  :custom
;;  (org-indent-indentation-per-level 4))
;; 美化项目标题
(use-package org-bullets
  :after org
  :hook
  (org-mode . (lambda () (org-bullets-mode 1))))

;; 日程管理 org-agenda
;; 笔记模版 org-capture
;; 双链笔记 org-roam





(provide 'init-org)
;; End:
;;; init-org.el ends here
