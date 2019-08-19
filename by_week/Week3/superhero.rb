class Superhero
  # constructor

  def initialize(superhero_name)
    @superhero_name = superhero_name
  end

  def say_cool_speech
    return "My name is #{@superhero_name}, and I'm here to defeat evil!"
  end

end