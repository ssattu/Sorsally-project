CarrierWave.configure do |config|
#   # if Rails.env.production?
  config.fog_provider     = 'fog/aws'
  config.fog_credentials  = {
    provider:              'AWS',
    aws_access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
    aws_secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    region:                ENV.fetch('AWS_REGION') { 'ap-south-1' },
    path_style:            true
  }
  config.storage = :fog
  config.fog_directory = ENV.fetch('AWS_BUCKET')
  config.fog_public     = true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end
  # end