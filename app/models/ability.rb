# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
      # Define abilities for the passed in user here. For example:
      #
        user ||= User.new # guest user (not logged in)
        #if user.admin?
         # can :manage, :all
        #elsif user.contractor?
         # can :read, JobPost
          #can :create, JobPost
          #can :edit, JobPost
          #can :update, JobPost
        #elsif user.worker? 
         # can :read, :all
          #can :search, JobPost
        #end
        if user.type == 'Admin'
          can :manage, :all
          
        elsif user.type == 'Contractor'
          can :read, JobPost
          can :create, JobPost
          can :edit, JobPost
          can :update, JobPost
          can :destroy, JobPost
          can :show_contractor_job, JobPost
        elsif user.type == 'Worker' 
          can :read, :all
          can :search, JobPost
          can :create, Apply
          cannot :destroy, JobPost
        end




    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
