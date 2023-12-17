class Hardware < ApplicationRecord
  validates :part, :function, presence: true
end
