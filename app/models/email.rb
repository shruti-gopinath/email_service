# frozen_string_literal: true

require_relative './application_record'
# Public: The model for user/sender.
class Email < ApplicationRecord
  self.primary_key = 'from'

  validates :to, :to_name, :from, :from_name, :subject, :body, presence: true
end
