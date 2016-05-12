# passthrough_controller.rb
class PassthroughController < ApplicationController
  def index
    path = case current_user.role
      when 'admin'
        root "pages#home"
      when 'regiesterd'
        get "employee" => "eadmin_tasks#index"

      else
        # If you want to raise an exception or have a default root for users without roles
    end

    redirect_to path     
  end
end

