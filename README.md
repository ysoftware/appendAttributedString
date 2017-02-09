# appendAttributedStringWithEase 

#### Extension that adds methods for appending text to a NSMutableAttributedString

Supports dynamic fonts, colors, underlines and strike through. You can chain append calls.
Saves lots of time. And space.

Here's an example:

```swift
var string = NSMutableAttributedString()

// dynamic fonts
string.appendSubheadline("You want weapons?\n")
    .appendBody("We're in a library.\n")
    .appendHeadline("BOOKS!\n")

// color, underline, strike-through
string.append("Books are the best weapon in the world.\n", withColor: .brownColor(), andStyle: UIFontTextStyleHeadline)
    .append("This room's the greatest arsenal we could have!\n", withColor: .orangeColor(), andFont: UIFont(name: "Georgia", size: 20)!)
    .append("Arm yourself\n\n", withColor: .grayColor(), style: UIFontTextStyleHeadline, andUnderlineStyle: .StyleThick)
    .appendHeadline("© The Doctor\n")
    .append("Quote by Russel T Davies", withColor: .purpleColor(), font: UIFont(name: "Georgia", size: 15)!, andStrikeThroughStyle: .StyleSingle)

textView.attributedText = string
```

![result](https://github.com/ysoftware/appendAttributedStringWithEase/blob/master/image.png?raw=true)

#### Installation

Drag and drop into your project and set needed targets.
