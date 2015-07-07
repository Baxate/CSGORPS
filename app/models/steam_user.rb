class SteamUser < ActiveRecord::Base 
class << self
  def from_omniauth(auth)
    info = auth['info']
    # Convert from 64-bit to 32-bit
    steam_user = find_or_initialize_by(uid: (auth['uid'].to_i - 76561197960265728).to_s)
    steam_user.nickname = info['nickname']
    steam_user.avatar_url = info['image']
    steam_user.profile_url = info['urls']['Profile']
    steam_user.save!
    steam_user
  end
end
end

