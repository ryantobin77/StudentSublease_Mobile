//
//  SetUp2ViewController.swift
//  Sublease
//
//  Created by mithil on 10/20/21.
//  Copyright © 2021 mithil. All rights reserved.
//

import UIKit

class SetUp2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
   
    

    
       var pickerData = ["No Preference", "Male Only", "Female Only"]
       var chosenState = ""
       
       let amenities:[[String]] = [
           ["   A/C & Heating"],
           ["   TV"],
           ["   Parking Available"],
           ["   Pet Friendly"],
           ["   Washer & Dryer"],
           ["   Dishwasher"],
           ["   Gym"],
           ["   Kitchen"],
           ["   Furnished"],
           ["   Pool"],
         
       ]

    var scroll: UIScrollView = {
           let scrollv = UIScrollView()
           scrollv.translatesAutoresizingMaskIntoConstraints = false
           //scrollv.alwaysBounceVertical = true
           //scrollv.alwaysBounceHorizontal = false
           scrollv.isDirectionalLockEnabled = false
        scrollv.backgroundColor = UIColor.cyan
           
           return scrollv
       }()
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
           title1.text = "Property Information"
           title1.textColor = UIColor.black
           title1.font = UIFont.boldSystemFont(ofSize: 30)
           title1.translatesAutoresizingMaskIntoConstraints = false
           return title1
       }()
       
       let desc: UILabel = {
           let tempEmailInput = UILabel()
           tempEmailInput.text = "Description:"
           tempEmailInput.textColor = UIColor.black
           tempEmailInput.font = UIFont.boldSystemFont(ofSize: 22)
           tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
           return tempEmailInput
       }()
       
       let descInput: UITextView = {
           let tempEmailInput = UITextView()
        tempEmailInput.isEditable = true
        tempEmailInput.isScrollEnabled = true
           tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
        tempEmailInput.layer.borderColor = UIColor.gray.cgColor
        tempEmailInput.layer.borderWidth = 1.0
        
        tempEmailInput.backgroundColor = UIColor.white
           //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
           tempEmailInput.textColor = UIColor.gray
        
           return tempEmailInput
       }()
    
    var tableview: UITableView = {
        let tempEmailInput = UITableView()
        tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
        tempEmailInput.isScrollEnabled = true
        return tempEmailInput
    }()
       
    let bed: UILabel = {
           let tempEmailInput = UILabel()
           tempEmailInput.text = "Beds in Unit:"
           tempEmailInput.textColor = UIColor.black
           tempEmailInput.font = UIFont.boldSystemFont(ofSize: 22)
           tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
           return tempEmailInput
       }()
    
    
       let bedsInput: UITextField = {
           let tempEmailInput = UITextField()
        tempEmailInput.placeholder = " Beds In Unit "
           tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
           //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
           tempEmailInput.textColor = UIColor.gray
        tempEmailInput.setRightPaddingPoints(10)
        tempEmailInput.setLeftPaddingPoints(10)
        tempEmailInput.layer.borderColor = UIColor.black.cgColor
        tempEmailInput.layer.borderWidth = 1.0
        tempEmailInput.layer.cornerRadius = 15.0
        tempEmailInput.textAlignment = .center
        tempEmailInput.keyboardType = UIKeyboardType.decimalPad

           return tempEmailInput
       }()
    
   let baths: UILabel = {
       let tempEmailInput = UILabel()
       tempEmailInput.text = "Baths in Unit:"
       tempEmailInput.textColor = UIColor.black
       tempEmailInput.font = UIFont.boldSystemFont(ofSize: 22)
       tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
       return tempEmailInput
   }()
        
        let bathsInput: UITextField = {
            let tempEmailInput = UITextField()
            tempEmailInput.placeholder = " Baths In Unit "
            tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
            //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
            tempEmailInput.textColor = UIColor.gray
            tempEmailInput.layer.borderColor = UIColor.black.cgColor
            tempEmailInput.layer.borderWidth = 1.0
            tempEmailInput.layer.cornerRadius = 15.0
            tempEmailInput.setRightPaddingPoints(10)
            tempEmailInput.setLeftPaddingPoints(10)
            tempEmailInput.textAlignment = .center
            tempEmailInput.keyboardType = UIKeyboardType.decimalPad
            
            return tempEmailInput
        }()
    
    let bedSub: UILabel = {
        let tempEmailInput = UILabel()
        tempEmailInput.text = "Beds For Sublease:"
        tempEmailInput.textColor = UIColor.black
        tempEmailInput.font = UIFont.boldSystemFont(ofSize: 22)
        tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
        return tempEmailInput
    }()
    
    
    let bedSubInput: UITextField = {
        let tempEmailInput = UITextField()
        tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
        tempEmailInput.placeholder = " Beds for Sublease "
        tempEmailInput.layer.cornerRadius = 15.0
        tempEmailInput.setRightPaddingPoints(10)
        tempEmailInput.setLeftPaddingPoints(10)
        //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
        tempEmailInput.textColor = UIColor.gray
     tempEmailInput.layer.borderColor = UIColor.black.cgColor
        
     tempEmailInput.layer.borderWidth = 1.0
        tempEmailInput.keyboardType = UIKeyboardType.decimalPad
     tempEmailInput.textAlignment = .center

        return tempEmailInput
    }()
    
        let selectAmenities: UILabel = {
            let tempEmailInput = UILabel()
            tempEmailInput.text = "Select Amenities:"
            tempEmailInput.textColor = UIColor.black
            tempEmailInput.font = UIFont.boldSystemFont(ofSize: 22)
            tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
            return tempEmailInput
        }()
        
        let gender: UILabel = {
            let tempEmailInput = UILabel()
            tempEmailInput.text = "Gender Preference"
            tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
            //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
            tempEmailInput.textColor = UIColor.black
            tempEmailInput.font = UIFont.boldSystemFont(ofSize: 22)
            return tempEmailInput
        }()
    let picker: UIPickerView = {
               let tempEmailInput = UIPickerView()
               tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
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
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       override func viewWillLayoutSubviews() {
             super.viewWillLayoutSubviews()
            DispatchQueue.main.async {
                self.tableview.heightAnchor.constraint(equalToConstant: 200).isActive = true
                      self.view.layoutIfNeeded()
                 }
             let myComponents = view.frame.size.height //+ back.frame.size.height
             
             let myComp = myTitle.frame.size.height + desc.frame.size.height + descInput.frame.size.height + selectAmenities.frame.size.height + bedsInput.frame.size.height + bathsInput.frame.size.height
             
             let myComponents2 = gender.frame.size.height + tableview.frame.size.height + myButton.frame.size.height
             scroll.contentSize = CGSize(width: 0, height: myComponents + myComp) //+ myComp )//+ myComponents2)
         }

       
       
       override func viewDidLayoutSubviews() {
        tableview.heightAnchor.constraint(equalToConstant: tableview.contentSize.height).isActive = true

            //descInput.underlined(borderColor: UIColor.darkBlueColor)
           //streetInput.underlined(borderColor: UIColor.darkBlueColor)
           //cityInput.underlined(borderColor: UIColor.darkBlueColor)
           //zipInput.underlined(borderColor: UIColor.darkBlueColor)
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
       
        
       
        
           picker.delegate = self
           picker.dataSource = self
           //descInput.textContainer.maximumNumberOfLines = 10
           scroll = UIScrollView(frame: view.bounds)
           self.view.addSubview(scroll)
            

            // constrain the scroll view to 8-pts on each side
            //scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8.0).isActive = true
           // scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8.0).isActive = true
           // scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8.0).isActive = true
           // scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0).isActive = true

           self.tableview.delegate = self

           self.tableview.dataSource = self
           self.tableview.allowsMultipleSelection = true
           self.tableview.allowsMultipleSelectionDuringEditing = true
        tableview.tableFooterView = UIView(frame: CGRect.zero)
        tableview.layer.borderColor = UIColor.gray.cgColor
        tableview.layer.borderWidth = 1.0
        scroll.backgroundColor = UIColor.white
        let nib = UINib.init(nibName: "CheckableTableTableViewCell", bundle: nil)
        self.tableview.register(nib, forCellReuseIdentifier: "reuse")
           
           self.scroll.addSubview(backButton)
           backButton.addTarget(self, action: #selector(back(_:)), for: .touchUpInside)
           myButton.addTarget(self, action: #selector(nextPage(_:)), for: .touchUpInside)
           self.scroll.addSubview(myTitle)
           self.scroll.addSubview(desc)
           self.scroll.addSubview(descInput)
           self.scroll.addSubview(selectAmenities)

           self.scroll.addSubview(bedSubInput)
           self.scroll.addSubview(bedsInput)
        
           self.scroll.addSubview(picker)
        self.scroll.addSubview(tableview)

           self.scroll.addSubview(bathsInput)
           self.scroll.addSubview(gender)
           self.scroll.addSubview(myButton)
        
           
           myConstraints()
           
           
       }
    func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amenities.count // your number of cells here
          }

    func tableView(_ tableview: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableview.dequeueReusableCell(withIdentifier: "reuse", for: indexPath) as? CheckableTableTableViewCell{
            cell.label2.text = amenities[indexPath.row][0]
            print("amentiies: " ,amenities[indexPath.row][0])
            cell.label2.textColor = UIColor.black
            cell.label2.textAlignment = .center
            cell.label2.font = UIFont.boldSystemFont(ofSize: 14)
            cell.label2.centerYAnchor.constraint(equalTo: cell.centerYAnchor, constant: 0).isActive = true
            
        return cell
        }
        
        return UITableViewCell()
          }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
              // cell selected code here
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
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
               self.viewWillLayoutSubviews()
          }
       
       func loggedIn(){
           
       }
    
       func myConstraints(){
           
            scroll.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        //scroll.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
           backButton.topAnchor.constraint(equalTo: self.scroll.topAnchor, constant: 45).isActive = true
           backButton.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
           backButton.trailingAnchor.constraint(equalTo: self.backButton.leadingAnchor).isActive = true
           backButton.bottomAnchor.constraint(equalTo: self.desc.topAnchor, constant: -45).isActive = true
           backButton.widthAnchor.constraint(equalToConstant: 15).isActive = true
           backButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
           
           myTitle.topAnchor.constraint(equalTo: self.scroll.topAnchor, constant: 45).isActive = true
           myTitle.centerXAnchor.constraint(equalTo: self.scroll.centerXAnchor).isActive = true
           myTitle.bottomAnchor.constraint(equalTo: self.desc.topAnchor, constant: -45).isActive = true
        
           desc.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
           desc.trailingAnchor.constraint(equalTo: self.desc.trailingAnchor).isActive = true
           desc.bottomAnchor.constraint(equalTo: descInput.topAnchor, constant: -20).isActive = true
           
        descInput.heightAnchor.constraint(equalToConstant: 100).isActive = true
        descInput.widthAnchor.constraint(equalToConstant: scroll.bounds.width - 20).isActive = true
        descInput.centerXAnchor.constraint(equalTo: self.scroll.centerXAnchor).isActive = true

        descInput.bottomAnchor.constraint(equalTo: self.bedsInput.topAnchor, constant: -10).isActive = true
        descInput.bottomAnchor.constraint(equalTo: self.bathsInput.topAnchor, constant: -10).isActive = true

        //descInput.heightAnchor.constraint(equalToConstant: 100).isActive = true

           bedsInput.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
        //bedsInput.trailingAnchor.constraint(equalTo:self.bathsInput.leadingAnchor).isActive = true
           bedsInput.bottomAnchor.constraint(equalTo: self.bedSubInput.topAnchor, constant: -10).isActive = true
           
               
        //bathsInput.leadingAnchor.constraint(equalTo: self.bedsInput.trailingAnchor,constant: 30).isActive = true
        bathsInput.trailingAnchor.constraint(equalTo:self.scroll.trailingAnchor,constant: -20).isActive = true
        bathsInput.bottomAnchor.constraint(equalTo: self.bedSubInput.topAnchor, constant: -10).isActive = true
        
        bedSubInput.centerXAnchor.constraint(equalTo: self.scroll.centerXAnchor).isActive = true
        bedSubInput.bottomAnchor.constraint(equalTo: self.selectAmenities.topAnchor, constant: -10).isActive = true

        
        selectAmenities.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
        selectAmenities.trailingAnchor.constraint(equalTo: selectAmenities.trailingAnchor, constant: -20).isActive = true
        selectAmenities.bottomAnchor.constraint(equalTo: tableview.topAnchor, constant: -20).isActive = true
        
        //tableview.heightAnchor.constraint(equalToConstant: 200).isActive = true
        tableview.widthAnchor.constraint(equalToConstant: scroll.bounds.width - 20).isActive = true
        tableview.topAnchor.constraint(equalTo: selectAmenities.bottomAnchor, constant: 10).isActive = true
        tableview.bottomAnchor.constraint(equalTo: self.gender.topAnchor, constant: -15).isActive = true
        tableview.centerXAnchor.constraint(equalTo: self.scroll.centerXAnchor).isActive = true
                
           

            gender.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
           gender.trailingAnchor.constraint(equalTo: gender.trailingAnchor).isActive = true
            gender.bottomAnchor.constraint(equalTo: picker.topAnchor).isActive = true

        picker.centerXAnchor.constraint(equalTo: scroll.centerXAnchor).isActive = true
          picker.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor).isActive = true
          picker.trailingAnchor.constraint(equalTo: self.scroll.trailingAnchor).isActive = true
            picker.bottomAnchor.constraint(equalTo: self.myButton.topAnchor, constant: -10).isActive = true


        
           myButton.centerXAnchor.constraint(equalTo: self.scroll.centerXAnchor, constant: 10).isActive = true
          myButton.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 10).isActive = true
          myButton.trailingAnchor.constraint(equalTo: self.scroll.trailingAnchor, constant: -10).isActive = true
            //myButton.bottomAnchor.constraint(equalTo: self.scroll.bottomAnchor).isActive = true
           
           
           
           
           
       }
       
       @objc func back(_: UIButton){
           dismiss(animated: true, completion: nil)
           
       }
       
       @objc func nextPage(_: UIButton){
        performSegue(withIdentifier: "2nd", sender: self)
           
           
           
       }
       
       /*
        // MARK: - Navigation
        
        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        }
        */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

