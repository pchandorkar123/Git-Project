class User < ApplicationRecord
#  before_action :authenticate_user!

#validates :contact, presence:true
validates :contact,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable


    def index
    end

    def worker?
       type == 'Worker'
    end

    def contractor?
      type == 'Contractor'
    end

    def admin?
      type == 'Admin'
    end
  end

