class Users::RegistrationsController < Devise::RegistrationsController
  before_action :select_plan, only: :new
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 'req_JKSVDrHLFOvqoQ'
          resource.save_with_subscription
        else
          resource.save
        end
      end
    end
  end
end