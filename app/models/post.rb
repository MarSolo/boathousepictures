class Post < ActiveRecord::Base
	belongs_to :admin

	validates :title, presence: true,
                    length: { minimum: 5 }

    validates :text, presence: true

    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

    validates :image, presence: true
end