# GitHub OmniAuth

This a simple Rails app implementing GitHub OmniAuth to authenticate a user to view a list of their public repos and a separate list of their private repos. This was built as part of the *Turing School of Software and Design* Winter Break work to further our understanding of OmniAuth, which will be used in the next Mod 3 back-end engineering group project.


*Home/Welcome Screenshot*

<img width="720" alt="Screen Shot 2020-12-31 at 6 51 10 PM" src="https://user-images.githubusercontent.com/60626984/103431653-34a15580-4b99-11eb-9e7b-6fd86ea7c91a.png">

This page has a login in link that when clicked will, behind the scenes, make a Post request to GitHub on the Users behalf and generate a access token. 

*Authentication Screenshot*

<img width="720" alt="Screen Shot 2020-12-31 at 7 06 44 PM" src="https://user-images.githubusercontent.com/60626984/103431779-6d422e80-4b9b-11eb-890d-0e090294ec05.png">

The User will be asked to sign in via GitHub. When the login on this page is clicked, the access token is used in a Get request to access their GitHub repositories and redirected to the dashboard page.

*Redirect Screenshot*

<img width="610" alt="Screen Shot 2020-12-31 at 7 14 44 PM" src="https://user-images.githubusercontent.com/60626984/103431905-61576c00-4b9d-11eb-95ba-8d9ae335dbbf.png">

Once the authentication process is complete, the User will be on their dashboard page. Here the User will see a list of their Public repos and a list of their Private repos. 

*Dashboard Screenshot*

<img width="720" alt="Screen Shot 2020-12-31 at 7 24 01 PM" src="https://user-images.githubusercontent.com/60626984/103431935-cb701100-4b9d-11eb-99e7-e4c68a11dccb.png">



