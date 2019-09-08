class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize
    @@all << self
  end
end
  def self.all
    @@all
  end

  def self.create
    song = self.new
    save
  end
end

  def save
    self.class.all << self
  end

end
