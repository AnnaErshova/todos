class Compliment
	attr_reader :message, :image
	MESSAGES = [ "I would like to buy a significant piece of art from you anytime, power girl.",
		"Does Ms. America ride a hog? Why not? You are the fashion equivalent of Texas.",
		"One look at the back of your head and I can tell that you’re a person who likes a clean apartment, a Frette sheet, a haircut from a man who feels the same way. I bet you cook and have the sharpest Japanese knives in all of Vegas.",
		"You understand how to make the light flicker off your lashes, you know how to tilt your head just so. What you haven’t figured out yet, is how to stop scaring and intimidating boys with your look. Fuck ’em. Beauty is forever.",
		"You look just like Corin Nemec, except if at the height of his powers, he had joined some kind of fashion-based military outfit.",
		"You have an Izzy Blow — but non-suicidal — super pretty face vibe. Your look is killing it today. The way I picture you is in Lula magazine, floating on a sea of chiffon and blowing bubbles in a rainstorm. Turbans equal difficult-to-pull-off, but today, and probably usually, you are a queen of awesome.",
		"Your messy hair bodes well for your care-free nature, but don’t overdo it. It’s more than a bit unkempt, and you could definitely use a trim. Having said that, you strike me as articulate and a good guy to go get sloshed with.",
		"You win hottest beard in the room. Dude, we're in Dallas. You think we've slept together, but we haven't. But just so you know, I WOULD totally give in, like totally on the first date. You should call my manager and take me out and let me use your hair products in the morning. Stop being such a total girl, Euroman." ]
 
 	def initialize
		@message = MESSAGES.sample
		@image = Dir["./public/images/*"].sample[8..-1]
	end
end