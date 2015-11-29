class Advice < ActiveRecord::Base
  belongs_to :country
  belongs_to :symptom
  belongs_to :topic
end