class Blog < ApplicationRecord
    belongs_to :user
    has_rich_text :body
    has_mmany :comments, dependent: :destroy
    extend FriendlyId
    friendly_id :title, use: :slugged
    validate :featured_limit, if: :featured?

    def featured_limit
        if user.blogs.where(featured: true).count >=3
            errors.add(:featured, "limit reached. You can only have 3 featured blogs")
        end
    end
    
    def self.ransackable_associations(auth_object = nil)
        [ "user" ]
    end

    def self.ransackable_attributes(auth_object = nil)
        [ "title", "created_at", "user_name" ]
    end
end
