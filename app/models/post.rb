# == Schema Information
#
# Table name: posts
#
#  id                              :bigint(8)         not null, primary key
#  title                           :text              not null
#  description                     :text              not null
#  created_at                      :datetime          not null
#  updated_at                      :datetime          not null
#  user_id                         :bigint(8)
#

class Post < ApplicationRecord
  default_scope {order(created_at: :desc)}

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user

  # scope :order_by, ->(order = 'desc'){
  #   order("posts.created_at #{order}")
  # }
end
