snippet = Snippet.find_or_initialize_by(slug: 'countdown')
snippet.update_attributes!(
  content: "h1. Christmas is coming!\n\nh3. Christmas lights are pretty",
  slug: 'countdown',
  description: 'Christmas countdown text'
)
