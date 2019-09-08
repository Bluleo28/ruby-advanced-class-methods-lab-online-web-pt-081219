class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find{|person| person.name == name}
  end

  def self.create
    song = self.new
    save
  end

  def save
    self.class.all << self
  end

end
