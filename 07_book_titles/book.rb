class Book
  EXCEPTIONS = ["in", "the", "of", "and", "a", "an"]

  attr_reader :title

  # def initialize(title)
  #   @title = title
  # end

  def title=(title)
      words = title.split(" ")
      words = words.map do |word|
        unless EXCEPTIONS.include?(word)
          word.capitalize
        else
          word
        end
      end
      words[0].capitalize!
      @title = words.join(" ")
  end
end