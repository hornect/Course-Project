Group Project - README Template
===

# Hornect

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Multi-Purposful instant messanger, contact anyone on your campus, schedule organizer and group project strategies. Group chat with additional capablities  that can potentially improve group project experiences 

### App Evaluation
- **Category:** Social Networking
- **Mobile:** This app would be primarily developed for mobile but would perhaps be just as viable on a computer, such as WhatsApp or other similar apps. Functionality wouldn't be limited to mobile devices, however mobile version could potentially have more features.
- **Story:** Allow users to connect instantly with anyone on campus, schedule effective meeting times, organize deadlines and utilize information on different group project stategies
- **Market:** Any individual could choose to use this app, and to keep it a safe environment, people would be organized into age groups.
- **Habit:** This app can be used as often or unoften as the user would like depending on how intreged they are with instant messaging and what exactly they are looking for.
- **Scope:** First we would start by showing a list of potential contacts and recent contact threads, Then the user has the choice to instant message a single person or form a group and utilize the addition features. This can potienally optimize collaberation between students.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in to access previous chats or customizes settings
* Allow users to select who they'll like to chat with
* User can add deadlines & weekly avaliablity  to Calander
* User has access to utilize Group Project techniques/strategies 
* Profile pages for each user
* Settings (Accesibility, Notification, General, etc.)

**Optional Nice-to-have Stories**

* Tip on how to use the app

### 2. Screen Archetypes

* Login
* Register - Users signs up or logs into their account 
   * Upon Download/Reopening of the application, the user is prompted to log in to gain access to their profile information to be properly matched with another person.
* Messaging Screen - Chat for users to communicate
    * Directory that allows you contant anyone on campus using the app or default place in a general chat based on major 
* Profile Screen
    * Allows user to upload a photo and fill in information that is interesting to them and others 
* Calander
    * Allow users to enter deadlines or reminders as well as include their weekly schedule to infrom other group members when they'll be avaliable 
* Group Project techniques/strategies 
    * Allow users to review and utilitze different tatics to take on any project 
* Settings Screen
   * Lets people change language, and app notification settings. 
   
### 3. Navigation

**Tab Navigation** (Tab to Screen)
* Profile 
* Group Chat options 
* Settings 

**Flow Navigation** (Screen to Screen)
* Forced Log-in
    * Account creation is no log in is avaliable 
* Messaging Screen
    * Jumps to chat, allowing user to access previous chats or contanct another user
    * If  user in a group chat addition capabilities will be avaliable
* Profile 
    * Text field to be modified. 
* Settings 
    * Toggle settings
    
## Wireframes
<a href="https://ibb.co/4pxsRYD"><img src="https://i.ibb.co/kXF329r/IMG-3060.jpg" alt="IMG-3060" border="0"></a>

## Schema 
### Models
#### Post

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | ChatLabel     | String   | Conversation idenifier |
   | authorImage   | Pointer to User| image author |
   | authorLabel   | String   | name of the author |
   | User Text     | String   | message response by author |
   | createdAt     | DateTime | date when post is created (default field) |
   | loginLabel    | String   | login page label |
   | signUpLabel   | String   | signup page label |
   | menuLabel     | String   | menu page label |
   
   
### Networking
#### List of network request by screen 
    - Home Directory Search
      - (Read/GET) User Searching Query
        ''' swift
        let query = PFQuery (className:"Directory")
        query.whereKey("Student" ,equalTo:searchedStudents
        query.order(byDescending: "Alphabetical")
        query.findObjectsInBackground { (Students: [PFuser]?, error:Error?) in 
          if let error = error {
            print (error.localizedDescription)
            } else if let user = Student {
               print("Successfully retrieved")
            }
         }
        '''
      - Default Chat
        -(Read/GET) Default Chat based on major
          ''' swift
          let query = PFQuery(className:"Major")
          query.whereKey("Major" , equalTo:searchedMajor
          query.order(byDescending: "Alphabetical")
          query.findObjectsInBackground { (Major: [PFObject]?, error:Error?) in 
          if let error = error {
            print (error.localizedDescription)
            } else if let DegreePath = Major {
               print("Successfully retrieved")
            }
         }
          '''
      - Chatroom Search
        -(Read/GET) Group Chat look up
          '''swift
          Let query = PFQuery(className:"ChatLabel")
          query.whereKey("Chats" ,equalTo:searchedChat
          query.order(byDescending: "Alphabetical")
          query.findObjectsInBackground { (Chat: [PFObject]?, error:Error?) in 
          if let error = error {
            print (error.localizedDescription)
            } else if let Chatroom = ChatLabel {
               print("Successfully retrieved")
            }
         }
          '''
#### Existing API Endpoints
##### Parse
- Base Url - [https://parseplatform.org/Parse-SDK-iOS-OSX/api/] (https://parseplatform.org/Parse-SDK-iOS-OSX/api/)

#### Progress Gif
<img src="http://g.recordit.co/4V1ZfiRVG3.gif">
       
   
