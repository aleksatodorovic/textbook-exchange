OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '39952447542-p0e5vq98nh7cvq0hajs25i32q1o6vvki.apps.googleusercontent.com', 'CeLlX040l2Q05k_8P9mOKG2N', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end