class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient}
end


#rails generate model Doses description:string ingredient_id:references cocktail_id:references!!!!!!!!!!!!!