#Create a Penguin class:
#Should be instantiated with a name
#Should be able to read the penguins name but not write it (hint: use one of the attrs)
#Should have one method called looks that returns 'Fuzzy!'

class Penguin
  def name
    return "Becca"
  end

  def looks
    return 'Fuzzy!'
  end
end

a_penguin = Penguin.new
puts a_penguin.name
puts a_penguin.looks
