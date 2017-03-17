//
//  ViewController.swift
//  aasweDev
//
//  Created by Ярослав Ерохин on 14.03.17.
//  Copyright © 2017 Yaroslav Erohin. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet weak var textView: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let string = NSMutableAttributedString()

        // dynamic fonts
        string.appendHeadline("Life can rise,\n")

            // call chaining
            .appendFootnote("it can fall.\n\n")

            // color, underline, strike through, superscript and others
            .append("But in the end\nit's just carried ", color: .white, underlineStyle: NSUnderlineStyle.byWord)
            .append("with the wind\n", color: .yellow, font:UIFont.systemFont(ofSize: 10), baselineOffset: 5)
            .append("and one day everything you do will simply cease to be…\n\n", color: .green, underlineStyle: NSUnderlineStyle.styleDouble)
            .append("Like a child's ", color: .white)

            // and even images
            .append(image: UIImage(named: "balloon")!, height: 20)

            // In specal cases use AttributesBuilder class for easier attributes set up
            .append("\n\nwhen it's lost, it's a tragic affair\n", withAttributes:
                AttributesBuilder()
                    .color(.white)
                    .shadow(offset: CGSize(width: 7, height: -5), blurRadius: 5, color: .yellow)
                    .outline(width: -2, color: .red).value)

            .append("- but it is quickly forgotten.", withAttributes:
                AttributesBuilder().strikeThrough(.styleSingle, color: .white).value)
        
        textView.attributedText = string
    }
}
