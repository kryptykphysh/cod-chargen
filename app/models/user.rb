class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :rememberable,
         :trackable,
         :omniauthable,
         # Removing google_oauth2 for now
         omniauth_providers: %i[
           github
         ]

  def self.from_github(access_token)
    Rails.logger.info "Access Token: #{access_token}"
    where(provider: access_token.provider, uid: access_token.uid).first_or_create do |user|
      user.provider = access_token.provider
      user.uid = access_token.uid
      user.email = access_token.info['email']
    end
  end

  # def self.from_omniauth(access_token)
  #   Rails.logger.info "Access Token: #{access_token}"
  #   if access_token.provider == 'github'
  #     from_github(access_token)
  #   else
  #     data = access_token.info
  #     user = User.create_with(password: Devise.friendly_token[0,20])
  #               .find_or_create_by(email: data['email'])
  #   end
  # end
end
