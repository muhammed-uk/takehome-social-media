module SocialMedia
  module Apps
    class Facebook < ::SocialMedia::Base
      def get_data
        super { 'facebook' }
      end
    end
  end
end
