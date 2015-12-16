# appendAttributedStringWithEase 

#### Simple extension that adds methods to add text to a NSMutableAttributedString

Supports dynamic fonts, colors, underlines and strike through.

Saves lots of time. And space.

Here's an example:

```swift
var string = NSMutableAttributedString()

//dynamic fonts (iOS 7+)
string.appendSubheadline("You want weapons?\n")
string.appendBody("We're in a library.\n")
string.appendHeadline("BOOKS!\n")

//color, underline, strike-through
string.append("Books are the best weapon in the world.\n", withColor: .brownColor(), andStyle: UIFontTextStyleHeadline)
string.append("This room's the greatest arsenal we could have!\n", withColor: .orangeColor(), andFont: UIFont(name: "Georgia", size: 20)!)
string.append("Arm yourself\n\n", withColor: .grayColor(), style: UIFontTextStyleHeadline, andUnderlineStyle: .StyleThick)
string.appendHeadline("© The Doctor\n")
string.append("Quote by Russel T Davies", withColor: .purpleColor(), font: UIFont(name: "Georgia", size: 15)!, andStrikeThroughStyle: .StyleSingle)

textView.attributedText = string
```

![result](https://github.com/ysoftware/appendAttributedStringWithEase/blob/master/image.png?raw=true)

#### Installation

Just drag it into your project and don't forget the targets.
