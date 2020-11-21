# HandyFriends

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
An iOS app designed to make life easier for both customers and independent contractors. Customers can receive help real time from any independent contractor nearby by paying for the rates they charge. Receive service anywhere, at anytime.

### App Evaluation
- **Category:**
Contactless and Same Day Help
- **Mobile:**
iOS only for the time being, but can be expanded to other mobile platforms, as well as a desktop web app.
- **Story:**
An app for independent contractors to attract customers; Normal people can place an "order" for immediate help from anyone with the skills nearby. Contractors are able to charge their own rates and pick up jobs nearby real time.
- **Market:**
Homeowners looking for reliable and responsive help with small household repairs and maintenance tasks.
Service providers looking to serve the 'no job is too small' market. Target service providers can be plumbers, electricians, mechanics and etc.
- **Scope:**
Use Rest APIs to get data

- **Habit:**
Homeowners will use this app frequently to find dependable and trustworthy service providers that can take care of the small repair and maintenance tasks.
Service providers will use the app to post information about their services and be able to generate income. 



## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User logs in (or signs up) to access menu of various services they can get
* App remembers the user for certain period of time (automatic logout only after certain period of time)
* User creates a task: picks the service they need & give the required information (type of service, pictures, dates, max budget)
* User sees which contractors are available to help them & can choose one
* Once a task is created, user can cancel and edit the task  
* Log of current and past tasks (split bar on top or a chronological list)
* Settings (Accessibility, Payment Info, Notification, General, etc.)


**Optional Nice-to-have Stories**

* Messenger: User can text a contractor.
* Login: verify email or phone number 
* User can see when the contractor was online and whether they saw the message
* Settings: user can press the button to become a contractor
* Settings: referral code is generated (user can copy it or send it directly to someone)
* Settings: user can change password
* User can give a review & rate the contractor


### 2. Screen Archetypes

* [Initial screen]
   * When app is loading, user sees a static image with app logo

* [Login screen]
   * If user does not have an account, press sign up to create one
   * Support 3rd party authentication - etc ‘login with google’
   * Supports “remember me” feature; i.e. if user re-logins after certain period of time, he/she does not need to re-login
   
* [Register screen]
   * Upon Download/Reopening of the application, user is prompted to log in to gain access to their profile information to be properly matched with another     person.
   * User has an option to register with Google, etc.
   
* [Onboarding screen- Optional]
   * First-time user visual tutorial for how the app works
   
* [Task selection screen]
   * User can see a several scrollable icons representing various categories of tasks 
   * Upon selecting one icon, user sees a list of more specific tasks (drop-down) and can choose one. Upon choosing, the user is “moved” to ‘Task Creation Screen’

* [Task creation screen]
   * User mush add task description (text)
   * User must upload relevant pictures (or take)
   * User must specify dates / times when the task can be completed
   * User must specify max budget (optional)
   * User must add location of the task (address)
   * User should estimate time the it will take one to finish the task (including start time if possible)
   * When all the necessary details are inputted, the User is directed to the ‘Choosing Contractor Screen’

* [Choosing Contractor Screen]
   * User is able to select contractor (from a list that can be updated by scrolling and potentially filtered) to complete the task
   * User can commit to using a specific contractor
   * (optional) User is able to chat with the contactor to ask clarifying questions using a button that direct user to “Messaging Screen”
   * (optional) fee is reserved (charged to CC at time of commitment)
   
* [Contractor rating screen - Optional]
   * can be accessed through ‘Current and Previous Tasks Screen’
   * User can leave review and assign rating to any contractor

* [Current and Previous Tasks Screen ]
   * User can see list of tasks in reverse chronological order 
      *(Optional) User can filter tasks by certain features
*  [Task Details Screen]
   * User can review details connected to a chosen task (when, what, who, how)
   * User is able to edit details of any current task (not completed one)
   * User is able to cancel current open task 
   * (Optional) Unless a certain time is crossed - i.e. 2 days prior to the contractor coming
   * User should provide a reason for cancellation (i.e. give a list with options to choose)
* [(Optional) Messaging Screen - Chat for users and contractors to communicate (direct 1-on-1)]
   * Upon creating the task and selecting a contractor, the user can text contractor
* [User Profile and Settings Screen]
   * User can see their name, picture age, payment info. 
   * User can change language (?), payment info, and app notification settings.
   * (Optional) User contact support team.
   * (Optional) User can get their referral code and can send them to their friends through apps installed on their phone


   * User can click on any task; this action takes user to ‘View Task Details’ screen

   
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [Home]
Discover all the tasks and services available on the platform
* [Tasks]
View details of scheduled tasks and past tasks.
* [Taskers]
View past contractors you have worked with. Review which ones are your favorite
* [Profile]
Private information such as credit card, email and passwords can be found here

**Flow Navigation** (Screen to Screen)

* [Set Task Location]
   * Confirm location
   * User is lead to a list of taskers
* [Choose from a list of available contractors]
   * User can scroll up and down and review all contractors.
   * Once user has decided user can take a more detailed view of tasker's profile
* [Tasker profile]
   * Look at the reviews, descriptions, pictures of past work
   * Click on choose this tasker
   
   

## Wireframes
![Image from iOS](https://user-images.githubusercontent.com/61493372/99138178-a7ec0980-25e3-11eb-9991-256ccc0cd370.jpg)


## Schema 
[This section will be completed in Unit 9]
### Models

#### Post Task

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user post (default field) |
   | author        | Pointer to User| Task author |
   | image         | File     | image that user posts of the task |
   | Description   | String   | Description of task |
   | createdAt     | DateTime | date when task is created (default field) |
   | updatedAt     | DateTime | date when task is last updated (default field) |
   
#### User Profile

   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | user          | Pointer to User| Customer profile |
   | image         | File     | image of user |
   | email         | Email | user point of contact |
   | phone number  | Phone number | user phone number |
### Networking
**List of network requests by screen** 
* [Login & Sign-up screen]
  * (Read/GET) Query whether the user exists
* [Task selection screen]
  * (Read/GET) Query the most frequent tasks users choose (can be hardwired)
  * (Create/POST) Create a new task upon upon pressing on a sample task 
* [Task creation screen]
  * (Create/POST) Create a new task object
* [Choosing Contractor Screen]
  * (Read/GET) Query all potential contractors for a given task 
  * (Update/PUT) Update task object to add contractor (after one is chosen)
* [Current and Previous Tasks Screen ]
  * (Read/GET) Query all the tasks associated with user
  * (Update/PUT) Update task description
  * (Delete) Delete an existing task object
* [User Profile and Settings Screen]
  * (Read/GET) Query logged in user object
  * (Delete) Delete an existing user object
  * (Update/PUT) Update user profile image
  * (Update/PUT) Update user object
 
**Basic snippets for each Parse network request** 
* (Update/PUT) Update task object to add contractor
```swift
let task = PFQuery(className:"Tasks")
//TODO: add the way to save chosen contractor
task["contractor"] = // show lead to ID of contractor

}
```
* (Read/GET) Query all the tasks associated with user
 ```swift
let query = PFQuery(className:"User")
query.whereKey("user", equalTo: currentUser)
// sorts the tasks chronologically
query.order(byDescending: "createdAt")
query.findObjectsInBackground { (tasks: [PFObject]?, error: Error?) in
	if let error = error { 
    	print(error.localizedDescription
    }
    else if let tasks = tasks {
      	print("Successfully retrieved \(tasks.count) tasks.")
  	// TODO: Do something with tasks...
   }

}
```
* (Create/POST) Create a new task upon upon pressing on a sample task 
 ```swift
let task = PFQuery(className:"Tasks")
task["caption"] = taskField.text!
task["user"] = PFUser.current()
// TODO: change this one to fit context
task["date"] = dateField.text() as DataTime!
//TODO: add any other properties


// potentially change this
// now just saves any image added
let imageData = imageView.image!.pngData!
// creates url that leads to the saves image => allows to put it into the table on parse (i.e. in post)
let file = PFFileObject(name: "image.png", data: imageData!) 
task["image"] = file 

task.saveInBackground(block: { (block: {(success, error) in 
if success{ 
// TODO: Do something with tasks...
} 
else { 
// TODO: Add customized error message
print("error!")
}

}
```
 
