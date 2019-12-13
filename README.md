# append(attributedString, with: ease)
Swift 5

#### An extension that adds a way for easier work with NSMutableAttributedString.

Supports dynamic fonts, colors, underlines, strike through, images and you can chain append calls.
And with the AttributesBuilder class it's easy to create attribute sets for Attributed String.

Install with Cocoapods:
```
pod 'appendAttributedString'
```

Here's an example:

```swift
let label = UILabel()
label.numberOfLines = 0
view.backgroundColor = .darkGray

let string = NSMutableAttributedString()

.appendHeadline("Life can rise,\n")

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
        underlineStyle: .double)
.append("Like a child's ", color: .white)

// even images
.append(image: UIImage(named: "balloon")!,
        // (the image will not auto-adjust its height)
        height: UIFontMetrics.default.scaledValue(for: 20))

.append("\n\n")

// In specal cases use AttributesBuilder class for easier attributes set up
.append("when it's lost,\nit's a tragic affair\n",
        with: AttributesBuilder()
            .color(.white)
            .shadow(offset: CGSize(width: -7, height: 3),
                    blurRadius: 5, color: .yellow)
            .outline(width: -2, color: .red)
            .lineSpacing(30)
            .align(.center))

.append("- but it is quickly forgotten.", with:
    AttributesBuilder()
        .strikeThrough(.double, color: .white)
        .align(.right))

textView.attributedText = string
```

![result](https://github.com/ysoftware/appendAttributedStringWithEase/blob/master/image2.png?raw=true)



**Breaking changes in 1.2:**

*Removed:*
```swift
AttributesBuilder().paragraph(style: _)
```

*Added:*
```swift
AttributesBuilder().paragraphStyle(_)
```

To ensure paragraph style to always be a mutable instance, the old method accepting a non-mutating instance was removed.

The new method also reads better.

