# append(attributedString, with: ease)
Swift 4.2

#### An extension that adds a way for easier work with NSMutableAttributedString.

Supports dynamic fonts, colors, underlines, strike through, images and you can chain append calls.
And with the AttributesBuilder class it's easy to create attribute sets for Attributed String.

Install with Cocoapods:
```
pod 'appendAttributedString'
```

Here's an example:

```swift
let textView = UITextView()
let string = NSMutableAttributedString()

// dynamic fonts
string.appendHeadline("Life can rise,\n")

    // call chaining
    .appendFootnote("it can fall.\n\n")

    // color, underline, strike through, superscript and others
    .append("But in the end\nit's just carried ", color: .white)
    .append("with the wind\n", 
        color: .yellow,
        font: .dynamic(.systemFont(ofSize: 10)),
        baselineOffset: 5)
    .append("and one day everything you do will simply cease to be…\n\n",
        color: .green, 
        underlineStyle: .styleDouble)
    .append("Like a child's ", color: .white)

    // and even images
    .append(image: UIImage(named: "balloon")!,
        height: UIFontMetrics.default.scaledValue(for: 20)) // (the image will not auto-adjust its height)

    // In specal cases use AttributesBuilder class for easier attributes set up
    .append("\n\nwhen it's lost, it's a tragic affair\n",
        withAttributes: AttributesBuilder()
                        .color(.white)
                        .shadow(offset: CGSize(width: 7, height: -5),
                                               blurRadius: 5, color: .yellow)
                        .outline(width: -2, color: .red)
                        .build())

    .append("- but it is quickly forgotten.", withAttributes:
        AttributesBuilder().strikeThrough(.styleSingle, color: .white).build())

textView.attributedText = string
```

![result](https://github.com/ysoftware/appendAttributedStringWithEase/blob/master/image2.png?raw=true)
