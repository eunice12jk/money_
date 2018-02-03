class Project < ActiveRecord::Base
    has_one :tl
    belongs_to :team
end
