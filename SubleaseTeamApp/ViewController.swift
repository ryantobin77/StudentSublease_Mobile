//
//  ViewController.swift
//  Sublease
//
//  Created by mithil on 10/20/21.
//  Copyright © 2021 mithil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    
    @IBOutlet weak var pickerView: UIPickerView!

    
    var pickerData = ["Alaska", "Alabama", "Arkansas", "American Samoa", "Arizona", "California", "Colorado", "Connecticut", "District ", "of Columbia", "Delaware", "Florida", "Georgia", "Guam", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Virgin Islands", "Vermont", "Washington", "Wisconsin", "West Virginia", "Wyoming"]
    var chosenState = ""

    
    let backButton: UIButton = {
        let tempBackButton = UIButton()
        let image1 = UIImageView()
        image1.image = UIImage(named: "back2")
        tempBackButton.translatesAutoresizingMaskIntoConstraints = false
        tempBackButton.setImage(image1.image, for: .normal)
        
        return tempBackButton
    }()
    
    let myTitle: UILabel = {
        let title1 = UILabel()
        title1.text = "Basic Information"
        title1.textColor = UIColor.black
        title1.font = UIFont.boldSystemFont(ofSize: 30)
        title1.translatesAutoresizingMaskIntoConstraints = false
        return title1
    }()
    
    let listingTitle: UILabel = {
        let list = UILabel()
        list.text = "Title:"
        list.textColor = UIColor.black
        list.font = UIFont.boldSystemFont(ofSize: 22)
        list.translatesAutoresizingMaskIntoConstraints = false
        return list
    }()
    
    let listingTitleInput: UITextField = {
        let tempEmailInput = UITextField()
        tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
        //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
        tempEmailInput.textColor = UIColor.gray
        return tempEmailInput
    }()
    
    let street: UILabel = {
        let list = UILabel()
        list.text = "Street:"
        list.textColor = UIColor.black
        list.font = UIFont.boldSystemFont(ofSize: 22)
        list.translatesAutoresizingMaskIntoConstraints = false
        return list
    }()
    
    let streetInput: UITextField = {
        let tempEmailInput = UITextField()
        tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
        //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
        tempEmailInput.textColor = UIColor.gray
        return tempEmailInput
    }()
    
    let city: UILabel = {
        let list = UILabel()
        list.text = "City:"
        list.textColor = UIColor.black
        list.font = UIFont.boldSystemFont(ofSize: 22)
        list.translatesAutoresizingMaskIntoConstraints = false
        return list
    }()
 
    let cityInput: UITextField = {
        let tempEmailInput = UITextField()
        tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
        //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
        tempEmailInput.textColor = UIColor.gray
        return tempEmailInput
    }()
    
    let state: UILabel = {
        let list = UILabel()
        list.text = "State:"
        list.textColor = UIColor.black
        list.font = UIFont.boldSystemFont(ofSize: 22)
        list.translatesAutoresizingMaskIntoConstraints = false
        return list
    }()
    
    
    let zip: UILabel = {
           let list = UILabel()
           list.text = "Zip:"
           list.textColor = UIColor.black
           list.font = UIFont.boldSystemFont(ofSize: 22)
           list.translatesAutoresizingMaskIntoConstraints = false
           return list
       }()
    
       let zipInput: UITextField = {
           let tempEmailInput = UITextField()
           tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
           //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
           tempEmailInput.textColor = UIColor.gray
           return tempEmailInput
       }()
    
    let myButton: UIButton = {
           let theButton = UIButton()
           theButton.setTitle("Continue", for: .normal)
           theButton.backgroundColor = UIColor.darkBlueColor
           theButton.setTitleColor(UIColor.white, for: .normal)
           theButton.layer.cornerRadius = 5
           theButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
           theButton.translatesAutoresizingMaskIntoConstraints = false
           theButton.clipsToBounds = true
           return theButton
       }()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLayoutSubviews() {
        listingTitleInput.underlined(borderColor: UIColor.darkBlueColor)
        streetInput.underlined(borderColor: UIColor.darkBlueColor)
        cityInput.underlined(borderColor: UIColor.darkBlueColor)
        zipInput.underlined(borderColor: UIColor.darkBlueColor)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        self.view.addSubview(backButton)
        backButton.addTarget(self, action: #selector(back(_:)), for: .touchUpInside)
        myButton.addTarget(self, action: #selector(nextPage(_:)), for: .touchUpInside)
        
        self.view.addSubview(myTitle)
        self.view.addSubview(listingTitle)
        self.view.addSubview(listingTitleInput)
        self.view.addSubview(street)
        
        self.view.addSubview(streetInput)
        self.view.addSubview(city)
        
        self.view.addSubview(cityInput)
        self.view.addSubview(state)
        self.view.addSubview(pickerView)
        self.view.addSubview(zip)
        self.view.addSubview(zipInput)
        self.view.addSubview(myButton)
        
        myConstraints()
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return pickerData.count
       }

       // The data to return for the row and component (column) that's being passed in
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return pickerData[row]
       }
       //Called when the user changes the selection...
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           chosenState = pickerData[row]
       }

       func numberOfComponents(in pickerView: UIPickerView) -> Int {

       return 1
       }
    
   
    func loggedIn(){
        
    }
    
    func myConstraints(){
        
        backButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 45).isActive = true
        backButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        backButton.trailingAnchor.constraint(equalTo: self.backButton.leadingAnchor).isActive = true
        backButton.bottomAnchor.constraint(equalTo: self.listingTitle.topAnchor, constant: -40).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 15).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        myTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 45).isActive = true
        myTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myTitle.bottomAnchor.constraint(equalTo: self.listingTitle.topAnchor, constant: -40).isActive = true
        
        listingTitle.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        listingTitle.trailingAnchor.constraint(equalTo: self.listingTitle.trailingAnchor).isActive = true
        listingTitle.bottomAnchor.constraint(equalTo: listingTitleInput.topAnchor, constant: -20).isActive = true
               
        listingTitleInput.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
        listingTitleInput.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50).isActive = true
        listingTitleInput.bottomAnchor.constraint(equalTo: street.topAnchor, constant: -40).isActive = true
        
        
        street.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        street.trailingAnchor.constraint(equalTo: street.trailingAnchor).isActive = true
        street.bottomAnchor.constraint(equalTo: streetInput.topAnchor, constant: -20).isActive = true
               
        streetInput.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
        streetInput.trailingAnchor.constraint(equalTo:self.view.trailingAnchor, constant: -50).isActive = true
        streetInput.bottomAnchor.constraint(equalTo: self.city.topAnchor, constant: -40).isActive = true
        
        city.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        city.trailingAnchor.constraint(equalTo: city.trailingAnchor).isActive = true
        city.bottomAnchor.constraint(equalTo: cityInput.topAnchor, constant: -20).isActive = true
                      
        cityInput.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
        cityInput.trailingAnchor.constraint(equalTo:self.view.trailingAnchor, constant: -50).isActive = true
        cityInput.bottomAnchor.constraint(equalTo: self.state.topAnchor, constant: -40).isActive = true
              
        
        state.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        state.trailingAnchor.constraint(equalTo: state.trailingAnchor).isActive = true
        state.bottomAnchor.constraint(equalTo: pickerView.topAnchor).isActive = true
             
        
        pickerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        pickerView.bottomAnchor.constraint(equalTo: self.zip.topAnchor).isActive = true
        
        zip.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        zip.trailingAnchor.constraint(equalTo: zip.trailingAnchor).isActive = true
        zip.bottomAnchor.constraint(equalTo: zipInput.topAnchor, constant: -20).isActive = true
                      
        zipInput.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50).isActive = true
        zipInput.trailingAnchor.constraint(equalTo:self.view.trailingAnchor, constant: -50).isActive = true
        zipInput.bottomAnchor.constraint(equalTo: self.myButton.topAnchor, constant: -40).isActive = true
               
        //nextButton.centerXAnchor.constraint(equalTo: nextButton.centerXAnchor).isActive = true
        myButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50 ).isActive = true
        myButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50).isActive = true
        
        
        
        
        
    }
    
    @objc func back(_: UIButton){
        dismiss(animated: true, completion: nil)
        
    }
    
    @objc func nextPage(_: UIButton){
        performSegue(withIdentifier: "1st", sender: self)
        
        
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}

