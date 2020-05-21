# UIViewAPI

UIKit related domain extensions that you just have to write from project to project.

# isHidden

Sometimes getting this in a complicated `if`s might be hard. Now you have `isHidden`, `isNotHidden`, `isVisible` and `isNotVisible` to help you say what you want 💬

Old:
```swift
view.isHidden = false
```
or
```swift
if view.isHidden == false {
    // ...
}
```

That's annoying... now you can do what you have always wanted!

```swift
if view.isVisible {
    // ...
}

if view.isNotVisible {
    // ...
}

if view.isNotHidden {
    // ...
}

// with old
if view.isHidden {
    // ...
}

```

And you can also set on those properties to if you want:

```swift
view.isVisible = true

view.isNotVisible = true   

view.isNotHidden = true

// with old
view.isHidden = true

```

That way you can **always** say what you want without inverted logic! 🤓

# That's it

Hope it will help you :)

If you want to find out more about me and some more Swift stuff then I invite you to my site: http://idoit.tech/en/

Cheers! :D

