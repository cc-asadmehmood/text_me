class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  # validates :user_id, presence: true

  # def self.message_render(message)
  #   ApplicationController.renderer.render(partial: "message", locals: { message: message })
  # end
end
