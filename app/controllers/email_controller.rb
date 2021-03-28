# frozen_string_literal: true
require 'rubygems'
require 'nokogiri'

# POST operations for user resource
class EmailController < ApplicationController
  VALID_PARAMS = [
    :to,
    :to_name,
    :from,
    :from_name,
    :subject,
    :body
  ]

  # Creates a new email to be sent
  def create
    input_params = Email.create(parse_email_params)
    if input_params.save
      EmailMailer.send_email(input_params).deliver
    end
  end

  # Creates and validates all input params
  def parse_email_params
    params.require(:user).require([:to, :to_name, :from, :from_name, :subject, :body])
    VALID_PARAMS.all? do |key|
      if params.has_key? key
        return
      else
        bad_request("Required param `#{key}` is missing")
      end
    end
    params[:body] = Nokogiri::HTML(params[:body]).text
    params.permit(VALID_PARAMS)
  end
end
