class SocialImpact < ApplicationRecord

	validates :problem, presence: true, uniqueness: false, format: {with: /[
    a-zA-Z0-9_-]{2}/,message: "must contain text"}

    validates :empathy, presence: true, uniqueness: false, format: {with: /[
    a-zA-Z0-9_-]{2}/,message: "must contain text"}

    validates :responsibility, presence: true, uniqueness: false, format: {with: /[
    a-zA-Z0-9_-]{2}/,message: "must contain text"}


  belongs_to :project
end
