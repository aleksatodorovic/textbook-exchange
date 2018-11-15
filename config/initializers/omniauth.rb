OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '140437171478-op4ei6hchg677vq7qsn6jj31cmgo5en7.apps.googleusercontent.com', 'SEZXJpFb48lZy9Mpm-ekY0X9', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end