Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github,
    Rails.application.credentials[:client_id],
    Rails.application.credentials[:client_secret]
  else
    provider :github,
    Rails.application.credentials[:client_id],
    Rails.application.credentials[:client_secret]
  end
end