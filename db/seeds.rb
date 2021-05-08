user = User.create!(
  email: "mattnwalsh@gmail.com",
  password: "123456"
)


Posting.destroy_all if Rails.env.development?

Posting.create!(
  user: user,
  title: "ETH Developer Wanted",
  description: "Diamond hands or bust, lest you eat grasshoppers"
)

Posting.create!(
  user: user,
  title: "SOL Developer Wanted",
  description: "ETH Got You Feeling Gassy?"
)

