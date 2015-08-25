user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

u = User.create!(email: 'admin@test.com', password: 'passw0rd', name: 'System Admin')

artworks = [
  {
    artist: 'Gustav Klimt',
    title: 'The Kiss',
    date: '1965',
    img_url: "http://fatcatart.ru/wp-content/uploads/2014/09/Klimt_-_The_Kiss-cat-w.jpg",
    user_id: u.id,
    description: "Fat cat art",
    featured: true
  },
  {
    artist: 'Edouard Manet',
    title: 'Olympia',
    date: '1863',
    img_url: "http://fatcatart.ru/wp-content/uploads/2014/03/Manet-Olympia-cat-w.jpg",
    user_id: u.id,
    description: "Fat cat art",
  },
  {
    artist: 'Bartholomeus van der Helst',
    title: 'Fat Boy and Fat Cat. Portrait of Gerard Andriesz. ',
    date: '1975',
    img_url: "http://fatcatart.ru/wp-content/uploads/2014/07/Helst-Portret-van-Gerard-Andriesz-Bicker-cat-w.jpg",
    user_id: u.id,
    description: "Fat cat art",
  }
]

artworks.each { |artwork_attrs| Artwork.create!(artwork_attrs) }

