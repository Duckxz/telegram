import configure from require "telegram-bot-lua.core"

token = "<yourtokenhere>"

bot = configure token

bot.on_message = (msg) ->
  print "\nmessage root data:\n"
  for i,v in pairs msg
    print i,v

  print "\nmessage from data:\n"
  for i,v in pairs msg.from
    print i,v

  print "\nmessage chat data:\n"
  for i,v in pairs msg.chat
    print i,v

  if msg.entities
    print "\nmessage entities data:\n"
    for i,v in pairs msg.entities
      print i,v

    print "\nmessage entity subentries:\n"
    for i,v in pairs msg.entities
      if type v == "table"
        for d,c in pairs v
          print d,c

  if msg.photo
    print "\nmessage photo data:\n"
    for i,v in pairs msg.photo
      print i,v
      if type v == "table"
        print "\nmessage photo subdata:\n"
        for d,c in pairs v
          print d,c

  if msg.sticker
    print "\nmessage sticker data:\n"
    for i,v in pairs msg.sticker
      print i,v

    print "\nmessage sticker thumb data:\n"
    for i,v in pairs msg.sticker.thumb
      print i,v

  if msg.document
    print "\nmessage document data:\n"
    for i,v in pairs msg.document
      print i,v

    print "\nmessage document thumb data:\n"
    for i,v in pairs msg.document.thumb
      print i,v
