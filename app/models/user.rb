class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_voter

  has_many :contents
  has_many :marked_contents
  has_many :markings, class_name: 'Content', through: :marked_contents, source: :content

  def read_later(content)
    markings << content
  end
end
