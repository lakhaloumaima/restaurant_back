class RegistrationsController < ApplicationController

    def confirm_email
        user = User.find_by_confirm_token(params[:id])
        if user
          user.email_confirmed = true
          user.confirm_token = nil
          user.save
         # redirect_to 'http://localhost:4200/login'
         render json: { status: 200 }

        else
 
          render json: { status: 500 }
    
        end
    
      end
    
    
      def create
        user = User.create!(
          first_name: params['user']['first_name'],
          last_name: params['user']['last_name'],
          email: params['user']['email'],
          password: params['user']['password'],
          password_confirmation: params['user']['password_confirmation'],
          role: params['user']['role'].to_i
        )
    
        if user
          #UserMailer.registration_confirmation(user).deliver
          #flash[:success] = "Please confirm your email address to continue"
          
          session[:user_id] = user.id
        
          render json: {
            status: :created,
    
            user: user
          }
        else
          render json: { status: 500 }
        end
      end
end
