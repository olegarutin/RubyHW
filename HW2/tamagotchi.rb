class Pet
  def initialize(name, type)
    @name          = name
    @type          = type
    @asleep        = false
    @satiety       = 10
    @water         = 10
    @pleasure      = 10
    @natural_needs = 0
    @tiredness     = 0
    @skills        = 0
    @clean         = 10
  end

  attr_reader :type, :name

  def feed
    p "You feed #{@name}."
    @satiety = 10
    time_passes
  end

  def drink
    p "You drink #{@name}"
    @water = 10
    time_passes
  end

  def train
    p @name + ' needs no training.' if @skills == 10
    p "You train #{@name}."
    @skills += 2
    time_passes
  end

  def walk
    p "You walk #{@name}."
    @natural_needs = 0
    time_passes
  end

  def put_to_bed
    p "You put #{@name} to bed."
    @asleep = true
    p "#{@name} sleeps and snores."
    time_passes
    p "#{@name} wakes up slowly."
    @asleep = false
    @tiredness = 0
  end

  def play
    p "#{@name} throws and catches ball."
    @pleasure = 10
    time_passes
  end

   def skillful?
    if @skills >= 8
      p 'Your pet is very skillful.'
    else
      p 'Need some more practice.'
    end
  end

  def wash
    p "#{@name} takes a bath."
    @clean = 10
  end

  def parameters
    p "name: #{@name}"
    p "type: #{@type}"
    p "satiety: #{@satiety}"
    p "water: #{@water}"
    p "pleasure: #{@pleasure}"
    p "natural_needs: #{@natural_needs}"
    p "tiredness: #{@tiredness}"
    p "skills: #{@skills}"
    p "clean: #{@clean}"
  end

  private

  def hungry?
    @satiety <= 2
  end

  def poopy?
    @natural_needs >= 8
  end

  def happy?
    @pleasure <= 2
  end

  def tired?
    @tiredness >= 8
  end

  def dirty?
    @clean <= 2
  end

  def pet_sleeping?
    if @asleep
      @asleep = false
      p "#{@name} He wakes up suddenly!"
    end
  end

  def wants_drink?
    @water <= 2
  end

  def time_passes
    @satiety       -= 2
    @pleasure      -= 1
    @natural_needs += 2
    @tiredness     += 1
    @clean         -= 2

    if @satiety == 0
      pet_sleeping?
      p "#{@name} is starving! In desperation, he go away."
      exit
    elsif @pleasure == 0
      pet_sleeping?
      p "#{@name} offended at you! In desperation, he go away."
      exit
    elsif @tiredness == 0
      pet_sleeping?
      p "#{@name} is very tired! In desperation, he died."
      exit
    elsif @water == 0
      pet_sleeping
      p "#{@name} is dehydrated! In desperation, he died."
    end

    if @natural_needs >= 10
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

p 'Give a name to your pet.'
pet_name = gets.chomp
p 'Specify the type of pet.'
pet_type = gets.chomp
pet = Pet.new(pet_name, pet_type)
command = ''
p pet_name + ' is born..'
p 'Write help for information.'

while command != 'exit'
  case command = gets.chomp
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
  when 'type'
    p pet.type
  when 'name'
    p pet.name
  when 'wash'
    pet.wash
  when 'parameters'
    pet.parameters
  when 'help'
    p 'feed - feed your pet.'
    p 'drink - drink your pet.'
    p 'walk - walk your pet.'
    p 'train - train your pet.'
    p 'play - play with your pet.'
    p 'put_to_bed - put your pet to bed.'
    p 'skillful? - test your pet\'s skills.'
    p 'wash - wash your pet.'
    p 'type - type of pet.'
    p 'name - pet\'s name'
    p 'parameters - check the parameters.'
    p 'exit - exit the program.'
  else
    p 'Сommand is not correct write help for information.'
    command = gets.chomp
  end
end