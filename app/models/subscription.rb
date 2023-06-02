class Subscription < ApplicationRecord
  belongs_to :customer
  belongs_to :tea

  validates_presence_of :title, :price, :status, :frequency

  enum statuses: { active: 0, cancelled: 1 }
  enum frequencies: { weekly: 0, monthly: 1, quarterly: 2, annually: 3 }
end

