# SwiftFu

*Swift Function Upgrades*

## Example
```swift
SomeClass()
    .modify { (object) in
        object.value = "Hello, World!"
    }
    .configure { (object) in
        object.value += "++"
    }
    .func { _ in
        SomeStruct(value: "New Value!")
    }
    .assert { (object) in
        object.value == "New Value!"
    }
    .sout()
```
