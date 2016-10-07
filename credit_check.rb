#We need to have access to  a card number
#starting from the right moving left every second digit is doubled (we don't start doubling with the check digit)
#if the doubled product is greater than 9 then sum the two digits together (any double digit number between 10 - 18 if you subract 9 you will get the sum of the two digits.)
# We add all the numbers of the card together and find their sum
#the sum must be divisible by ten with NO remainder in order for it to be a valid number (the ones column of the number must be a 0)

#You don't need and loops, itereation, or arrays
# You don't need to write any methods or create classes
#You don't need automated tests
# You can pull a character out of a string using my_string[x], where x is the numeric number
#You can convert a string into and integer by calling .to_i (ex: "4".to_i)
#A HALF FINISHED PROJECT IS BETTER THAN A HALF ASSED PROJECT
card_number = "4929735477250543"


card = card_number.split(//)

card_one = card[-1].to_i
card_1 = card[-2].to_i * 2
card_two = card[-3].to_i
card_2 = card[-4].to_i * 2
card_three = card[-5].to_i
card_3 = card[-6].to_i * 2
card_four = card[-7].to_i
card_4 = card[-8].to_i * 2
card_five = card[-9].to_i
card_5 = card[-10].to_i * 2
card_six = card[-11].to_i 
card_6 = card[-12].to_i * 2
card_seven = card[-13].to_i
card_7 = card[-14].to_i * 2
card_eight = card[-15].to_i
card_8 = card[-16].to_i * 2

all_cards = [card_1, card_one,
             card_2, card_two, 
             card_3, card_three,
             card_4, card_four,
             card_5, card_five,
             card_6, card_six,
             card_7, card_seven,
             card_8, card_eight]


doubled = all_cards.map do |num|
    number = num.to_i
    if number > 9
      number - 9
    else
      number
    end
end

answer = doubled.reduce(0,:+)

puts "The sum was #{answer}"

if answer % 10 === 0
  puts "true"
else
  puts "false"
end