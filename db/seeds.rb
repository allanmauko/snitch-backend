puts "🌱 Seeding spices..."

# Seed your database here
Article.create(title: "Why Deli Sandwiches Taste Better Than Yours", value: "A great sandwich is more than just meat, cheese and a schmear! There's even science behind why sandwiches tend to taste better when they're not made by you. (Long story short: When you make a sandwich, you imagine eating it, which actually makes you less hungry for it—more on this later.) We had a deli owner reveal the reasons why deli sandwiches are indeed so tasty. Plus, we've included tips on how you can replicate professionally made sandwiches at home.After that, I bought a refurbished iPhone SE with 64GB of storage for $165. I eventually stopped using this one, because the camera was so bad that it was upsetting my friends. Also, a small part of the screen stopped working—right in the spot I had to press to switch the keyboard from letters to numbers, which meant I had no access to punctuation and came off, via text, as very cold. And I couldn’t log in to my bank account.", category_id: 1, user_id: 1, number_of_likes: 1, image_url: "https://www.readingrockets.org/sites/default/files/slides/authors-readaloud.jpg")

Article.create(title: "Don’t Trash Your Old Phone—Give It a Second Life", value: "The original iPhone SE is a great little phone, and I love it. It has a headphone jack—remember those? It fits in a butt pocket. It was announced in the Obama era.Sure, the first one I owned, which I purchased in 2017, had only 16GB of storage. And yes, I was forced to stop using it after a terrifying incident in which it refused to update to the latest iOS, even after I deleted nearly everything on it, which prevented me from installing the Ticketmaster app that I needed to enter a Harry Styles concert that I had flown to California by myself to attend. (Would you believe someone at the arena simply agreed to print the ticket out? I was crying.", category_id: 1, user_id: 1, number_of_likes: 1, image_url: "https://c.tadst.com/gfx/750x500/authors-day-fun.jpg")

Article.create(title: "Every Reaction Is an Over-Reaction", value: "Things are rarely as bad — or as good — as you think they are. The goal is not to get too attached to lopsided thinking in one direction or the other.I remember, back in 2008, walking into my manager’s office at the investment bank I worked at for all of three weeks and proudly declaring that I quit. I had just come up with an idea for an internet business that I thought was going to earn me a full-time income within a few months. (It would go on to make about $400… total.)
 I remember that summer, working tirelessly on my friend’s futon, watching my bank account fall deeper and deeper into the red, having idea after idea fall flat, being utterly convinced that I had just ruined my life.
 I remember that next winter, while being supported by a (very patient) girlfriend, coming up with an idea for a video platform, teaching myself how to code it, and actually believing I was going to be a millionaire within a year. (Spoiler alert: I wasn’t.)", category_id: 1, user_id: 1, number_of_likes: 1, image_url: "https://149645218.v2.pressablecdn.com/wp-value/uploads/2020/09/Copy-of-SAFAF-2X1-images-2020-09-18T173938.309.jpg")

Article.create(title: "The body is not a machine", value: "The human body is subject to innumerable metaphors: Our brains are computers with immense processing power; our bodies are machines that need to be tuned and honed and oiled and optimized.But metaphors are just that — metaphors. While they’re useful for interpreting and explaining the world to ourselves, they aren’t always reflective of reality. They’re not always real. The effects of believing in them, though, can have very real-world effects. The body as a machine, as mechanics, is a perfect example of this. What’s known as “locomotion studies” or biophysical mechanics, is hundreds of years old. Its most established foundations were built by looking at the human body as so much discrete, barely connected parts, and in many ways we’re still left with the legacy of that understanding.", category_id: 1, user_id: 1, number_of_likes: 1, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyiEgxqVVLlKs83cS-yThqZ2L9XUP0MKG5l20z7GPKtl4P9a6QZszLY9vLYcQioS4Oz-E&usqp=CAU")

Article.create(title: "8 Reasons to Avoid Subscribing to Netflix", value: "The other big complaint about Netflix—which has been one of its sore spots ever since the streaming service went live—is that its library is never up-to-date. These days, only Netflix originals can really be considered timely and trendy.Due to licensing agreements with TV networks, it doesn't make sense to let Netflix stream episodes as they're released on a network because that would kill any incentive for people to watch the networks themselves.
 Netflix's strength is binge-watching, which means it's good for catching up on TV shows just before the next season begins airing. That's why most of Netflix's library is about one year old. Networks aren't willing to let Netflix load up its library with recent value.", category_id: 1, user_id: 1, number_of_likes: 1, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiSmkKDBpOtbeZDyr6ud0i9JurzE9jAA1Y5Q&usqp=CAU")

Comment.create(value: "Please can you also make a video on you creating chrome browser and also giving some tips on how to be proficient in JavaScript and also some code problem solving techniques.", article_id: 1, user_id: 1)
Comment.create(value: "Sir will you plz make some new react Js easy and beautiful projects that consists of clones and other new website designs.", article_id: 2, user_id: 2)
Comment.create(value: "Well, I am successfully created medium clone with help of this video greeaaaatt succes.", article_id: 3, user_id: 3)
Comment.create(value: "Can you make a serious flutter tutorial?", article_id: 4, user_id: 4)
Comment.create(value: "Hey dude I don't have card to use firebase in need card details what I do help me out?", article_id: 5, user_id: 5)

Bookmark.create(article_id: 1, user_id: 1)
Bookmark.create(article_id: 2, user_id: 2)
Bookmark.create(article_id: 3, user_id: 3)
Bookmark.create(article_id: 4, user_id: 4)
Bookmark.create(article_id: 5, user_id: 5)

Category.create!(name: "Inspirational", user_id: 1)
Category.create!(name: "Political", user_id: 2)
Category.create!(name: "Technology", user_id: 3)
Category.create!(name: "Finance", user_id: 4)
Category.create!(name: "Lifestyle", user_id: 5)

User.create!(username: "allanM", email: "test12@gmail.com", password: "12345678")
User.create!(username: "allanM1", email: "test1@gmail.com", password: "12345679")
User.create!(username: "allanM2", email: "test2@gmail.com", password: "345678")
User.create!(username: "allanM3", email: "test3@gmail.com", password: "0987654")
User.create!(username: "allanM4", email: "test4@gmail.com", password: "23456789")

puts "✅ Done seeding!"

