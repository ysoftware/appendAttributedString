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
string.append("Books are the best weapon in the world.\n", withColor: .brown, andStyle: .headline)
    .append("This room's the greatest arsenal we could have!\n", withColor: .orange, andFont: UIFont(name: "Georgia", size: 20)!)
    .append("Arm yourself\n\n", withColor: .gray, style: .headline, andUnderlineStyle: .styleThick)
    .appendHeadline("© The Doctor\n")
    .append("Quote by Russel T Davies", withColor: .purple, font: UIFont(name: "Georgia", size: 15)!, andStrikeThroughStyle: .styleSingle)

textView.attributedText = string
```

![result](https://github.com/ysoftware/appendAttributedStringWithEase/blob/master/image.png?raw=true)

#### Installation

Drag and drop into your project and set needed targets.
