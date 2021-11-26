class Pet
  def initialize(name, type)
    @name = name
    @type = type
    @asleep        = false
    @satiety       = 10
    @pleasure      = 10
    @natural_needs = 0
    @tiredness     = 0
    @skills        = 0
    @clean         = 10
  end

  attr_reader :type

  def feed
    p "Вы кормите #{@name} (а)."
    @satiety = 10
    time_passes
  end

  def train
    p @name + 'уже очень умелый' if @skills == 10
    p "Вы тренируете #{@name} (а)."
    @skills += 2
    time_passes
  end

  def walk
    p "Вы выгуливаете #{@name} (а)."
    @natural_needs = 0
    time_passes
  end

  def put_to_bed
    puts "Вы укладываете #{@name}(а) спать."
    @asleep = true
    p @name + ' уснул(а) и мило посапывает.'
    time_passes
    @asleep = false
    p @name + ' медленно просыпается.'
    @tiredness = 0
  end

  def play
    p @name + '(у) нравится подбрасывать и ловить мяч.'
    @pleasure = 10
    time_passes
  end

   def skillful?
    if (@skills >= 8)
      p 'Ваш любимец очень умелый.'
    else
      p 'Нужно еще немного потренироваться...'
    end
  end

  def wash
    p @name + ' принимает ванну.'
    @clean = 10
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
      puts @name + ' внезапно просыпается!'
    end
  end

  def time_passes
    @satiety       -= 2
    @pleasure      -= 1
    @natural_needs += 2
    @tiredness     += 1
    @clean         -= 2

    if @satiety == 0
      p @name + 'внезапно просыпается!' if @asleep
      p 'Домашний любимец очень голоден! Доведённый до крайности, он убегает.'
      exit
    elsif @pleasure == 0
      p @name + 'внезапно просыпается!' if @asleep
      p 'Домашний любимец на вас обиделся! Доведённый до крайности, он убегает.'
      exit
    elsif @tiredness == 0
      p @name + 'внезапно просыпается!' if @asleep
      p 'Домашний любимец очень устал! Доведённый до крайности он умирает.'
    end

    if @natural_needs >= 10
      @natural_needs = 0
      puts "Опаньки! #{@name} сделал(a) нехорошо..."
    end

    if hungry?
      pet_sleeping?
      puts "В желудке у #{@name} (а) урчит..."
    end

    if poopy?
      pet_sleeping?
      puts @name + ' подпрыгивает, потому что хочет на горшок.'
    end

    if happy?
      pet_sleeping?
      p @name + ' грустит...'
    end

    if tired?
      pet_sleeping?
      p @name + ' хочет отдохнуть.'
    end

    if dirty?
      pet_sleeping?
      p @name + ' хочет принять ванную.'
    end
  end
end

p 'Дайте имя питомцу.'
pet_name = gets.chomp
p 'Укажите питомца'
pet_type = gets.chomp

pet = Pet.new(pet_name, pet_type)
command = ''
p pet_name + ' родился.'
p 'Для справки напишите - help'

while command != 'exit'
  case command = gets.chomp
  when 'exit'
    exit
  when 'feed'
    pet.feed
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
  when 'help'
    p 'feed - покормить.'
    p 'walk - выгулять.'
    p 'train - тренировать.'
    p 'play - поиграть'
    p 'put_to_bed - уложить в кровать.'
    p 'exit - выйти.'
    p 'skillful? - проверить умения.'
  else
    command = gets.chomp
  end
end