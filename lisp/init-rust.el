;;; init-rust.el --- Org-mode config -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package toml-mode)

(use-package rust-mode
  :hook
  (rust-mode . (lambda () (setq indent-tabs-mode nil)))
  (rust-mode . (lambda () (prettify-symbols-mode)))
  :config
  (setq rust-format-on-save t))

(provide 'init-rust)


;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init-rust.el ends here
