;;;
;;; Test html-unescape
;;;

(use gauche.test)

(test-start "html-unescape")
(use html-unescape)
(test-module 'html-unescape)

(test* "html-unescape-string" "\x21D3;-\x25C9;-\x25B7;"
       (html-unescape-string "&dArr;-&#x25C9;-&#9655;"))

(test-end :exit-on-failure #t)
