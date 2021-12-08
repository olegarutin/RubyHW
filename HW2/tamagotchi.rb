require 'ruby_page'

class Pet
  def initialize(name)
    @name          = name
    @asleep        = false
    @satiety       = 20
    @water         = 20
    @pleasure      = 20
    @natural_needs = 0
    @tiredness     = 0
    @skills        = 0
    @clean         = 20
  end

  attr_reader :name, :satiety, :water, :pleasure, :natural_needs, :tiredness, :skills, :clean

  def feed
    p "You feed #{@name}."
    @satiety = 20
    time_passes
    generate_html(self)
  end

  def drink
    p "You drink #{@name}."
    @water = 20
    time_passes
    generate_html(self)
  end

  def train
    p "#{@name} needs no training." if @skills == 20
    p "You train #{@name}."
    @skills += 2
    time_passes
    generate_html(self)
  end

  def walk
    p "You walk #{@name}."
    @natural_needs = 0
    time_passes
    generate_html(self)
  end

  def put_to_bed
    p "You put #{@name} to bed."
    @asleep = true
    p "#{@name} sleeps and snores."
    time_passes
    p "#{@name} wakes up slowly."
    @asleep = false
    @tiredness = 0
    generate_html(self)
  end

  def play
    p "#{@name} throws and catches ball."
    @pleasure = 20
    time_passes
    generate_html(self)
  end

  def skillful?
    if @skills >= 18
      p 'Your pet is very skillful.'
    else
      p 'Need some more practice.'
    end
  end

  def wash
    p "#{@name} takes a bath."
    @clean = 20
    generate_html(self)
  end

  def parameters
    p "Name: #{@name}"
    p "Pet: #{pet}"
    p "Satiety: #{@satiety}"
    p "Water: #{@water}"
    p "Pleasure: #{@pleasure}"
    p "Natural_needs: #{@natural_needs}"
    p "Tiredness: #{@tiredness}"
    p "Skills: #{@skills}"
    p "Clean: #{@clean}"
  end

  def generate_html(pet)
    HtmlGenerator.new(content: pet.html_content, bypass_html: true).generate_html
  end

  def html_content
    %i[pet name satiety water pleasure natural_needs tiredness skills clean status].map do |param|
      "#{param}: #{send(param)}"
    end
  end

  def status
    if pleasure > 10
      '😁'
    elsif pleasure > 1
      '😔'
    else
      '😵'
    end
  end

  def pet
    self.class
  end

  def help
    p 'exit - exit the program.'
    p 'feed - feed your pet.'
    p 'drink - drink your pet.'
    p 'walk - walk your pet.'
    p 'train - train your pet.'
    p 'play - play with your pet.'
    p 'put_to_bed - put your pet to bed.'
    p 'skillful? - test your pet\'s skills.'
    p 'wash - wash your pet.'
    p 'pet - type of pet.'
    p 'name - pet\'s name'
    p 'parameters - check the parameters.'
  end

  private

  def hungry?
    @satiety <= 4
  end

  def poopy?
    @natural_needs >= 18
  end

  def happy?
    @pleasure <= 4
  end

  def tired?
    @tiredness >= 18
  end

  def dirty?
    @clean <= 4
  end

  def pet_sleeping?
    if @asleep
      @asleep = false
      p "#{@name} He wakes up suddenly!"
    end
  end

  def wants_drink?
    @water <= 4
  end

  def change_params
    @satiety       -= 4
    @pleasure      -= 3
    @natural_needs += 3
    @tiredness     += 3
    @clean         -= 1
    @water         -= 3
  end

  def pet_alive
    if @satiety.negative?
      pet_sleeping?
      p "#{@name} is starving! In desperation, he go away."
      exit
    elsif @pleasure.negative?
      pet_sleeping?
      p "#{@name} offended at you! In desperation, he go away."
      exit
    elsif @tiredness.negative?
      pet_sleeping?
      p "#{@name} is very tired! In desperation, he died."
      exit
    elsif @water.negative?
      pet_sleeping?
      p "#{@name} is dehydrated! In desperation, he died."
      exit
    end
  end

  def time_passes
    change_params
    pet_alive

    if @natural_needs >= 20
      @natural_needs = 0
      p "Whoops! #{@name} had an accident..."
    end

    if hungry?
      pet_sleeping?
      p "#{@name} stomach grumbles..."
    end

    if poopy?
      pet_sleeping?
      p "#{@name} does the potty dance..."
    end

    if happy?
      pet_sleeping?
      p "#{@name} is sad."
    end

    if tired?
      pet_sleeping?
      p "#{@name} wants to sleep."
    end

    if dirty?
      pet_sleeping?
      p "#{@name} wants to take a bath."
    end

    if wants_drink?
      pet_sleeping?
      p "#{@name} wants to drink."
    end
  end
end

class Dragon < Pet
  def fire_breathe
    p "#{@name} burns your cap."
    @pleasure += 2
    time_passes
  end

  def help
    super
    p 'fire_breathe: breathe the flame.'
  end
end

class Dog < Pet
  def bring_ball
    p "You throw the ball to #{@name} and he brings it."
    @pleasure = 20
    time_passes
  end

  def help
    super
    p 'bring_ball: bring the thrown ball.'
  end
end

class Bird < Pet
  def fly
    p "#{@name} takes off and spin around you."
    @pleasure = 20
    time_passes
  end

  def help
    super
    p 'fly: go for a fly.'
  end
end

class Duck < Pet
  def swim
    p "#{@name} jumps into the water and swims."
    @pleasure = 20
    @clean = 20
    @satiety += 2
    time_passes
  end

  def help
    super
    p 'swim: go for a swim.'
  end
end

p 'Give a name to your pet.'
pet_name = gets.chomp

p 'Choose your pet (dragon dog, bird, duck).'
command = gets.chomp

pet = nil

while pet.nil?
  case command
  when 'dragon'
    pet = Dragon.new(pet_name)
  when 'bird'
    pet = Bird.new(pet_name)
  when 'dog'
    pet = Dog.new(pet_name)
  when 'duck'
    pet = Duck.new(pet_name)
  else
    p 'Select an animal from the list(dragon dog, bird, duck).'
    command = gets.chomp
  end
end

p "#{pet_name} is born.."
p 'Write help for information.'
until command == 'exit'
  command = gets.chomp
  case command
  when 'exit'
    exit
  when 'feed'
    pet.feed
  when 'drink'
    pet.drink
  when 'train'
    pet.train
  when 'walk'
    pet.walk
  when 'play'
    pet.play
  when 'put_to_bed'
    pet.put_to_bed
  when 'skillful?'
    pet.skillful?
  when 'pet'
    p pet.pet
  when 'name'
    p pet.name
  when 'wash'
    pet.wash
  when 'parameters'
    pet.parameters
  when 'help'
    pet.help
  when 'fire_breathe'
    pet.fire_breathe
  when 'fly'
    pet.fly
  when 'swim'
    pet.swim
  when 'bring_ball'
    pet.bring_ball
  else
    p 'Сommand is not correct write help for information.'
  end
end
