# GitHub OmniAuth

This a simple Rails app implementing GitHub OmniAuth to authenticate a user to view a list of their public repos and a separate list of their private repos. This was built as part of the *Turing School of Software and Design* Winter Break work to further our understanding of OmniAuth, which will be used in the next Mod 3 back-end engineering group project.


*Home/Welcome Screenshot*

<img width="720" alt="Screen Shot 2020-12-31 at 6 51 10 PM" src="https://user-images.githubusercontent.com/60626984/103431653-34a15580-4b99-11eb-9e7b-6fd86ea7c91a.png">

This page has a login in link that when clicked will, behind the scenes, make a Post request to GitHub on the Users behalf and generate a access token. The User will be asked to sign in via GitHub to continue.

*Authentication Screenshot*

<img width="720" alt="Screen Shot 2020-12-31 at 7 06 44 PM" src="https://user-images.githubusercontent.com/60626984/103431779-6d422e80-4b9b-11eb-890d-0e090294ec05.png">
