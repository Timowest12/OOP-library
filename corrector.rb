class Corrector
  def correct_name(name)
    name = name.capitalize
    if name.length >= 10
      name = name[0...10]
      puts name
    end
  end
end
