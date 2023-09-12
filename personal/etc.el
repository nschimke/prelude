(load "server")
(unless (server-running-p) (server-start))

(setq whitespace-line-column 120)
(add-hook 'rust-mode-hook
          (lambda ()
            (setq-local whitespace-line-column 99)))

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(require 'ox-md)
