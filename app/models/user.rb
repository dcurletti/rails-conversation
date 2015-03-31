class User < ActiveRecord::Base
	has_many :messages

	has_many(
		:participations,
		primary_key: :id,
		foreign_key: :user_id,
		class_name: "ConversationParticipant"
	)

	has_many(
		:conversations,
		through: :participations,
		source: :conversation
	)

end
