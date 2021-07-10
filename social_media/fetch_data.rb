module SocialMedia
  class FetchData
    def self.call
      %w[Facebook Twitter].each_with_object({}) do |social_media, object|
        object[social_media.downcase] =
          Object.const_get("SocialMedia::Apps::#{social_media}").get_data
      end
    end
  end
end
