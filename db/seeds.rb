3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}")
end
puts "3 Topics are created"
10.times do |blog|
  Blog.create!(
    title: "Blog Post #{blog + 1 }",
    body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
    topic_id: Topic.last.id
    )
end
puts " 10 Blogs's are created"
5.times do |skill|
  Skill.create!(
    title: "Skill Set #{skill + 1}",
    percent_utilized: 15
    )
end
puts " 5 Skill sets are created"
8.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio #{portfolio + 1}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    subtitle: "Ruby on rails",
    main_image: "https://place-hold.it/600x400",
    thumb_image: "https://place-hold.it/350x200" 
    )
end
1.times do |portfolio|
  Portfolio.create!(
    title: "Portfolio #{portfolio + 1}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    subtitle: "Angular",
    main_image: "https://place-hold.it/600x400",
    thumb_image: "https://place-hold.it/350x200" 
    )
end
puts "Created 9 Portfolios "
3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology + 1}"
        )
end
puts "Created 3 Technology "
