class User < ActiveRecord::Base
  include StaticPagesHelper

  belongs_to :department 
  has_many :categories, through: :department
  has_many :timesheet_hours
  has_many :timesheet_categories

  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :fname, :lname, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  has_secure_password
  validates :password, length: { minimum: 6 }, allow_blank: true

  def has_authority_over
    if User.where(supervisor_id: self.id, active: true).exists?
      User.where(supervisor_id: self.id, active: true)
    else
      []
    end
  end

  def has_authority_over?(user)
    if self.has_authority_over.any?
      @users_ary = self.has_authority_over
      
      if @users_ary.where(id: user.id).exists?
        true
      else
        false
      end

    else
      false
    end
  end

  def can_approve_this?(source)
    # if self is an admin but not accessing their own source
    # if self has authority over the source
    if (self.admin && self.id != source.id ) || self.has_authority_over?(source)
      true
    # if self doesn't have a supervisor and is accessing their own source
    elsif self.supervisor_id == nil && self.id == source.id
      true
    else
      false
    end
  end

  def full_name
    "#{self.fname} #{self.lname}"
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end

    def User.new_remember_token
      SecureRandom.urlsafe_base64
    end

    def User.digest(token)
      Digest::SHA1.hexdigest(token.to_s)
    end
end
