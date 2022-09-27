class User < ApplicationRecord

    enum role: %i[employe client admin fournisseur ]

end
