# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## Create podcasts
podcast = Podcast.create!(title: 'A Great Podcast', company: 'Panoply')
podcast2 = Podcast.create!(title: 'The Best Podcast', company: 'Slate')

## Create episodes
podcast.episodes.create!(title: 'Software Developers: A Day in the Life', release_time: Time.zone.now - 2.days, category: Episode.categories[:technology], audio_url: 'http://www.gutenberg.org/files/10137/10137-m/10137-m-001.mp3', ad_position: Episode.ad_positions[:pre])
podcast.episodes.create!(title: 'Jimi Hendrix Revisited', release_time:  Time.zone.now + 1.day, category: Episode.categories[:music], audio_url: 'http://www.gutenberg.org/files/10178/10178-m/10178-m-001.mp3', ad_position: Episode.ad_positions[:post])
podcast2.episodes.create!(title: 'DC Living', release_time: Time.zone.now - 1.day, category: Episode.categories[:politics], audio_url: 'http://ia802704.us.archive.org/9/items/TakeMeOutToTheBallGameByEdMeeker/edmeeker-TakeMeOuttotheBallGame.mp3', ad_position: Episode.ad_positions[:pre])
podcast2.episodes.create!(title: 'Writing the Best SQL Queries', release_time: Time.zone.now, category: Episode.categories[:technology], audio_url: 'http://www.gutenberg.org/files/10177/10177-m/10177-m-001.mp3', ad_position: Episode.ad_positions[:pre])
podcast2.episodes.create!(title: 'Bruce Hornsby: An Underrated Virtuoso', release_time: Time.zone.now + 10.days, category: Episode.categories[:music], audio_url: 'http://www.gutenberg.org/files/10277/10277-m/10277-m-001.mp3', ad_position: Episode.ad_positions[:mid])
podcast2.episodes.create!(title: 'Jetsetting: tips and tricks', release_time: Time.zone.now + 1.hour, category: Episode.categories[:art], audio_url: 'http://www.gutenberg.org/files/10181/10181-m/10181-m-001.mp3', ad_position: Episode.ad_positions[:post])

## Create advertisements
Advertisement.create!(title: 'First advertisement', start_time: Time.zone.now - 1.day, end_time: Time.zone.now + 1.day, categories: ['technology', 'art'], downloads: 0, position: Advertisement.positions[:pre])
Advertisement.create!(title: 'Second advertisement', start_time: Time.zone.now - 4.days, end_time: Time.zone.now - 2.days, categories: ['art'], downloads: 40, position: Advertisement.positions[:mid])
Advertisement.create!(title: 'Third advertisement', start_time: Time.zone.now + 2.days, end_time: Time.zone.now + 5.days, categories: ['music', 'art', 'technology'], downloads: 525, position: Advertisement.positions[:pre])
Advertisement.create!(title: 'Fourth advertisement', start_time: Time.zone.now - 10.days, end_time: Time.zone.now + 10.days, categories: ['economics'], downloads: 5, position: Advertisement.positions[:post])
