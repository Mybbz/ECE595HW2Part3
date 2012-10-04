# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  body       :text
#  author     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :author, :body, :post_id

belongs_to :post
validates :post_id, :presence => true
validates :body, :presence => true
validates :author, :presence => true
end
