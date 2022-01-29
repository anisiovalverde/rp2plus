class Game < ApplicationRecord
  belongs_to :plataform
  belongs_to :work
  belongs_to :region
  belongs_to :console
end
