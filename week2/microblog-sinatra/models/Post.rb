class Post
  attr_accessor :id, :date, :text, :tags
  
  @@counter = 0

  def initialize(text)
    @id = @@counter
    @@counter = @@counter + 1
    @date = Time.new
    @text = text
    @tags = text.scan(/#[a-zA-Z0-9_?!=]{1,}/).map { |tag| tag[1..-1].to_sym }
  end

  def has_tag?(tag)
    @tags.include? tag
  end
end