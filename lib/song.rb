class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self

  def self.create
    song = self.create
    @@all = self.save
  end
end

  def save
    self.class.all << self
  end

end
