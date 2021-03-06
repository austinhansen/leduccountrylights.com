snippet = Snippet.find_or_initialize_by(slug: 'countdown')
snippet.update_attributes!(
  content: "h1. Christmas is coming!\n\nh3. Christmas lights are pretty",
  slug: 'countdown',
  description: 'Christmas countdown text'
)

snippet = Snippet.find_or_initialize_by(slug: 'gallery')
snippet.update_attributes!(
  content: "h2. Gallery\n\nh4. There is something for everyone",
  slug: 'gallery',
  description: 'Image gallery'
)

snippet = Snippet.find_or_initialize_by(slug: 'donations')
snippet.update_attributes!(
  content: 'Donations of food & cash accepted for the Leduc Food Bank',
  slug: 'donations',
  description: 'Donations'
)

snippet = Snippet.find_or_initialize_by(slug: 'volunteers')
snippet.update_attributes!(
  content: "They would like volunteers (traffic control, hot chocolate servers),
    those interested please phone Doug Ruel\n\n780-777-4122",
  slug: 'volunteers',
  description: 'Volunteers'
)
