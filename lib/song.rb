class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  def self.create
    song = self.new
    self.save
    song
  end

  def save
    self.class.all << self
  end

end
