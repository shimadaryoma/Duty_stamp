class Stamp < ApplicationRecord
  has_many :overtimes, dependent: :destroy
  belongs_to :enployee, optional: :destroy

  require 'time'


end
