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
      test_word = Word.new({:word=> 'Sonder'})
      expect(test_word.word()).to(eq('Sonder'))
    end
  end
  describe('.find') do
    it("will locate a word by id") do
      test_word = Word.new({:word=> 'Sonder'})
      expect(test_word.id()).to(eq(1))
    end
  end
end
