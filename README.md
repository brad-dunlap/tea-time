<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<div id="top"></div>

<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
<p align="center">
  <img src="https://img.shields.io/github/contributors/brad-dunlap/tea-time?style=for-the-badge" alt="Contributors">
  <img src="https://img.shields.io/github/forks/brad-dunlap/tea-time?style=for-the-badge" alt="Forks">
  <img src="https://img.shields.io/github/stars/brad-dunlap/tea-time?style=for-the-badge" alt="Stargazers">
  <img src="https://img.shields.io/github/issues/brad-dunlap/tea-time?style=for-the-badge" alt="Issues">
</p>


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/brad-dunlap/tea-time">
    <img src=images/tea.jpeg alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Tea Time</h3>

  <p align="center">
    Mod 4 Take Home Challenge
    <br />
       ·
    <a href="https://github.com/brad-dunlap/tea-time/issues">Report Bug</a>
    ·
    <a href="https://github.com/brad-dunlap/tea-time/issues">Request Feature</a>
  </p>
</div>
<br />



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#database-tables">Database Tables</a></li>
    <li><a href="#requests-and-responses">Requests and Responses</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<br />

# Tea Time API

Welcome to the Tea Time API! This Rails API allows customers to subscribe to a tea subscription service, manage their subscriptions, and explore various tea details. The API is designed to be easy to understand and consume by frontend developers, providing a seamless experience for customers interested in tea subscriptions.

## About the Project

The Tea Time API was developed as part of the curriculum at Turing School of Software and Design. The project aims to assess the following learning goals:

1. **Strong Understanding of Rails:** The project emphasizes the use of Rails, a popular web application framework, to build a robust API. By implementing this project, developers gain hands-on experience in utilizing Rails' powerful features and conventions.

2. **Creating Restful Routes:** Restful routes play a crucial role in designing well-structured APIs. In this project, developers are expected to create endpoints that follow RESTful principles, ensuring clarity, consistency, and ease of use for API consumers.

3. **Demonstration of Well-Organized Code (OOP):** Object-Oriented Programming (OOP) is a fundamental concept in software development. The project encourages developers to showcase their ability to write clean, organized, and maintainable code, leveraging OOP principles to enhance the structure and readability of their implementation.

4. **Test-Driven Development (TDD):** Test-driven development is an essential practice in modern software engineering. Throughout this project, developers are encouraged to follow TDD principles by writing tests before implementing the corresponding functionality. This approach ensures the reliability and stability of the API while facilitating code maintainability and extensibility.

5. **Clear Documentation:** Effective documentation is a vital aspect of any software project. By providing clear and comprehensive documentation, developers demonstrate their ability to communicate their work effectively to other developers and stakeholders. This project emphasizes the importance of documenting the API's endpoints, expected request/response formats, and any necessary setup steps.

## Data Details

The Tea Time API utilizes the following data models to represent tea, customers, and subscriptions:

### Tea

- **Title**: The name or title of the tea.
- **Description**: A brief description or summary of the tea.
- **Temperature**: The recommended temperature for brewing the tea.
- **Brew Time**: The recommended duration for steeping the tea.

### Customer

- **First Name**: The first name of the customer.
- **Last Name**: The last name of the customer.
- **Email**: The email address of the customer.
- **Address**: The address details of the customer.

### Subscription

- **Title**: The title or name of the subscription.
- **Price**: The cost of the subscription.
- **Status**: The status of the subscription (e.g., active, canceled, etc.).
- **Frequency**: The frequency at which the subscription delivers tea products.

<br>

Thank you for choosing the Tea Time API! If you have any questions or need further assistance, please refer to the documentation or reach out to our support team.


<a href="#top">Back to top</a>
<br />
<br />

### Built With

[![Rails]][Rails-url][![PostgreSQL]][PostgreSQL-url][![JSON-Serializer]][JSON-Serializer-url][![Capybara]][Capybara-url][![RSpec]][RSpec-url][![Faker]][Faker-url][![Shoulda-Matchers]][Shoulda-Matchers-url]

<a href="#top">Back to top</a>

<br />
<br />

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
You must have the following software installed on your system:

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](https://guides.rubyonrails.org/getting_started.html)
* [Bundler](https://bundler.io/)
* [PostgreSQL](https://www.postgresql.org/download/)

<br />

### Installation

1. Clone the repo
   ```sh
   git clone git@github.com:brad-dunlap/tea-time.git
   ```
2. Install dependencies
   ```sh
   bundle install
   ```
3. Configure the database by running rails db:setup:
   ```js
   rails db:setup
   ```
4. Start the server by running rails server:
   ```js
   rails server
   ```
5. Visit http://localhost:3000 in your web browser to confirm that the app is running or use an application such as Postman to make your API calls to check the appropriate responses. 

<a href="#top">Back to top</a>
<br />


### Database Tables
<br />

![Database](/images/database.png)

<br />

### Requests and Responses
<br />

Get Requests<br>
![get_request](/images/get_request.png)<br>
Get Response<br>
![get_response](/images/get_response.png)
<br />
<br />

Post Requests<br>

![post_request](/images/post_request.png)<br>
Post Response<br>
![post_response](/images/post_response.png)
<br />
<br />

Patch Requests<br>

![patch_request](/images/patch_request.png)<br>
Patch Response<br>
![patch_response](/images/patch_response.png)
<br />
<br />


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<a href="#top">Back to top</a>
<br />
<br />

<!-- CONTACT -->
## Contact


<div align="left">
  <img src="https://avatars.githubusercontent.com/u/117024855?v=4" alt="Profile" width="80" height="80">
  <p align="left">
    Bradley Dunlap<br>
    <a href="https://github.com/brad-dunlap">Github: brad-dunlap</a> <br>
    <a href="https://www.linkedin.com/in/dunlap-brad/">LinkedIn: dunlap-brad</a>
  </p>
</div>


<a href="#top">Back to top</a>
<br />
<br />

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* ["The Best README Template" by Github User othneil](https://github.com/othneildrew/Best-README-Template)


<a href="#top">Back to top</a>





<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/brad-dunlap/tea-time.svg?style=for-the-badge
[contributors-url]: https://github.com/brad-dunlap/tea-time/graphs/contributors

[forks-shield]: https://img.shields.io/github/forks/brad-dunlap/tea-time.svg?style=for-the-badge
[forks-url]: https://github.com/brad-dunlap/tea-time/network/members

[stars-shield]: https://img.shields.io/github/stars/brad-dunlap/tea-time.svg?style=for-the-badge
[stars-url]: https://github.com/brad-dunlap/tea-time/stargazers

[issues-shield]: https://img.shields.io/github/issues/brad-dunlap/tea-time.svg?style=for-the-badge
[issues-url]: https://github.com/brad-dunlap/tea-time/issues

[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username

[product-screenshot]: images/screenshot.png


[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 

[Rails]: https://img.shields.io/badge/-Ruby%20on%20Rails-CC0000?logo=ruby-on-rails&logoColor=white&style=for-the-badge
[Rails-url]: https://rubyonrails.org 

[Circle-CI]: https://img.shields.io/circleci/build/github/wise-app-team/wise-app-be/main
[Circle-url]: https://app.circleci.com/

[PostgreSQL]: https://img.shields.io/badge/-PostgreSQL-4169E1?logo=postgresql&logoColor=white&style=for-the-badge
[PostgreSQL-url]: https://www.postgresql.org/

[Puma]: https://img.shields.io/badge/-Puma-FFD43B?logo=puma&logoColor=black&style=for-the-badge
[Puma-url]: https://github.com/puma/puma

[bcrypt]: https://img.shields.io/badge/-bcrypt-00599C?logo=gnu-privacy-guard&logoColor=white&style=for-the-badge
[bcrypt-url]: https://github.com/codahale/bcrypt-ruby

[Faraday]: https://img.shields.io/badge/-Faraday-3E3E3E?logo=ruby&logoColor=white&style=for-the-badge
[Faraday-url]: https://github.com/lostisland/faraday

[Figaro]: https://img.shields.io/badge/-Figaro-FF4136?logo=rubygems&logoColor=white&style=for-the-badge
[Figaro-url]: https://github.com/laserlemon/figaro

[JSON-Serializer]: https://img.shields.io/badge/-JSON%20API%20Serializer-1E90FF?logo=json&logoColor=white&style=for-the-badge
[JSON-Serializer-url]: https://github.com/jsonapi-serializer/jsonapi-serializer

[Capybara]: https://img.shields.io/badge/-Capybara-FF7F50?logo=rubygems&logoColor=white&style=for-the-badge
[Capybara-url]: https://github.com/teamcapybara/capybara

[RSpec]: https://img.shields.io/badge/-RSpec-FF7F50?logo=rubygems&logoColor=white&style=for-the-badge
[RSpec-url]: https://github.com/rspec/rspec

[Faker]: https://img.shields.io/badge/-Faker-FF69B4?logo=rubygems&logoColor=white&style=for-the-badge
[Faker-url]: https://github.com/faker-ruby/faker

[Shoulda-Matchers]: https://img.shields.io/badge/-Shoulda%20Matchers-5B5B5B?logo=rubygems&logoColor=white&style=for-the-badge
[Shoulda-Matchers-url]: https://github.com/thoughtbot/shoulda-matchers

[Web-mock]: https://img.shields.io/badge/-WebMock-8B0000?logo=rubygems&logoColor=white&style=for-the-badge
[Web-mock-url]: https://github.com/bblimke/webmock

[VCR]: https://img.shields.io/badge/-VCR-2F4F4F?logo=rubygems&logoColor=white&style=for-the-badge
[VCR-url]:  https://github.com/vcr/vcr
