module BlogsHelper
  def generate_smiley(content)
    content = content.gsub(" :)", " #{image_tag '/assets/smile.png', alt: ':)'}")
    content = content.gsub(" ;)", " #{image_tag '/assets/naughty.png', alt: ';)'}")
    content = content.gsub(" :D", " #{image_tag '/assets/happy.png', alt: ':D'}")
    content = content.gsub(" :P", " #{image_tag '/assets/joke.png', alt: ':P'}")
    content = content.gsub(" :/", " #{image_tag '/assets/unhappy.png', alt: ':/'}")
    content = content.gsub(" :(", " #{image_tag '/assets/sad.png', alt: ':('}")
    content = content.gsub(" ;(", " #{image_tag '/assets/cry.png', alt: ';('}")

    content = content.gsub(" :-)", " #{image_tag '/assets/smile.png', alt: ':-)'}")
    content = content.gsub(" ;-)", " #{image_tag '/assets/naughty.png', alt: ';-)'}")
    content = content.gsub(" :-D", " #{image_tag '/assets/happy.png', alt: ':-D'}")
    content = content.gsub(" :-P", " #{image_tag '/assets/joke.png', alt: ':-P'}")
    content = content.gsub(" :-/", " #{image_tag '/assets/unhappy.png', alt: ':-/'}")
    content = content.gsub(" :-(", " #{image_tag '/assets/sad.png', alt: ':-('}")
    content = content.gsub(" ;-(", " #{image_tag '/assets/cry.png', alt: ';-('}")
    alt = ":'("
    content = content.gsub(" :'(", " #{image_tag '/assets/cry.png', alt: '" + alt + "'}")
  	content
  end
end
