json.array! @notes do |note|
  json.id note.id
  json.image note.image
  json.user_id note.user_id
  json.user_sign_in current_user
end