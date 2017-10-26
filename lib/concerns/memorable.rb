module Memorable

  def self.reset_all
      @@songs.clear
      self.all.clear
  end

  def self.count
    @@artists.count
    self.all.count
  end
end
