;;; robby-grounding-fns.el  --- robby grounding functions  -*- lexical-binding:t -*-

;;; Commentary:

;; A robby grounding filters the response from AI before presenting it to the user.

;;; Code:

(defun robby-extract-code-block (response)
  (with-temp-buffer
    (insert response)
    (goto-char (point-min))
    (let ((beg (re-search-forward "```\n" nil t))
          (end (re-search-forward "```" nil t)))
      (if (and beg end)
          (buffer-substring-no-properties beg (- end 3))
        response))))

(defun robby-format-message-text (text)
  "Replace % with %% in TEXT to avoid format string errors calling `message."
  (replace-regexp-in-string "%" "%%" text))

(provide 'robby-grounding-fns)

;; robby-grounding-fns.el ends here