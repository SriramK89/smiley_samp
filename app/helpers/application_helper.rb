module ApplicationHelper
  def emoji_renderer(content)
    emoji_object = Redcarpet::Markdown.new(MdEmoji::Render, :no_intra_emphasis => true)
    emoji_object.render(content).html_safe
  end
end
