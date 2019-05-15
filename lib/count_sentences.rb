require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
   delimiters = ['. ', "! ", "? "]
   words = self.split(Regexp.union(delimiters))
   counts = words.count
   return counts
  end
end