
;;; init-ui.el --- settings for theme, modeline -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package command-log-mode
  :commands command-log-mode)


;(use-package doom-themes
;  :init (load-theme 'doom-palenight t))



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


(provide 'init-ui)
;;; init-ui.el ends here
