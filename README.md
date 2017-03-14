# append(attributedString, with: ease)

#### Extension that adds methods for appending text to a NSMutableAttributedString

Supports dynamic fonts, colors, underlines and strike through. You can chain append calls.
Saves lots of time. And space.

Here's an example:

```swift
let textView = UITextView()
let string = NSMutableAttributedString()

// dynamic fonts
string.appendSubheadline("You want weapons?\n")
    .appendBody("We're in a library.\n")
    .appendHeadline("BOOKS!\n")

// color, underline, strike-through
string.append("Books are the best weapon in the world.\n", color: .brown, style: .headline)
    .append("This room's the greatest arsenal we could have!\n", color: .orange, font: UIFont(name: "Georgia", size: 20)!)
    .append("Arm yourself\n\n", color: .gray, style: .headline, underlineStyle: .styleThick)
    .appendHeadline("© The Doctor\n")
    .append("Quote by Russel T Davies", color: .purple, font: UIFont(name: "Georgia", size: 15)!, strikeThroughStyle: .styleSingle)

textView.attributedText = string
```

![result](https://github.com/ysoftware/appendAttributedStringWithEase/blob/master/image.png?raw=true)

#### Installation

Drag and drop into your project and set needed targets.
