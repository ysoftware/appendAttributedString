# appendAttributedStringWithEase.swift

Simple extension that adds methods to append attributed strings.

All documented, saves lots of time. And space.

Here are some examples.

```swift
var string = NSMutableAttributedString()

string.appendSubheadline("You want weapons?\n")
string.appendBody("We're in a library.\n")
string.appendHeadline("BOOKS!\n")

string.append("Books are the best weapon in the world.\n", withColor: .brownColor(), andStyle: UIFontTextStyleHeadline)
string.append("This room's the greatest arsenal we could have!\n", withColor: .orangeColor(), andFont: UIFont(name: "Georgia", size: 20)!)
string.append("Arm yourself\n\n", withColor: UIColor.grayColor(), style: UIFontTextStyleHeadline, andUnderlineStyle: NSUnderlineStyle.StyleThick)
string.appendHeadline("© The Doctor\n")
string.append("Quote by Russel T Davies", withColor: .purpleColor(), font: UIFont(name: "Georgia", size: 15)!, andStrikeThroughStyle: NSUnderlineStyle.StyleSingle)

textView.attributedText = string
```

Download the playground demo and well... play with it.
