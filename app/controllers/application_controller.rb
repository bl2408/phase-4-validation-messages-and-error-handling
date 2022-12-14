class ApplicationController < ActionController::API

    rescue_from ActiveRecord::RecordInvalid, with: :render_errors


    private 
    def render_errors e
        render json: {errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
    
end
