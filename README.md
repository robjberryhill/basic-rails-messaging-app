# Mini Messaging App
* Dependency updates not supported.

* Rails version - 5.2.4.1
* semantic-ui-sass (2.4.2.0)

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

### This app covers
- Installing front end framework `gem 'semantic-ui'`.
- Installing front end framework dependency `gem 'jquery-rails'`.
  * see `application.js` for implementation of the requires and jquery usage for semantic ui.
- Adding favicon using font awesome and a generator.
  * Semantic ui comes with font awesome.
  * Generator `https://gauger.io/fonticon/`.
  * In `application.html.erb` add `<%= favicon_link_tag %>`.
    - `favicon_link_tag` does all the rails magic for you.
- Using Semantic UI to style easily style pages.
- Using `gem "hirb"` for better console results
  * `Hirb.enable` while in console.
- Installing websockets with actioncable.
  * `rails g channel channelname`
  * In `routes.rb` - `mount ActionCable.server, at: "/cable"`
  * `chatroom_channel.rb`
  * `messages_controller.rb`
  * `chatroom.coffee`
- Using scopes to display what I want.
  * In `message.rb` - `scope :custom_display, -> { order(:created_at).last(20) }`
  * referenced in `chatroom_controller.rb`
