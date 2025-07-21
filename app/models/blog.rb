class Blog < ApplicationRecord
    belongs_to :user
    has_rich_text :body
    extend FriendlyId
    friendly_id :title, use: :slugged

    def self.ransackable_associations(auth_object = nil)
        [ "user" ]
    end

    def self.ransackable_attributes(auth_object = nil)
        [ "title", "created_at", "user_name" ]
    end
end
