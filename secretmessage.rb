def rot13(secret_messages)
    secret_messages.map do |message|
      message.tr("A-Za-z", "N-ZA-Mn-za-m")
    end
  end
  
  secret_messages = (["Why did the chicken cross the road?Gb trg gb gur bgure fvqr!"])
  
  result = rot13(secret_messages)
  puts "#{result}"