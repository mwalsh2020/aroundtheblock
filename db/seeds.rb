user = User.create!(
  email: "b@a.com",
  password: "123456"
)

Posting.destroy_all if Rails.env.development?

Posting.create!(
  user: user,
  title: "Create cryptocurrency complete startup",
  description: "Need complete startup for new cryptocurrency. We like to have token like TRC20 also need to develop android and iOS wallets."
)


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

