mail list
elementsOfBox: aBox

	^ aBox subBoxes , (aBox mails sorted: [:a :b | a date > b date ])