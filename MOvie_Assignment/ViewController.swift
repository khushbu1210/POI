//
//  ViewController.swift
//  MOvie_Assignment
//
//  Created by Macstudent on 2017-04-07.
//  Copyright © 2017 Macstudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    
    @IBOutlet weak var btninsert: UIButton!
    @IBOutlet weak var btnupdate: UIButton!
    @IBOutlet weak var btndelete: UIButton!
    
    
    
    override func viewWillAppear(_ animated: Bool)
    {
        self.navigationController!.setNavigationBarHidden(true, animated: true);
    }
    
    @IBAction func btninsertClicked(_ sender: UIButton)
    {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "insertdata") as! insertdata
        navigationController?.pushViewController(myVC, animated: true)
    }
    
    @IBAction func btnupdateClicked(_ sender: UIButton)
    {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "updatedata") as! updatedata
        navigationController?.pushViewController(myVC, animated: true)
    }
    
    @IBAction func btndeleteClicked(_ sender: UIButton)
    {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "deletedata") as! deletedata
        navigationController?.pushViewController(myVC, animated: true)
    }
}
