account_sid = Rails.application.secrets[:twilio][:sid]
auth_token = Rails.application.secrets[:twilio][:auth_token]

Twilio.configure do |config|
  config.account_sid = account_sid
  config.auth_token = auth_token
end
