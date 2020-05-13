# frozen_string_literal: true

# ApplicationMailer is the parent class for all other mailers
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
