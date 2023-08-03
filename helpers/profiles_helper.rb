module ProfilesHelper

Include Actionview::RecordIdentifer

def following(user)
  current_user&.followees&.include?(user)
end



end
