# HandyFriends

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
[Description of your app]

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:**
- **Mobile:**
- **Story:**
- **Market:**
- **Habit:**
- **Scope:**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [fill in your required user stories here]
* User logs in (or signs up) to access menu of various services they can get
* App remembers the user for certain period of time (automatic logout only after certain period of time)
* User creates a task: picks the service they need & give the required information (type of service, pictures, dates, max budget)
* User sees which contractors are available to help them & can choose one
* Once a task is created, user can cancel and edit the task  
* Log of current and past tasks (split bar on top or a chronological list)
* Settings (Accessibility, Payment Info, Notification, General, etc.)


**Optional Nice-to-have Stories**

* [fill in your required user stories here]
* Messenger: User can text a contractor.
* Login: verify email or phone number 
* User can see when the contractor was online and whether they saw the message
* Settings: user can press the button to become a contractor
* Settings: referral code is generated (user can copy it or send it directly to someone)
* Settings: user can change password
*User can give a review & rate the contractor


### 2. Screen Archetypes

* [Initial screen]
   * [When app is loading, user sees a static image with app logo
]
   * ...
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

   * User can click on any task; this action takes user to ‘View Task Details’ screen

   
### 3. Navigation

**Tab Navigation** (Tab to Screen)

* [fill out your first tab]
* [fill out your second tab]
* [fill out your third tab]

**Flow Navigation** (Screen to Screen)

* [list first screen here]
   * [list screen navigation here]
   * ...
* [list second screen here]
   * [list screen navigation here]
   * ...

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
