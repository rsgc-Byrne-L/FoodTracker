//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Liam Byrne on 2016-11-02.
//  Copyright © 2016 Liam Byrne. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5
    
    // MARK: Initialization
    override func layoutSubviews() {
        // Set the button's width and height to a square the size of the frame's height.
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        // Offset each button's origin by the length of the button plus some spacing.
        for (index, button) in ratingButtons.enumerated() {
            buttonFrame.origin.x = CGFloat(index * (buttonSize + 5))
            button.frame = buttonFrame
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<starCount {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.backgroundColor = UIColor.red
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
            ratingButtons += [button]
            addSubview(button)
            func intrinsicContentSize() -> CGSize {
                return CGSize(width: 240, height: 44)
            }
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        get {
            
            return CGSize(width: 240, height: 44)
        }
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
}
