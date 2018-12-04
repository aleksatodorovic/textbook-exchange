OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '476593344759-2ae2akv33mdchoqm4jhgcksvf1b62a02.apps.googleusercontent.com', 'b4Carq-zMr9mNSVT8YoNPuxB', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end