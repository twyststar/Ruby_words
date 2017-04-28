class Word
  attr_reader(:word, :id)
  @@words = []

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @id = @@words.length() + 1
  end

  define_singleton_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end

  define_singleton_method(:all) do
    @@words
  end
end
