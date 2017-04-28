require('rspec')
require('definition')
require('word')
require('pry')

describe(Word) do

  before() do
    Word.clear()
  end

  describe('#initialize') do
    it("will let you enter a word") do
      test_word = Word.new({:name=> 'Sonder'})
      expect(test_word.name()).to(eq('Sonder'))
    end
  end
  describe('#initialize') do
    it("will have a word with id") do
      test_word = Word.new({:name=> 'Sonder'})
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end
  describe('.find') do
    it("will locate a word by id") do
      test_word = Word.new({:name=> 'Sonder'})
      test_word.save()
      expect(Word.find(1)).to(eq(test_word))
    end
  end

  describe('#id') do
    it("will return a words id") do
      test_word = Word.new({:name=> 'Sonder'})
      expect(test_word.id()).to(eq(1))
    end
  end
end
