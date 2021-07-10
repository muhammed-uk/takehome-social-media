## About
This is a small ruby application to pull out social media data from takehome.io

### Prerequisite
In order to run the application, please make sure `Ruby` is installed in your system.
Also install the following gems too.

```ruby
gem install sinatra
gem install rest-client
gem install json
```

### Running the application
You can run the application from the home directory by the command
```ruby
ruby main.rb
```
This will start the application in localhost:3000.

Once the application started, you can consume the data by hitting `http://localhost:3000/` in browser.
If cURL is installed, you can try hitting `curl http://localhost:3000/` from your terminal.

#### Eg output:-
```json
{
  "facebook": [
    {
      "name": "Some Friend",
      "status": "Here's some photos of my holiday. Look how much more fun I'm having than you are!"
    },
    {
      "name": "Drama Pig",
      "status": "I am in a hospital. I will not tell you anything about why I am here."
    }
  ],
  "twitter": [
    {
      "username": "@GuyEndoreKaiser",
      "tweet": "If you live to be 100, you should make up some fake reason why, just to mess with people... like claim you ate a pinecone every single day."
    },
    {
      "username": "@mikeleffingwell",
      "tweet": "STOP TELLING ME YOUR NEWBORN'S WEIGHT AND LENGTH I DON'T KNOW WHAT TO DO WITH THAT INFORMATION."
    }
  ]
}
```

### Assumptions
If data is not available/any error occurs while pulling the data from the social media apps,
We will be displaying empty array as result.
#### Eg output:-
```json
{
  "facebook": [
    {
      "name": "Some Friend",
      "status": "Here's some photos of my holiday. Look how much more fun I'm having than you are!"
    },
    {
      "name": "Drama Pig",
      "status": "I am in a hospital. I will not tell you anything about why I am here."
    }
  ],
  "twitter": [
  ]
}
```
here twitter failed to provide the expected result and hence empty array returned.



# Thanks.
