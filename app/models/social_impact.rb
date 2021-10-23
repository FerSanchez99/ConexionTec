class SocialImpact < ApplicationRecord

	validates :problem, presence: true, uniqueness: false, format: {with: /[
    a-zA-Z0-9_-]{2}/,message: "must contain social problem"}

    validates :empathy, presence: true, uniqueness: false, format: {with: /[
    a-zA-Z0-9_-]{2}/,message: "must contain problem"}

    validates :responsibility, presence: true, uniqueness: false, format: {with: /[
    a-zA-Z0-9_-]{2}/,message: "must contain problem"}


  belongs_to :project
end
