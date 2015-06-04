OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 1035358793158823, '357f4ce034a1774d3599a49d3e8ceb2a'
end