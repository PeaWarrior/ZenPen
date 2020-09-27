# Zen Pen
Check out [our demo video](https://www.youtube.com/watch?v=2fVkiududa8)

Zen Pen is a mental health web app designed to help users reduce stress through self-expression and mindfulness meditation. 

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
![Journal](https://im3.ezgif.com/tmp/ezgif-3-174a128e619e.gif)

* Receive a random prompt on click
* Create a new rich-text entry using Rails Action Text
* Edit and delete entries

### Journal Search
![Search by Click](https://im3.ezgif.com/tmp/ezgif-3-3e84c32c8a42.gif)
![Search by Input](https://im3.ezgif.com/tmp/ezgif-3-4c48cee7aee2.gif)

* Search by clicking a tag or by inputting tag name, content, or title

### Meditation
![Meditation](https://im3.ezgif.com/tmp/ezgif-3-3f96cd99aa49.gif)

* Listen to a random guided meditation audio on click
* Skip an audio
* Favorite and un-favorite an audio

### Goal Tracking
![Goal Tracking](https://im3.ezgif.com/tmp/ezgif-3-5880058c69f6.gif )

* Create a meditation or writing goal
* See percentage progress

### Last Seven Days
![Last Seven Days](https://i.ibb.co/tZV9SG4/Screen-Shot-2020-09-27-at-9-51-04-AM.png)

* See displayed activities for the last seven days, icons indicate whether a meditation session was completed and/or a journal entry was written

### Auth
![Auth](https://im3.ezgif.com/tmp/ezgif-3-253aff390829.gif)

* Register and login, edit and delete account

# Tech Stack
* Ruby on Rails
* SQLite3
* HTML/CSS
* Bootstrap
* Active Record
* Action Text: Trix Editor
