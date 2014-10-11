module FormHelper

  def field_group_for(object, method, &block)
    field_group = 'controlgroup'
    field_group += ' error' if object.errors[method].any?
    content_tag(:div, class: field_group, &block)
  end

  def error_message_for(object, method)
    return unless object.errors[method].any?
    content_tag(:span, object.errors[method].to_sentence, class: 'error_message')
  end
end
