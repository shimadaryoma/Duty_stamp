class Enployee < ApplicationRecord
  has_many :stamps, dependent: :destroy 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         

  #work_start=Time.parse(work_start)
  #work_finish=Time.parse(work_finish)
end
