class Type < ApplicationRecord
    belongs_to :parent, class_name: "Type", optional: true
    has_many :subtypes, class_name: "Type", foreign_key: :parent_id, dependent: :destroy
end
