class Lot < ApplicationRecord

    has_many :matieres 
    belongs_to :fournisseur 
end
