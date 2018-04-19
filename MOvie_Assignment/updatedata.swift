//
//  updatedata.swift
//  MOvie_Assignment
//
//  Created by Macstudent on 2017-04-07.
//  Copyright © 2017 Macstudent. All rights reserved.
//

import UIKit

class updatedata:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

let Movie_Id = MySingleton.sharedInstant
    
    Movie_Id.getMovie_Id(Movie_Id:"")
    print(Movie_Id.getMovie_Id(Movie_Id:""))
        
        
    
}
    
    
}
