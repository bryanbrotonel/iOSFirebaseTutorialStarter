# iOS Firebsase Tutorial Starter

An iOS tutorial to connect this app to the Firebase Database

1. Pod install

```
#Podfile

pod 'Firebase'
pod 'Firebase/Database'
```

2. Include GoogleService-Info.plist into your project

![alt text](https://image.ibb.co/bsKuJS/Screen_Shot_2018_03_02_at_3_27_13_PM.png "GoogleService-Info.plist")


3. Import Firebase into App Delegate
```swift
#AppDelegate.swift

import Firebase
```


4. Override app initializaiton to include Firebase configurations
```swift
#AppDelegate.swift

override init() {
	FirebaseApp.configure()
}
```

5. Add Label to `Main.Storyboard` and connect it to `ViewController.swift`

```swift
#ViewController.swift

@IBOutlet weak var ConditionLabel: UILabel!
```

6. Import Firebase into View Controller
```swift
#ViewController.swift

import Firebase
```

7. Create a reference to the root of the database

```swift
#ViewController.swift

let rootRef = Database.database().reference();
```

8. Override `viewDidAppear()` function to read database data events

```swift
#ViewController.swift

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        rootRef.observe(DataEventType.value, with: { (snapshot) in
            let value = snapshot.value as? NSDictionary
            self.ConditionLabel.text = value?["parent"] as? String ?? ""
        }) { (error) in
            print(error.localizedDescription)
        }
    }
```


Congratulations, you've connected your app to Firebase :tada:
