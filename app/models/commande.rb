class Commande < ApplicationRecord

    has_many :factures 
    has_many :clients 
    belongs_to :table

end
