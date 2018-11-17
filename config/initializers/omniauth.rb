Rails.application.config.middleware.use OmniAuth::Builder do
    #provider :developer unless Rails.env.production? 
    provider :facebook, '754601091542640', '554baa058b220553dbfac0c90029f5fe'

    #provider :facebook, ENV['754601091542640'], ENV['554baa058b220553dbfac0c90029f5fe']
end
