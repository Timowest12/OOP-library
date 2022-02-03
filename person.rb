require_relative './corrector'
require_relative './rental'

class Person
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission = 'true')
    @id = Random.rand(1..100_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @corrector = Corrector.new
    @rental = []
  end

  def validate_name
    @name = @corrector.correct_name(name)
  end

  def validate_name
    @name = @corrector.correct_name(name)
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end
end

puts Person.new(22, 'bhvhjdsbjedsjvnknvkjdn').validate_name
