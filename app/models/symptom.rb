class Symptom < ActiveRecord::Base
  has_many :advices
end