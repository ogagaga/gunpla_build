class ImagesUploader < CarrierWave::Uploader::Base
  def store_dir
    environment_namespace = ENV.fetch('HEROKU_APP_NAME', Rails.env)

    ['uploads', environment_namespace, model.class.to_s.underscore, mounted_as, model.id].join(File::SEPARATOR)
  end
end
