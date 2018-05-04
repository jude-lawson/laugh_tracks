require_relative 'special'
class Comedian < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true

  def self.find_special(id)
    Special.find_by(comedian_id: id)
  end
end
