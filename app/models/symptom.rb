class Symptom < ActiveRecord::Base
  has_many :advices
  belongs_to :term
end