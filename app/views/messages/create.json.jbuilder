
json.user_name @message.user.nickname
json.created_at @message.created_at.strftime("%Y年%m月%d日 %H時%M分")
json.content @message.text
json.image @message.image.url