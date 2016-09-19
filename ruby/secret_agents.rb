#encrypt 
#def the method and ask for the string
#define alphabet variable
#find the index of the string and added 1 to the index value
#this will allow us to find the next value in the alphabet

def encrypt(password)
	def ascend (letter)
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		value=alphabet.index(letter)+1
		return alphabet[value]
	end

	index = 0
	while index < password.length
		if password[index] == "z"
			password[index] = "a"
		else
			password[index]=ascend(password[index])
		end
	index += 1
	end
password
end


#puts "enter password to encrypt"
#input_u = encrypt(gets.chomp)
#puts input_u



#decrypt
#define alphabet variable
#find the index of the string and decrease 1 to the index value
#this will allow us to find the value in the alphabet prior

def decrypt (password)
	def reverse (letter)
		alphabet = "abcdefghijklmnopqrstuvwxyz"
		value = alphabet.index(letter)-1
		return alphabet[value]
	end

	index = 0
	while index < password.length
		if password[index] =="a"
			password[index] = "z"
		else
			password[index] = reverse(password[index])
		end
		index +=1
	end
password
end


#puts "enter a password to decrypt"
#input_2 = decrypt(gets.chomp)
#puts input_2


#puts decrypt(encrypt("swordfish"))


puts "Do you want to encrypt or decrypt a password?"
password_status = gets.chomp.downcase
if password_status == "encrypt"
	puts "Enter your password"
	password_encrypt = encrypt(gets.chomp)
	puts password_encrypt
elsif password_status == "decrypt"
	puts "Enter your password"
	password_decrypt = decrypt(gets.chomp)
	puts password_decrypt
else
	puts "Not valid"
end

puts "Goodbye"