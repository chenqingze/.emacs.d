;;; init-markdown.el --- Defaults for basic configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

(provide 'init-markdown)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init-markdown.el ends here
