def full_draw_man
"
 ______________
 |            |
 |            O
 |          o-|-o
 |            |
 |           [ ]
 |           d b
 |
 ----------------
"
end
def head_draw_man
"
 ______________
 |            |
 |            O
 |          
 |            
 |           
 |           
 |
 ----------------
"
end
def body_draw_man
"
 ______________
 |            |
 |            O
 |            |
 |            |
 |           
 |          
 |
 ----------------
"
end
def oa_draw_man
"
 ______________
 |            |
 |            O
 |            |-o
 |            |
 |            
 |           
 |
 ----------------
"
end
def draw_man_arms
"
 ______________
 |            |
 |            O
 |          o-|-o
 |            |
 |           
 |           
 |
 ----------------
"
end
def draw_man_legs
"
 ______________
 |            |
 |            O
 |          o-|-o
 |            |
 |           [ ]
 |            
 |
 ----------------
"
end
array = []
cheat_proof = ["filler_word"]
correct_array = []
correct_letters = []
draw_men = [full_draw_man.to_s, draw_man_legs.to_s, draw_man_arms.to_s, oa_draw_man.to_s, body_draw_man.to_s, head_draw_man.to_s]
win = false
words = ["c o n q u e s t", "z y g o t e", "l y n x", "b r e a d", "e l e v e n", "m a i n s t r e a m", "c e r e a l", "p l a s m a", "s t e r n u m", "p a r o l e", "h a c k e r", "l u t e ", "m a n d a t e"]
hangman_word = words.sample
letters = hangman_word.split(" ")
number_check = 0
winning = 0
f = letters
puts "Welcome to hangman! make your first letter guess! (please do not enter the same letter more than twice, also keep track of your correct letters)"
letters.each do |underscores|
	underscores = "_ "
	print underscores
	correct_letters.push "_"
	number_check = number_check + 1
end
while draw_men != []
lc = 0
already_guessed = 0
	if number_check.to_f ==  winning.to_f
		puts "You win!"
		win = true
		puts hangman_word.to_s
	break
	else
	end
num = 0
	puts ""
	guess = gets.chomp
	z = 0
	b = 0
	letter_of_word = 1
	letters.each do |letter|
		if (letter.to_s <=> guess.to_s) == 0
			z = 5
			print "that's letter ", letter_of_word.to_s, " of the word"
			b = guess.to_s
			puts ""
			letter_of_word = letter_of_word + 1
		else
			letter_of_word = letter_of_word + 1
		end
	end
	if z == 0
		puts "You did not guess a correct letter"
		puts draw_men.pop
	end
	array.each do |o|
		if (guess <=> o) == 0
			winning = winning - 1
		end
	end
	f.each do |p|
		if (guess <=> p) == 0
			winning = winning + 1
			array.push b
		end
	end
	letters.each do |dummy|
			if (dummy <=> guess) == 0
				print dummy.to_s, " "
			else
				print "_ "
			end
	end

if draw_men == []
	puts "You lose!"
	print "The word was ", hangman_word.to_s
	puts ""
end
end
