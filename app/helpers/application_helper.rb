module WyncodeHelpers
  module ApplicationHelper
    def rendered(raw_string, opts = {tag: "div"})
      <<-HTML.html_safe
        <#{opts[:tag]} class="marked-render" data-raw="#{h raw_string}"></#{opts[:tag]}>
      HTML
    end
  end
end