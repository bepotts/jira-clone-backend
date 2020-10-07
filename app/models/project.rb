class Project < ApplicationRecord
  has_one :status
  belongs_to :team
end
