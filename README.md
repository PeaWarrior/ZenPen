# Zen Pen
Check out [our demo video](https://www.youtube.com/watch?v=2fVkiududa8)

Zen Pen is a mental health web app designed to help users reduce stress through self-expression and mindfulness meditation. 

![Zen Pen](https://i.ibb.co/6tr2mWk/Screen-Shot-2020-09-27-at-11-00-03-AM.png)

Users can:
- Create, tag, and search for journal entries
- Access a library of guided meditation audios and add audios to favorites
- View last seven days’ activities
- Set goals


# Getting Started

* Install [Homebrew](https://brew.sh/) 

  `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
* Install [Ruby](https://www.ruby-lang.org/en/) 

  `$ brew install ruby` 
* Install [Rails](https://rubyonrails.org/) 

  `$ gem install rails`

# Download This Project

* Clone the repo and cd into the directory
* Install dependencies

  `$ bundle install`
* Migrate and seed

  `$ rails db:migrate`  

  `$ rails db:seed`
* Start rails server

  `$ rails s`  

# Features

### Journaling
![Journal](https://media3.giphy.com/media/3MDUpmKeQ8Jpv2sUas/giphy.gif)

* Receive a random prompt on click
* Create a new rich-text entry using Rails Action Text
* Edit and delete entries

### Journal Search
![Search by Click](https://media3.giphy.com/media/6H26QgAIyX5oNfP8qn/giphy.gif)
![Search by Input](https://media2.giphy.com/media/eXfRQPVBKcx3evkLSB/giphy.gif)

* Search by clicking a tag or by inputting tag name, content, or title

### Meditation
![Meditation](https://media2.giphy.com/media/glJJZDkd5WjZpGxNQU/giphy.gif)

* Listen to a random guided meditation audio on click
* Skip an audio
* Favorite and un-favorite an audio

### Goal Tracking
![Goal Tracking](https://media2.giphy.com/media/TeDQ3fcLnNdTXBxcA9/giphy.gif)

* Create a meditation or writing goal
* See percentage progress

### Last Seven Days
![Last Seven Days](https://i.ibb.co/tZV9SG4/Screen-Shot-2020-09-27-at-9-51-04-AM.png)

* See displayed activities for the last seven days, icons indicate whether a meditation session was completed and/or a journal entry was written

### Auth
![Auth](https://media1.giphy.com/media/77rj3TZzoOTcK10Ayu/giphy.gif)

* Register and login, edit and delete account

# Tech Stack
* Ruby on Rails
* SQLite3
* HTML/CSS
* Bootstrap
* Active Record
* Action Text: Trix Editor
