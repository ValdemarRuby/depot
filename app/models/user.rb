class User < ApplicationRecord
  after_destroy :ensure_an_admin_remains
  validates :name, presence: true, uniqueness: true
  has_secure_password

  private
  def ensure_an_admin_remains
    if User.count.zero?
      raise "Last user does not can to be delete"
    end
  end
end
