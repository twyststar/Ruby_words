class Word
  attr_reader(:name, :id, :definitions)
  @@words = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@words.length() + 1
    @definitions = []
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:id) do
    @id
  end
  define_method(:save) do
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
