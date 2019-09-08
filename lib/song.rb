class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  def self.all
    @@all
  end
  def self.create
    @all << self 
  end

  def save
    self.class.all << self
  end

end
