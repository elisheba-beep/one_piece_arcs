# db/seeds.rb
arc = Arc.create(name: "East Blue", description: "The beginning of Luffy's adventure.", thumbnail: "thumbnail_url")

Episode.create(name: "I'm Luffy! The Man Who Will Become the Pirate King!", number: 1, video_url: "video_url", arc: arc)
Episode.create(name: "The Man in the Straw Hat!", number: 2, video_url: "video_url", arc: arc)
