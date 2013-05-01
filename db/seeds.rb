# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Rake::Task['db:migrate:reset'].invoke

10.times do |i|
	@user = User.new(:email => "email#{i}@m.com",
									:password => "password",
									:first_name => Forgery(:name).male_first_name,
									:last_name => Forgery(:name).last_name)
	@user.save
	puts @user.to_yaml
end

20.times do |i|
	@post = Post.new(:user_id => Random.rand(1..(User.count)),
									 :content => Forgery(:lorem_ipsum).words(20+(Random.rand(5..50))),
									 :signature => Forgery(:address).street_name,
									 :type => "Compliment")
	@post.save

	@comment = Comment.new(:post_id => Random.rand(1..(Post.count)),
												:content => Forgery(:lorem_ipsum).words(10))
	@comment.save

	@invitation = Invitation.new(:post_id => i+1,
																:sender_id => Random.rand(1..10),
																:recipient_name => Forgery(:name).male_first_name,
																:recipient_email => Forgery(:internet).email_address)
	@invitation.save
end 