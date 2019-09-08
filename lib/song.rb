class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  def Song.create
    song = Song.create
    @@all
    Song.save
  end
end

  def save
    self.class.all << self
  end

end
