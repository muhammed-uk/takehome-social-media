module SocialMedia
  class FetchData
    def self.call
      apps.each_with_object({}) do |social_media, object|
        object[social_media] = Object.const_get(
          "SocialMedia::Apps::#{social_media.camelize}"
        ).get_data
      end
    end

    private

    def self.apps
      Dir["./social_media/apps/*.rb"]
        .map {|file| file.split('/').last.split('.rb').first }
    end
  end
end
