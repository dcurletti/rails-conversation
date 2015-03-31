class Conversation < ActiveRecord::Base

	has_many :messages

	# could also do:
	# has_many :conversation_participants
	has_many(
		:conversation_participants,
		primary_key: :id,
		foreign_key: :conversation_id
		class_name: "ConversationParticipant"
	)

	has_many(
		:participants,
		through: :conversation_participants,
		source: :user
	)

end
