//
//  insertdata.swift
//  MOvie_Assignment
//
//  Created by Macstudent on 2017-04-07.
//  Copyright © 2017 Macstudent. All rights reserved.
//

import UIKit

class insertdata: UIViewController,UITextFieldDelegate,UIPickerViewDelegate,UIImagePickerControllerDelegate , UINavigationControllerDelegate
{
    var datePickerView :UIDatePicker=UIDatePicker()
    
    var actorPicker : UIPickerView!
    var actressPicker : UIPickerView!
    var categoryPicker : UIPickerView!
    var awardPicker : UIPickerView!
    
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
    
    
    
    @IBOutlet weak var Directory_Name: UILabel!
    @IBOutlet weak var Release_Date: UILabel!
    @IBOutlet weak var Production_Company: UILabel!
    @IBOutlet weak var Duration_label: UILabel!
    @IBOutlet weak var Award_label: UILabel!
    
    @IBOutlet weak var Poster_Image: UILabel!
    @IBOutlet weak var Movie_Category: UILabel!
    @IBOutlet weak var Actress_Name: UILabel!
    @IBOutlet weak var actor_name_label: UILabel!
    @IBOutlet weak var Movie_Id: UILabel!
    @IBOutlet weak var Movie_Name: UILabel!
    
    var actorNameArr = [String]()
    var actressNameArr = [String]()
    var categoryArr = [String]()
    var awardArr = [String]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDatePicker()
        setPickerView()
       
        
        actorNameArr = ["Salman Khan","shahrukh khan","Siddharth Malhotra"]
        
        actressNameArr = ["Alia Bhatt","Amrita Rav","Dipika Paadukon"]
        
        categoryArr = ["Comedy","Romance","Drama"]
        
        awardArr = ["International","Filmfare Awards","oscar awards","gujju Film Awards"]
        
        
    }
    

    
    
    func pickUpDate(textField : UITextField)
    {
        // DatePicker
        self.datePickerView = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePickerView.backgroundColor = UIColor.white
        self.datePickerView.datePickerMode = UIDatePickerMode.dateAndTime
        
        release_date.inputView = self.datePickerView
        datePickerView.addTarget(self, action: #selector(datePickerValueChanged), for: UIControlEvents.valueChanged)
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        //toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneButton))
        toolBar.setItems([btnDone], animated: false)
        toolBar.isUserInteractionEnabled = true
       release_date.inputAccessoryView = toolBar
    }
    
    func setDatePicker()
    {
        self.datePickerView = UIDatePicker()
        self.datePickerView.backgroundColor = UIColor.white
        self.datePickerView.datePickerMode = UIDatePickerMode.dateAndTime
        
        release_date.inputView = self.datePickerView
        datePickerView.addTarget(self, action: #selector(datePickerValueChanged), for: UIControlEvents.valueChanged)
        
//       release_date.inputAccessoryView = btnSubmitClicked()
//       actress_name.inputAccessoryView = btnSubmitClicked()
//        actor_name.inputAccessoryView = btnSubmitClicked()
//        movie_category.inputAccessoryView = btnSubmitClicked()
//        award.inputAccessoryView = btnSubmitClicked()
    }
    
    
    func datePickerValueChanged(sender:UIDatePicker)
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        release_date.text = dateFormatter.string(from: sender.date)
    }
    
    func setPickerView() {
        actorPicker = UIPickerView()
        actressPicker = UIPickerView()
        categoryPicker = UIPickerView()
        //awardPicker = UIPickerView()
        
        actorPicker.delegate = self
        actressPicker.delegate = self
        categoryPicker.delegate = self
        //awardPicker.delegate = self
        
//        actorPicker.dataSource = self
//        actressPicker.dataSource = self
//        categoryPicker.dataSource = self
//        awardPicker.dataSource = self
        
       actor_name.inputView = actorPicker
        actress_name.inputView = actressPicker
        movie_category.inputView = categoryPicker
        //award.inputView = awardPicker
    }

    
    
    func doneButton(sender:UIButton)
    {
        release_date.resignFirstResponder()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        self.pickUpDate(textField: release_date)
    }




@IBOutlet weak var btnSubmit: UIButton!



override func viewWillAppear(_ animated: Bool)
{
    self.navigationController!.setNavigationBarHidden(true, animated: true);
}

@IBAction func btnSubmitClicked()
{
    MySingleton.sharedInstant.addNewMovie(newMovie: Movie(Movie_Id:movie_id.text! , Movie_Name:movie_name.text!,
            Release_Date:release_date.text!,
            Actor_Name:actor_name.text!,
            Actress_Name:actress_name.text!,
            Movie_Category:movie_category.text!,
            Director_Name:director_name.text!,
            Postor_Image:postor_image.text!,
            Prodcution_Company:prodcution_company.text!,
            Duration:duration.text!,
            Award:award.text!
        )
    )
    
    let myVC = storyboard?.instantiateViewController(withIdentifier: "updatedata") as! updatedata

    navigationController?.pushViewController(myVC, animated: true)
}
}

