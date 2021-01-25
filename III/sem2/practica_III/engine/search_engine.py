import os
import time
import sys
import webbrowser
# import requests
# from bs4 import BeautifulSoup
from selenium import webdriver

from webdriver_manager.chrome import ChromeDriverManager



browser = webdriver.Chrome(ChromeDriverManager().install())
# browser = webdriver.Opera()


browser.get("file:///E:/code/universitate/practica_III/engine/media%20query/index_mq.html")
os.system('cls')

print("Choose server ")
print("1) duckduckgo" )
print("2) google" )
print("3) get currency" )

op1 = 0
while op1 == 0:
	brwIn = str(input("\nEnter option: "))
	print("server = ", brwIn) 

	if brwIn.isnumeric():
		brw = int(brwIn) 
		if brw > 3  or brw < 1 :
			print("[-] no such option")
		else:
			op1 = 1
	else:
		print("[-] error with user input")
	# if not type(brw) is int or brw > 3  or brw < 1:
	# 	print("[-] error with user input")
	# else:
	# 	op1 = 1


if brw != 3:
	opSearch = 0
	while opSearch == 0:
		keyWord = input("\nEnter keyword: ")

		if not keyWord:
			print("[-] nothing to search?")
		else:
			search_term = keyWord
			print("searching for " + search_term)
			opSearch = 1

# search_term="test"


if brw == 1:
	os.system('cls')
	print("searching in duckduckgo for", search_term)

	browser.get("https://duckduckgo.com")
	seach_box = browser.find_element_by_id("search_form_input_homepage")
	seach_box.send_keys(search_term)
	seach_box.submit()
	
	time.sleep(1)
	linksDuck = browser.find_elements_by_class_name("result__a")
	resultDuck = []
	OutputDuck = []

	# print("linksDuck", linksDuck)
		
	x = 1
	for link in linksDuck:
		href = link.get_attribute("href")
		resultDuck.append(href)
		x = x + 1

	# print("resultDuck len", len(resultDuck))

	no_deleteDuck = "duckduckgo"
	show = [zx for zx in resultDuck if not no_deleteDuck in zx] 

	for x in range(len(show)): 
		print (x+1, ")",  show[x])

	for cxz in show: 
		OutputDuck.append(cxz)


	inp = input("\nPress 'y' to load more... ")
	print ("\n")

	if inp == "y":
		more = browser.find_element_by_class_name("result--more__btn")
		more.click()	
		time.sleep(1)
		more2 = browser.find_element_by_class_name("result--more__btn")
		more2.click()	

	
		links = browser.find_elements_by_class_name("result__a")
		resultDuck2 = []
			
		for link in links:
			href = link.get_attribute("href")
			resultDuck2.append(href)

		OutputDuck2 = [qw for qw in resultDuck2 if not no_deleteDuck in qw] 
		
		for y in OutputDuck2: 
			OutputDuck.append(y)

		for c in range(0, x):
			OutputDuck2.pop(c)

		for z in range(len(OutputDuck2)): 
			print (x+2,")",  OutputDuck2[z])
			x = x + 1




###########################
###########################
###########################

	print("\nChoose operation")
	print("1) save file")
	print("2) acces a page")
	print("3) images")
	print("4) exit\n")


	# ch = 2
	op2 = 0
	while op2 == 0:
		chIn = str(input("\nEnter option: "))

		if chIn.isnumeric():
			ch = int(chIn) 
			if not type(ch) is int or ch > 3  or ch < 1 :
				print("[-] no such option")
			else:
				op2 = 1
		else:
			print("[-] error with user input")

	if ch == 1:
		outF = open("out.txt", "w")
		for line in OutputDuck:
			# write line to output file
			outF.write(line)
			outF.write("\n")
		outF.close()
		print ("Results are saved sucessfuly in out.txt")
		input("Press Enter to exit...")
		# browser.close()
		sys.exit(0)

###########################
###########################
###########################

	if ch == 2:
		os.system('cls')
		print("\n")

		for x in range(len(OutputDuck)): 
			print (x+1, ")",  OutputDuck[x])

		print("\nChoose site from above\n")
		op2 = 0
		while op2 == 0:
			ch2In = str(input("Enter nr of site: "))
			if ch2In.isnumeric():
				ch2 = int(ch2In) 
				if type(ch2) is not int or ch2 > len(OutputDuck)  or ch2 < 1:
					print("[-] no such option\n")
				else:
					op2 = 1
			else:
				print("[-] error with user input\n")
		# print(type(ch2), ch2)
		print('site to access: ', OutputDuck[ch2-1])

		browser.get(OutputDuck[ch2-1])
		input("Press Enter to exit...")
		# browser.close()
		sys.exit(0)


	if ch == 3:
		browser.get("https://duckduckgo.com")
		seach_box = browser.find_element_by_id("search_form_input_homepage")
		seach_box.send_keys(search_term)
		seach_box.submit()
		img = browser.find_element_by_xpath("//*[@id=\"duckbar_static\"]/li[2]/a")
		img.click()	
		input("Press Enter to exit...")
		# browser.close()
		sys.exit(0)


	if ch == 4:
		# browser.close()
		sys.exit(0)



	browser.close()
	sys.exit(0)


####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
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
	
	y = 0
	for link in links:
		href = link.get_attribute("href")
		result.append(href)

	no_delete = "google"
	Output = [a for a in result if not no_delete in a] 

	for x in range(len(Output)): 
		print (y+1, ")",  Output[x])
		y = y + 1



	inp = input("\nPress 'y' to load more... ")
	print("\n")

	if inp == "y":
		more = browser.find_element_by_class_name("G0iuSb")
		more.click()	
		# time.sleep(2)
		
		links2 = browser.find_elements_by_xpath("//div[@class='r']//a")
		result2 = []

		for link in links2:
			href = link.get_attribute("href")
			result2.append(href)

		Output2 = [a for a in result if not no_delete in a] 

		for x in Output2: 
			Output.append(x)
		
		for x in range(len(Output2)): 
			print (y+1, ")",  Output2[x])
			y = y + 1


		more2 = browser.find_element_by_xpath("//*[@id=\"xjs\"]/div/table/tbody/tr/td[4]/a")
		more2.click()		
		# time.sleep(1)

		# time.sleep(.10)
		
		links3 = browser.find_elements_by_xpath("//div[@class='r']//a")
		result3 = []

		for link in links3:
			href = link.get_attribute("href")
			result3.append(href)

		Output3 = [a for a in result3 if not no_delete in a] 

		for x in Output3: 
			Output.append(x)


		for x in range(len(Output3)): 
			print (y+1, ")",  Output3[x])
			y = y + 1
 
	# for x in range(len(Output)): 
	# 	print (x+1, ")",  Output[x])

###########################
###########################
###########################

	print("\nChoose operation")
	print("1) save file")
	print("2) acces a page")
	print("3) images")
	print("4) exit\n")

	# ch = 2

	op2 = 0
	while op2 == 0:
		chIn = str(input("\nEnter option: "))
		if chIn.isnumeric():
			ch = int(chIn) 
			if not type(ch) is int or ch > 3  or ch < 1 :
				print("[-] no such option")
			else:
				op2 = 1
		else:
			print("[-] error with user input")

	if ch == 1:
		outF = open("out.txt", "w")
		for line in Output:
			# write line to output file
			outF.write(line)
			outF.write("\n")
		outF.close()
		print ("Results are saved sucessfuly in out.txt")
		input("Press Enter to exit...")
		# browser.close()
		sys.exit(0)



	if ch == 2:
		os.system('cls')
		print ("\n")
		for x in range(len(Output)): 
			print (x+1, ")",  Output[x])

		print("\nChoose site ")
		op2 = 0
		while op2 == 0:
			ch2In = str(input("Enter nr of site: "))
			if ch2In.isnumeric():
				ch2 = int(ch2In) 
				if type(ch2) is not int or ch2 > len(Output)  or ch2 < 1:
					print("[-] no such option\n")
				else:
					op2 = 1
			else:
				print("[-] error with user input\n")
		
		# print(type(ch2), ch2)
		print('site to access: ', Output[ch2-1])
		browser.get(Output[ch2-1])
		input("Press Enter to exit...")
		browser.close()
		sys.exit(0)


	if ch == 3:
		img = "https://google.com/search?q=" + search_term
		browser.get(img)
		time.sleep(.10)
		img = browser.find_element_by_xpath("//*[@id=\"hdtb-msb-vis\"]/div[2]/a")
		img.click()
		input("Press Enter to exit...")
		browser.close()
		sys.exit(0)

	if ch == 4:
		browser.close()
		sys.exit(0)



	# more = browser.find_element_by_class_name("result--more__btn")
	# more.click()	

####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################
####################################################



if brw == 3:
	os.system('cls')

	browser.get("https://www.curs.md/ro")

	currency = ["mdl","usd","eur","rub","ron","uah"]
	print ("\navailable currency\nmdl","usd","eur","rub","ron","uah")

	op1 = 0
	x = 0
	while op1 == 0:
		optIn = str(input("\nEnter option: "))
		# print(optIn, "to ") 
		# optIn2 = str(input())

		if optIn in currency:
			x = x + 1
			op1 = 1
		else:
			print(optIn, "not available")

	index = currency.index(optIn) + 1
	index = str(index) 
	# print(type(index), index)
	path = "//*[@id=\"suggest-block\"]/div/div[1]/div[1]/div[2]/button[" + index  + "]"
	val = browser.find_element_by_xpath(path)
	val.click()
	

	# if optIn:
		# pass

	op1 = 0
	while op1 == 0:
		brwIn = str(input("\nEnter sum: "))

		if brwIn.isnumeric():
			brw = int(brwIn) 
			op1 = 1
		else:
			print("[-] error with user input")


# browser.findElement(By.name("phone")).sendKeys("(222)222-2222");   

	# time.sleep(4)
	send_sum = browser.find_element_by_xpath("//*[@id=\"suggest-block\"]/div/div[1]/div[1]/div[1]/input")
	send_sum.click()
	send_sum.send_keys(brw)

	# time.sleep(1)
	string = ""

	for x in range(len(currency)): 
		if x == currency.index(optIn):
			asd = 0
		else:
			temp = ""
			temp = str(x+1) 
			path = "//*[@id=\"suggest-block\"]/div/div[1]/div[3]/div[3]/button[" + temp + "]"
			
			changeCurency = browser.find_element_by_xpath(path)
			changeCurency.click()

			zxc = browser.find_element_by_xpath("//*[@id=\"suggest-block\"]/div/div[1]/div[3]/div[2]/input").get_attribute('value')
			print (brwIn ,optIn , "to",  currency[x], "=", zxc)
			# print ("type ", type(zxc))

			temp2 = zxc.replace('.', "")
			temp2 = temp2.replace(',', '.')
			temp2 = float(temp2) 
			temp3 = float(brwIn) 
			# print("\t\t\ttemp" , temp2, type(temp2))
			# print("\t\t\tbrw " , temp3, type(temp3))
			avg = temp3 / temp2
			st = ""
			st = ("{:.2f}".format(avg))
			# print("\t\t\tavg " , "{:.2f}".format(avg), type(avg))
			string = string + st + " " + optIn + " for 1 " + currency[x] + "\n"
	# time.sleep(1)

	print("\n", string)
	input("Press Enter to exit...")
	# browser.close()
	sys.exit(0)	