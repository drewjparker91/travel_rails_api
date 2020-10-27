# require 'active_support/concern'

# module Exception
#   extend ActiveSupport::Concern
#   included do
  
#     rescue_from ActiveRecord::RecordNotFound do |exception|
#       json_response({ message: exception.message }, :not_found)
#     end

#     rescue_from ActiveRecord::RecordInvalid do |exception|
#       json_response({ message: exception.message }, :not_found)
#     end

    # rescue_from TypeError do |exception|
    #   json_response( {  message:exception.message }, 500)
    # end
  # end