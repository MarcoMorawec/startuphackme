A weekly guide to startups, from finding your idea to founding your dream

Handcrafted by @marcomorawec and @igirard

--> This app runs mailcatcher

__To DO__

Marco:
Integrate Twitter button on modal with Twitter API - done!
Fix lesson detail page so all lessons show up -> done
Amazon S3 integration for picture upload - done
	- add image field to db
	- add the gems -> done
	- adjut the views and edit/new actions
	- setup a S3 bucket -done
	- add the user credentials - done
- Hide edit&delete for non-admin users on lesson detail page - done
- create the landing page - done
- create the lesson overview page - done
- create the lesson detail page - done
- add month to the lesson DB table - done
- add the month input field to the lesson edit and new views - done
- sort the lessons by month first and then by week - done
- make the loop cycle through the months and lessons properly - done
- make the domain work - F*ing finally!
- make lesson link being active based on time from sign-up - done
- re-direct user to lesson detail page after sign-up/sign-in - done
- em dash (extended dash for twitter) - done
- add lesson discription to DB and show in lesson detail page below lesson main headline, add to new&edit forms as well - Done
- check image upload function so it resizes correctly - done
- Make the CMS easier to user (place form fields where they will show up on the page) - done
- delete the white lines on lesson overview page - done
- Install Google Analytics - exclude internal traffic via cookie - done

- email user after sign-up
	- mailcatcher - done
	- gmail integration - done 
	- get email address set-up hello@startuphack.it - done
	- postmark (10k email/month free) integration

- Create the new front-end designs
	- lessond detail page - done
	- homepage - done
	- lesson overview page - done

- Pixel perfect edits:
	home:
		- change icons to green -> done!
		*- make sign-up button green -> gradient for sign-up button (#008947, #00A958), 1px border of #00A958 -> done!
		- margin of sign-up box should be 19px on left and right side of the sign-up field
		*- take out inner shadow of sign-up box and replace with inside border that's 3px and #dddddd -> done
		- width of sign-up box 276px (keep 3px boarder in mind - might need to go smaller)
		- emboss feel for outside box of sign-up field, bottom boarder should be transparent and light
		- "sign up" in all caps and bigger font, try 29px - done!
		- sign-up buttom is 155px and 55px tall
		- text below sign-up should be Museo-500 font - done!

		*- make font of feature copy smaller - 15px, copy left-centered, make text boxes smaller (200px wide)
		- take shadow out of team pictures -> done!
		- 1px border around team images, color of border #cccccc -> done!
		- team title should be in museo -> done!
		- border between features and team is 10% black on top and 50% white on bottom - done!

	Lesson overview:
		*-green boxes around each lesson description - 480px by 114px
		- Take the green boxes away on mobile
		*- background should be gray light striped one

	Lesson Detail page:
		*- vertical divider between number and copy should be - left black at 15% and white right at 20%
		- space between name and title should be less
		- intro description should be left-justified, font should be Museo-500
		*- Put in Marco's B/W foto (send email a big file of that photo)
		- letter spacing should be less on title
		*- no shadow on "week 0"

	LESS OF A PRIORITY:
	Sign-up and sign-in
		- should be gray/striped background

	Top-nav:
		- spacing between links should be less


- email user new lessons link every 7 days



Isaac:
Fix font assets - done
Figure out how to apply gradient over background image - done
Override nav button text-shadow - done
Disabled link hovers (logo and nav text specifically)
Fix signup email field font size (font-size not working?)
Make "Sign up" button green
Center all elements (bootstrap is fucking wacky shit!)
Fix box-shadows under team photos
Fix Emily team photo border issue
Fix vertical hr's on lesson detail page