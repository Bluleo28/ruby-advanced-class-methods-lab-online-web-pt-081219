class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end
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
