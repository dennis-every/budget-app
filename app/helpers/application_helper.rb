module ApplicationHelper
  def form_error_notification(object)
    return unless object.errors.any?

    tag.div class: 'error-message' do
      object.errors.full_messages.to_sentence.capitalize
    end
  end
end
