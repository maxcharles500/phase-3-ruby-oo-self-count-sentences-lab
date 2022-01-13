require 'pry'

class String

  def sentence?
    if self[-1] == "." 
      true
    else 
      false
    end
  end

  def question?
    if self[-1] == "?" 
      true
    else 
      false
    end
  end

  def exclamation?
    if self[-1] == "!" 
      true
    else 
      false
    end
  end

  def count_sentences
    sent = 0
    words = self.split(' ')
    words.each do |word| 
    if word.include?('?')
      sent += 1
    elsif word.include?('!')
      sent += 1
    elsif word.include?('.') 
      sent += 1
    end
  end
    return sent
  end
end