//
//  insert.swift
//  MOvie_Assignment
//
//  Created by Macstudent on 2017-04-07.
//  Copyright © 2017 Macstudent. All rights reserved.
//

import UIKit

class insert: UIViewController
{
    
    @IBOutlet weak var movie_id: UITextField!
    @IBOutlet weak var movie_name: UITextField!
    @IBOutlet weak var release_date: UITextField!
    @IBOutlet weak var actor_name: UITextField!
    @IBOutlet weak var actress_name: UITextField!
    @IBOutlet weak var movie_category: UITextField!
    @IBOutlet weak var director_name: UITextField!
    @IBOutlet weak var postor_image: UITextField!
    @IBOutlet weak var prodcution_company: UITextField!
    @IBOutlet weak var duration: UITextField!
    @IBOutlet weak var award: UITextField!
    
    
    @IBOutlet weak var btnSubmit: UIButton!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.setNavigationBarHidden(true, animated: true);
    }
    
    @IBAction func btnSubmitClicked(_ sender: UIButton)
    {
        MySingleton.sharedInstant.addNewMovie
        (
            newMovie: Movie
            (
                Movie_Id:movie_id.text ,
                Movie_Name:movie_name.text,
                Release_Date:release_date.text,
                Actor_Name:actor_name.text,
                Actress_name:actress_name.text,
                Movie_Category:movie_category.text,
                Director_Name:director_name.text,
                Postor_Image:postor_image.text,
                Prodcution_Company:prodcution_company.text,
                Duration:duration.text,
                Award:award.text
            )
        )
        
        let myVC = storyboard?.instantiateViewController(withIdentifier: "viewcantroller") as! viewcantroller
        navigationController?.pushViewController(myVC, animated: true)
    }
}
}
}
