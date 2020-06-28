class VideoGame < ApplicationRecord
  def friendly_initial_release_date
    initial_release_date.strftime("%b %d, %Y")
  end
end
