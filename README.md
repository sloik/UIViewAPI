![Main](https://github.com/sloik/SweetBool/actions/workflows/swift.yml/badge.svg?branch=main)
![Nightly](https://github.com/sloik/SweetBool/actions/workflows/nightly.yml/badge.svg)

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

# intrinsicWidth

If you need to get intrinsic width of UILabel (width of a label based on its content - font and text) 

```swift
yourLabel.intrinsicWidth
```

# width

If you need to get width of UILabel 

```swift
yourLabel.width
```

# linesCount

If you need to get number of lines in UILabel. If your view uses Auto Layout call self.layoutIfNeeded() to receive proper number of lines.

```swift
yourLabel.linesCount
```

# That's it

Hope it will help you :)

Cheers! :D

