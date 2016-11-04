//
//  Meal.swift
//  FoodTracker
//
//  Created by Liam Byrne on 2016-11-04.
//  Copyright © 2016 Liam Byrne. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Properties
    
    var name: String = ""
    var photo: UIImage?
    var rating: Int = 0
    
    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
