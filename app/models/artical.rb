class Artical < ApplicationRecord
    validates :title, presence: true, length: {minimum: 10,maximum: 200}
end