class ApplicationController < ActionController::Base

  rescue_from ArgumentError, with: :bad_request
  rescue_from ActionController::BadRequest, with: :bad_request

  # Handles bad request error
  #
  # exception - The exception that was raised
  # errors - The specific error messages causing the exception
  #
  # Returns nothing
  def bad_request(exception, errors = nil)
    render_json_error(:bad_request, exception, errors)
  end
end
