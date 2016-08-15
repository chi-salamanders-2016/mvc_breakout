class Song

  attr_reader :id, :name, :artist

  def initialize(args = {})
    @id = args[:id]
    @name = args[:name]
    @artist = args[:artist]
  end

  def to_s
    "#{id}, #{name}, #{artist}"
  end

  def to_a
    [id, name, artist]
  end
end