module SocialMedia
  module Apps
    class Twitter < ::SocialMedia::Base
      def get_data
        super { 'twitter' }
      end
    end
  end
end