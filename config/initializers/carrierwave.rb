CarrierWave.configure do |config|
  if defined?(Fog)
    require 'carrierwave/storage/fog'

    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory = ENV['S3_BUCKET']
    config.fog_public = false
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: ENV['S3_REGION']
    }
  else
    config.storage = :file
  end
end
