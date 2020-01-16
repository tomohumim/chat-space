require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.aws_access_key_id,
    aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
    region: 'ap-northeast-1'
  }

<<<<<<< HEAD
  config.fog_directory  = 'tomofumi'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tomofumi'
=======
  config.fog_directory  = 'tomofumimizuno'
  config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tomofumimizuno'
  
>>>>>>> 07c9a11c3dc3b2331884e28800c630d333a25586
end