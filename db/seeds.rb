require "open-uri"

User.destroy_all if Rails.env.development?

user = User.create!(
  email: "b@a.com",
  password: "123456"
)

Posting.destroy_all if Rails.env.development?



posting1 = Posting.create!(
  user: user,
  title: "Create cryptocurrency complete startup",
  description: "Need complete startup for new cryptocurrency. We like to have token like TRC20 also need to develop android and iOS wallets.",
  price: 5000.00
)

file = URI.open('https://res.cloudinary.com/le-wagon21bitcoin/image/upload/v1621113565/amino/solana_uastgv.png')
posting1.photo.attach(io: file, filename: 'solana.png', content_type: 'image/png')


Posting.create!(
  user: user,
  title: "Blockchain Developer Needed for: SPINWORLD DJ Blockchain Project",
  description: "WE are looking for someone to help us build a fullscale Blockchain platform for DJ's called Spinworld.",
  price: 1700.00
)

Posting.create!(
  user: user,
  title: "Binance Smart Chain Bot for Sniping BEP20 Tokens & Pre-Launch Coins",
  description: "I’m looking for someone to create a sniper bot that uses the Binance Smart Chain and detects when new liquidity is added to an AMM (automated market maker) pool on Pancakeswap v1/v2 (runs on the Binance Smart Chain, BEP20 network). It’s paramount the bot is efficient in sacrificing high gas fees to be one of the first orders placed (front-run)The BOT would essentially detect and immediately execute a trade on the same second liquidity to is added to a token, according to my parameters",
  price: 1000.00
)

