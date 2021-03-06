class User < ApplicationRecord
    before_save { email.downcase! }
    validates :name,  presence: true, length: { maximum: 50 }
    #REGEX gotten from  https://stackoverflow.com/questions/22993545/ruby-email-validation-with-regex
    #/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
    #from 6.3.1 beginning 
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }


#######################################################
    has_many :enrollments
    has_many :courses, through: :enrollments
#######################################################

    # Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
end
