class AddAvatarToProfiles < ActiveRecord::Migration[6.0]
  def up
    add_attachment :profiles, :avatar
  end

  def down
    remove_attachment :profiles, :avatar
  end
end
