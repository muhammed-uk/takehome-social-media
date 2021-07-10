module SocialMedia
  class Base
    MEDIA_BASE_URL = "https://takehome.io"

    def self.get_data
      new.get_data
    end

    def get_data
      get_url = "#{MEDIA_BASE_URL}/#{yield}"
      with_rescue do
        response = RestClient.get get_url
        format_response response
      end
    end

    protected

    def format_response(response)
      with_rescue do
        response_body = response&.body
        response_body ? JSON.parse(response_body) : []
      end
    end

    def with_rescue
      begin
        yield
      rescue => exception
        puts "Error: #{exception&.message}"
        []
      end
    end
  end
end

