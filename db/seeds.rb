# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tvdb = TvdbParty::Search.new("A42FACB54E7022B1")
#### Game of Thrones
results_1 = tvdb.search('game of thrones')
got = tvdb.get_series_by_id(results_1[0]["seriesid"])

### Broad City
results_2 = tvdb.search('broad city')
broad = tvdb.get_series_by_id(results_2[0]["seriesid"])

### Gotham
results_3 = tvdb.search('gotham')
gotham = tvdb.get_series_by_id(results_3[0]["seriesid"])

### Futurama
results_4 = tvdb.search('futurama')
futurama = tvdb.get_series_by_id(results_4[0]["seriesid"])

### Eric Andre
results_5 = tvdb.search('the eric andre show')
andre = tvdb.get_series_by_id(results_5[0]["seriesid"])

results_6 = tvdb.search('big bang theory')
bang = tvdb.get_series_by_id(results_6[0]["seriesid"])

results_7 = tvdb.search('elementary')
elem = tvdb.get_series_by_id(results_7[0]["seriesid"])

Show.create(name: got.name, air_time: got.air_time, status: got.status,
            episodes: got.episodes, overview: got.overview,
            banner: got.series_banners('en').first.url,
            poster: got.posters('en').first.url)

Show.create(name: broad.name, air_time: broad.air_time, status: broad.status,
            episodes: broad.episodes, overview: broad.overview,
            banner: broad.series_banners('en').first.url,
            poster: broad.posters('en').first.url)

Show.create(name: gotham.name, air_time: gotham.air_time, status: gotham.status,
            episodes: gotham.episodes, overview: gotham.overview,
            banner: gotham.series_banners('en').first.url,
            poster: gotham.posters('en').first.url)

Show.create(name: futurama.name, air_time: futurama.air_time, status: futurama.status,
            episodes: futurama.episodes, overview: futurama.overview,
            banner: futurama.series_banners('en').first.url,
            poster: futurama.posters('en').first.url)

Show.create(name: andre.name, air_time: andre.air_time, status: andre.status,
            episodes: andre.episodes, overview: andre.overview,
            banner: andre.series_banners('en').first.url,
            poster: andre.posters('en').first.url)

Show.create(name: bang.name, air_time: bang.air_time, status: bang.status,
            episodes: bang.episodes, overview: bang.overview,
            banner: bang.series_banners('en').first.url,
            poster: bang.posters('en').first.url)

Show.create(name: elem.name, air_time: elem.air_time, status: elem.status,
            episodes: elem.episodes, overview: elem.overview,
            banner: elem.series_banners('en').first.url,
            poster: elem.posters('en').first.url)

Profile.create([
  { name: 'Kevin' },
  { name: 'Tyler' }
])
