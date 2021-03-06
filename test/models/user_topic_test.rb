# == Schema Information
#
# Table name: user_topics
#
#  id         :uuid             not null, primary key
#  user_id    :uuid             not null
#  topic_id   :uuid             not null
#  action     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  value      :integer
#  by_user_id :uuid
#
# Indexes
#
#  index_user_topics_on_by_user_id                         (by_user_id)
#  index_user_topics_on_topic_id                           (topic_id)
#  index_user_topics_on_user_id                            (user_id)
#  index_user_topics_on_user_id_and_by_user_id_and_action  (user_id,by_user_id,action) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (by_user_id => users.id)
#  fk_rails_...  (topic_id => topics.id)
#  fk_rails_...  (user_id => users.id)
#

require 'test_helper'

class UserTopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
