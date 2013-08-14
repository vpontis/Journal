# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Journal::Application.config.secret_key_base = 'c15bacecdbeb6a8c6ead22f60a92087429b7c9f05e6ccc3db96de683a13f2cf89cba5031c452538640065c5344c775d40d131ac392680aaf0b083dcda65815a0'
