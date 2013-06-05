class Point < ActiveRecord::Base
  attr_accessible :ip, :story_id

  belongs_to :story
end
