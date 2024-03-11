;;; robby.el --- Extensible OpenAI Integration -*- lexical-binding:t -*-

;; Author: Steve Molitor <stevemolitor@gmail.com>
;; Maintainer: Steve Molitor <stevemolitor@gmail.com>
;; URL: https://github.com/stevemolitor/robby
;; Version: 0.0.1
;; Package-Requires: ((emacs "29.1") (spinner "1.7.4") (transient "0.5.3") (markdown-mode "2.5"))
;; Homepage: https://github.com/stevemolitor/robby

;;; Commentary:

;; Robby provides an extensible interface to OpenAI. It provides basic
;; commands to use OpenAI with regions, the minibuffer, and help
;; windows. It also provides a mechanism for defining your own
;; interactive AI commands, and to save the last executed command as a
;; reusable custom AI command. See the README for more details.

;; check for missing requires on compilation
(eval-when-compile
  (require 'cl-generic)
  (require 'cl-lib)
  (require 'cus-edit)
  (require 'diff)
  (require 'files)
  (require 'json)
  (require 'markdown-mode)
  (require 'map)
  (require 'rx)
  (require 'seq)
  (require 'spinner)
  (require 'transient))

;;; require files with exported / autoloaded commands or functions
(require 'robby-commands)
(require 'robby-customization)
(require 'robby-example-commands)
(require 'robby-mode)
(require 'robby-spinner)
(require 'robby-transients)

(provide 'robby)
;;; robby.el ends here
