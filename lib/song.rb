class Song
  attr_accessor :name, :artist_name
  @@all = []
  @@people = []

  def initialize(name)
    @name = name
    @@all << self
    @@people << self
  end

  def self.create
    song = self.new
    save
    end
  def self.create_by_name
    song = self.new_by_name
    song.name = song_name
    song.save
    song
  end 

  def self.all
    @@all
    @@people
  end

  def self.new_by_name(name)
    @@all.find{|person| person.name == name}
    @@people.find{|people|person.name == name}
  end


  def save
    self.class.all << self
  end

end
