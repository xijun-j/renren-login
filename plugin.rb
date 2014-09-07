# name: Renren login
# about: Authenticate with discourse with renren.
# version: 0.1.0
# author: Erick Guan

gem 'omniauth-renren-oauth2', '0.0.6'

class RenrenAuthenticator < ::Auth::Authenticator

  def name
    'renren'
  end

  def after_authenticate(auth_token)
    result = Auth::Result.new

    data = auth_token[:info]
    raw_info = auth_token[:extra][:raw_info]
    name = data[:name]
    username = data[:nickname]
    renren_uid = auth_token[:uid]

    current_info = ::PluginStore.get('renren', "renren_uid_#{renren_uid}")

    result.user =
      if current_info
        User.where(id: current_info[:user_id]).first
      end

    result.name = name
    result.username = username
    result.extra_data = { renren_uid: renren_uid, raw_info: raw_info }

    result
  end

  def after_create_account(user, auth)
    renren_uid = auth[:uid]
    ::PluginStore.set('renren', "renren_id_#{renren_uid}", {user_id: user.id})
  end

  def register_middleware(omniauth)
    omniauth.provider :renren, :setup => lambda { |env|
      strategy = env['omniauth.strategy']
      strategy.options[:client_id] = SiteSetting.renren_client_id
      strategy.options[:client_secret] = SiteSetting.renren_client_secret
    }
  end
end

auth_provider :frame_width => 950,
              :frame_height => 500,
              :authenticator => RenrenAuthenticator.new,
              :background_color => 'rgb(0, 94, 172)'

register_css <<CSS

.btn-social.renren:before {
  font-family: FontAwesome;
  content: "\\f18b";
}

CSS
