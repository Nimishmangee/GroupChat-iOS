# GroupChat-iOS

## Description

Group Chat is an internet based group messaging app somewhat similar to Telegram. 

Firebase Firestore will be used as backend service for authentication and storing and retrieving messages


## This App will:

* Integrate third party libraries using Cocoapods and Swift Package Manager.
* Store data in the cloud using Firebase Firestore.
* Query and sort the Firebase database.
* Use Firebase for user authentication, registration and login.
* Work with UITableViews and how to set their data sources and delegates.
* How to create direct Segues for navigation.


# Constants
```
struct K {
    static let appName="⚡️GroupChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let userCollectionName="users"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
        static let nameField = "name";
    }
}

```
## To install 

Using terminal cd to project directory, use command pod install, then launch file with .xcworkspace and it'll be all set
