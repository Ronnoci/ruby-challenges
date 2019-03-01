# Definition
# 
# Extend the definition class to have three different methods:
# 1. add_word(word, definition), should store a word and definition
# 2. lookup(word), should return a definition
# 3. total_words, should return the total number of words
# 
# Example:
# definition = Definition.new
# definition.add_word('ruby', 'A red, precious stone')
# definition.total_words -> should return 1
# definition.lookup('ruby') -> should return 'A red, precious stone'
#
# Check your solution by running the tests:
# ruby tests/06_definition_test.rb

class Definition
    attr_accessor :word, :definition, :array_word, :array_definition

    def initialize
        @word = word
        @definition = definition
        @array_word = []
        @array_definition = []
    end

    def add_word(word, definition)
        @array_word << word
        @array_definition << definition
        return "#{word}, #{definition}"
    end
    
    def total_words
        return array_word.length
    end
    
    def lookup(word)
        wordindex = @array_word.index(word)
        return @array_definition[wordindex]
    end
  
end

definition = Definition.new
puts definition.add_word("ruby", " A red, precious stone")
puts definition.lookup("ruby")
puts definition.total_words