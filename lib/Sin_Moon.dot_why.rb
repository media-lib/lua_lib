
require 'pygments'

module Dot_Why
  class Template
    def highlight *args
      code = args.pop
      lang = args.shift || 'lua'

      rawtext Pygments.highlight(code, :lexer=>lang)
    end
  end
end # === module
