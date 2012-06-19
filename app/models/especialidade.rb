class Especialidade < ActiveRecord::Base
  validates :nome, presence: true
end
