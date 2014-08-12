class FighterJet

  attr_accessor :speed, :missiles, :bombs, :max_g, :range

  @@fighter_total = 0

  def self.fighter_iron
    puts "We have #{@@fighter_total} jets on the ramp"
  end

  def initialize(s, m, b, g, r)
    self.speed = s
    self.missiles = m
    self.bombs = b
    self.max_g = g
    self.range = r
    @@fighter_total += 1 
  end

  module Stealth
    @@RCS = 0 
  end
end

class Viper < FighterJet
end

snake = Viper.new(600, 4, 2, 9, 2000)

FighterJet.fighter_iron

puts snake.speed






