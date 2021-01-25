import os
import time
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager

# driver = webdriver.Chrome(ChromeDriverManager().install())


browser = webdriver.Chrome(ChromeDriverManager().install())
# browser = webdriver.PhantomJS()
os.system('cls')

print("Choose server ")
print("1) duckduckgo" )
print("2) google" )

# brw = "2"
op1 = 0
while op1 == 0:
	brw = int(input("\nEnter option: "))
	print("server = ", brw)  

	if not type(brw) is int or brw > 2  or brw < 1 :
		print("[-] error with user input")
	else:
		op1 = 1

keyWord = input("\nEnter keyword: ")
search_term = keyWord
print("searching for " + search_term)
# search_term="test"


if brw == 1:
	os.system('cls')
	print("searching in duckduckgo for", search_term)

	browser.get("https://duckduckgo.com")
	seach_box = browser.find_element_by_id("search_form_input_homepage")
	seach_box.send_keys(search_term)
	seach_box.submit()
	
	links = browser.find_elements_by_class_name("result__a")
	result = []
		
	x = 1
	for link in links:
		href = link.get_attribute("href")
		print(x, ")", href)
		result.append(href)
		x = x + 1

	inp = input("\nPress 'y' to load more... ")

	if inp == "y":
		more = browser.find_element_by_class_name("result--more__btn")
		more.click()	
		time.sleep(.10)
		more2 = browser.find_element_by_class_name("result--more__btn")
		more2.click()	

	
		links = browser.find_elements_by_class_name("result__a")
		result = []
			
		x = 1
		for link in links:
			href = link.get_attribute("href")
			print(x, ")", href)
			result.append(href)
			x = x + 1



###########################
###########################
###########################

	print("\nChoose operation")
	print("1) save file")
	print("2) acces a page")
	print("3) exit\n")

	# ch = 2
	op2 = 0
	while op2 == 0:
		ch = int(input("\nEnter option: "))
		if not type(ch) is int or ch > 3  or ch < 1 :
			print("[-] error with user input")
		else:
			op2 = 1

	if ch == 1:
		outF = open("out.txt", "w")
		for line in result:
			# write line to output file
			outF.write(line)
			outF.write("\n")
		outF.close()
		print ("Results are saved sucessfuly in out.txt")

###########################
###########################
###########################

	if ch == 2:
		print("\nChoose site ")
		print()
		op2 = 0
		while op2 == 0:
			ch2 = int(input("Enter nr of site: "))
			if type(ch2) is not int or ch2 > len(result)  or ch2 < 1:
				print("[-] error with user input")
			else:
				op2 = 1
		print(type(ch2), ch2)
		print('site to access: ', result[ch2-1])

		browser.get(result[ch2-1])
		input("Press Enter to continue...")
		browser.close()


	if ch == 3:
		browser.close()



	browser.close()


####################################################
####################################################
####################################################
####################################################
####################################################



if brw == 2:
	os.system('cls')

	print("searching in google for", search_term)
	path = "https://google.com/search?q="
	path2 =  path + search_term
	browser.get(path2)

	links = browser.find_elements_by_xpath("//div[@class='r']//a")
	result = []
	
	y = 1
	for link in links:
		href = link.get_attribute("href")
		# print(y,")", href)
		# if "google" in href:
		# 	z = 3
		# 	# print ("\n\tgoog", "\n----\n", href, "\n----")
		# if "google" not in href:
		# 	result.append(href)
		result.append(href)
		y = y + 1

	no_delete = "google"
	Output = [a for a in result if not no_delete in a] 

	for x in range(len(Output)): 
		print (x+1, ")",  Output[x])

	inp = input("\nPress 'y' to load more... ")
	os.system('cls')
	if inp == "y":
		more = browser.find_element_by_class_name("G0iuSb")
		more.click()	
		time.sleep(.10)
		
		links2 = browser.find_elements_by_xpath("//div[@class='r']//a")
		result2 = []

		for link in links2:
			href = link.get_attribute("href")
			result2.append(href)

		Output2 = [a for a in result if not no_delete in a] 

		for x in Output2: 
			Output.append(x)
 
	for x in range(len(Output)): 
		print (x+1, ")",  Output[x])

###########################
###########################
###########################

	print("\nChoose operation")
	print("1) save file")
	print("2) acces a page")
	print("3) exit\n")

	# ch = 2

	op2 = 0
	while op2 == 0:
		ch = int(input("\nEnter option: "))
		if not type(ch) is int or ch > 3  or ch < 1 :
			print("[-] error with user input")
		else:
			op2 = 1


	if ch == 1:
		outF = open("out.txt", "w")
		for line in Output:
			# write line to output file
			outF.write(line)
			outF.write("\n")
		outF.close()
		print ("Results are saved sucessfuly in out.txt")



	if ch == 2:
		for x in range(len(Output)): 
			print (x+1, ")",  Output[x])

		print("\nChoose site ")
		op2 = 0
		while op2 == 0:
			ch2 = int(input("Enter nr of site: "))
			if type(ch2) is not int or ch2 > len(Output)  or ch2 < 1:
				print("[-] error with user input")
			else:
				op2 = 1
		
		print(type(ch2), ch2)
		print('site to access: ', Output[ch2-1])
		browser.get(Output[ch2-1])
		input("Press Enter to continue...")
		browser.close()


	if ch == 3:
		browser.close()



	# more = browser.find_element_by_class_name("result--more__btn")
	# more.click()	

	



