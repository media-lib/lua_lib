
STAMP = Time.now.to_i

module Dot_Why
  class Template

    def title txt = nil
      if txt
        @_title = txt
      else
        super(@_title)
      end
    end

    def stylesheet name
      filename = if name[/\:/]
                   name
                 else
                   "/css/#{name}.css?#{STAMP}"
                 end
      link(:rel=>'stylesheet', :type=>'text/css', :href=>filename, :media=>'screen')
    end

    def content
      rawtext "<!DOCTYPE html>"
      html(:lang=>'en') do
        head do
          title
          meta(:"http-equiv"=>"Content-Type",  :content=>"text/html charet=UTF-8" )
          meta(:"http-equiv"=>"Cache-Control", :content=>"no-cache, max-age=0, must-revalidate, no-store, max-stale=0, post-check=0, pre-check=0" )
          link(:rel=>'shortcut icon', :href=>'/favicon.ico')
          stylesheet 'http://fonts.googleapis.com/css?family=Marcellus+SC'
          stylesheet 'vanilla'
          stylesheet 'highlight'
          stylesheet 'layout'

          styles
        end
        body do
          main
        end
      end
    end
  end
end # === module
