<h1 align='center'><b>
🔥 HotPlay 🔥</b></h1>  
<p align='center'>
A full stack <code>React.js</code>, <code>Ruby on Rails</code> web app aimed to provide
an interactive music sharing chat platform as a social and convenient way of discovering new music.
</p>
 

<p align="center">
Built with a 🖤 of 🎵, 🔍and ✨ by <a href='https://github.com/robin-raq'> Raq
Robinson</a>
</p>

**Demo** 
------------
[video-demo](https://www.loom.com/share/4d50e0e68b004e8aafd0ee955836fb5d)

**Features**
------------

Utilizes Redis adapter and Action Cable to acheive live chat functionality and fetches from the Youtube API to generate a playlist of recommended tracks for each channel.

**Tech Stack**
--------------

This web app makes use of the following:

**Backend**

-   [Ruby 2.6.1](https://www.ruby-lang.org/en/)
-   [Ruby on Rails ~> 6.0](https://rubyonrails.org/) - MVC web framework used as an API
-   [PostgreSQL >= 0.18, < 2.0](https://www.postgresql.org/) - Database
-   [bcrypt ~>3.1.7](https://github.com/codahale/bcrypt-ruby) - Rails gem for encryption and securing user passwords
-   [Active Model Serializers](https://github.com/rails-api/active_model_serializers) - Serializing API routes to JSON
-   [redis ~> 4.0](https://github.com/redis/redis-rb) - Rails adapter to run Action Cable in production
-   [Action Cable](https://github.com/rails/rails/tree/master/actioncable) - Integrated Websockets for Rails

**Front End**

-   [React.js](https://reactjs.org/) - Javascript library
-   [react-router](https://github.com/ReactTraining/react-router#readme) - NPM used for declarative routing
-   [tachyons](https://tachyons.io/) - CSS library
-   [youtube-api-v3-search](https://www.npmjs.com/package/youtube-api-v3-search) - Youtube Search Google API for Node.js and Browser

**Prerequisites**
-----------------

Before you begin, ensure you have installed the latest version of:

-   [Ruby](https://www.ruby-lang.org/en/)
-   [Rails](https://rubyonrails.org/)
-   [PostgreSQL](https://www.postgresql.org/)
-   [Node.js and npm](https://nodejs.org/en/)

This web app uses the following API keys from:

-   [Youtube Data API](https://developers.google.com/youtube/v3)

**Installing**
--------------

*For information on Frontend Installation please click here: [HotPlay Frontend](https://github.com/robin-raq/hot-play)*

Backend Installation:

-   Clone this repo to your local machine `git clone git <this-repo-url>`

-   run `bundle install` to resolve dependencies and install needed gems

-   run `rails s` to start server

-   Ensure your Backend API is running at `http://localhost:3000/`


 **Backend Design**
-----------------------------------------------
[db_Schema]https://drive.google.com/file/d/17CoYfHh25qHwAPRhvzpoqU9EBf6v5y7N/view?usp=sharing


