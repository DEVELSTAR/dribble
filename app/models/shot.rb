class Shot < ApplicationRecord
  mount_uploader :user_shot, UserShotUploader
end
