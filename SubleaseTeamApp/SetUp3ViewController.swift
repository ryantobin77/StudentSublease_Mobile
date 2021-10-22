//
//  SetUp3ViewController.swift
//  Sublease
//
//  Created by mithil on 10/21/21.
//  Copyright © 2021 mithil. All rights reserved.
//

import UIKit

class SetUp3ViewController: UIViewController {

    
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
        title1.text = "Final Details"
        title1.textColor = UIColor.black
        title1.font = UIFont.boldSystemFont(ofSize: 30)
        title1.translatesAutoresizingMaskIntoConstraints = false
        return title1
    }()
    
    let start: UILabel = {
        let list = UILabel()
        list.text = "Lease Start Date:"
        list.textColor = UIColor.black
        list.font = UIFont.boldSystemFont(ofSize: 22)
        list.translatesAutoresizingMaskIntoConstraints = false
        return list
    }()
    
    let startInput: UIDatePicker = {
        let tempEmailInput = UIDatePicker()
        tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
        //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
        return tempEmailInput
    }()
    
    let end: UILabel = {
           let list = UILabel()
           list.text = "Lease End Date:"
           list.textColor = UIColor.black
           list.font = UIFont.boldSystemFont(ofSize: 22)
           list.translatesAutoresizingMaskIntoConstraints = false
           return list
       }()
       
       let endInput: UIDatePicker = {
           let tempEmailInput = UIDatePicker()
           tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
           //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
           return tempEmailInput
       }()
    
    let totRent: UILabel = {
           let list = UILabel()
           list.text = "Total Rent Per Month:"
           list.textColor = UIColor.black
           list.font = UIFont.boldSystemFont(ofSize: 22)
           list.translatesAutoresizingMaskIntoConstraints = false
           return list
       }()
       
       let totRentInput: UITextField = {
           let tempEmailInput = UITextField()
        tempEmailInput.keyboardType = UIKeyboardType.decimalPad
           tempEmailInput.translatesAutoresizingMaskIntoConstraints = false
           //tempEmailInput.addBottomBorder(borderColor: UIColor(red:0.15, green:0.73, blue:0.46, alpha:1.0))
           tempEmailInput.textColor = UIColor.gray
           return tempEmailInput
       }()
    let oneTime: UILabel = {
              let list = UILabel()
              list.text = "One-Time Fees:"
              list.textColor = UIColor.black
              list.font = UIFont.boldSystemFont(ofSize: 22)
              list.translatesAutoresizingMaskIntoConstraints = false
              return list
          }()
          
          let oneTimeInput: UITextField = {
              let tempEmailInput = UITextField()
            tempEmailInput.keyboardType = UIKeyboardType.decimalPad
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

    override func viewWillLayoutSubviews() {
          super.viewWillLayoutSubviews()
        
          let myComponents = view.frame.size.height //+ back.frame.size.height
          
          let myComp = myTitle.frame.size.height + start.frame.size.height + startInput.frame.size.height + end.frame.size.height + endInput.frame.size.height + totRent.frame.size.height
          
          let myComponents2 = totRentInput.frame.size.height + oneTime.frame.size.height + oneTimeInput.frame.size.height +  myButton.frame.size.height
          scroll.contentSize = CGSize(width: 0, height: myComponents + myComp) //+ myComp )//+ myComponents2)
      }

    
    
    override func viewDidLayoutSubviews() {
           oneTimeInput.underlined(borderColor: UIColor.darkBlueColor)
           totRentInput.underlined(borderColor: UIColor.darkBlueColor)
           //cityInput.underlined(borderColor: UIColor.darkBlueColor)
           //zipInput.underlined(borderColor: UIColor.darkBlueColor)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.addTarget(self, action: #selector(back(_:)), for: .touchUpInside)
        myButton.addTarget(self, action: #selector(nextPage(_:)), for: .touchUpInside)


        scroll = UIScrollView(frame: view.bounds)
        self.view.addSubview(scroll)
        scroll.addSubview(backButton)
        scroll.addSubview(myTitle)
        scroll.addSubview(start)
        scroll.addSubview(startInput)
        scroll.addSubview(end)
        scroll.addSubview(endInput)
        scroll.addSubview(totRent)
        scroll.addSubview(totRentInput)
        scroll.addSubview(oneTime)
        scroll.addSubview(oneTimeInput)
        scroll.addSubview(myButton)
        
        startInput.backgroundColor = UIColor.white
        startInput.datePickerMode = .date
        
        endInput.datePickerMode = .date
        
        endInput.backgroundColor = UIColor.white
        myConstraints()

        // Do any additional setup after loading the view.
    }
    
    
    
    func myConstraints(){
    
    backButton.topAnchor.constraint(equalTo: self.scroll.topAnchor, constant: 45).isActive = true
    backButton.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
    backButton.trailingAnchor.constraint(equalTo: self.backButton.leadingAnchor).isActive = true
    backButton.bottomAnchor.constraint(equalTo: self.start.topAnchor, constant: -40).isActive = true
    backButton.widthAnchor.constraint(equalToConstant: 15).isActive = true
    backButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
    
    myTitle.topAnchor.constraint(equalTo: self.scroll.topAnchor, constant: 45).isActive = true
    myTitle.centerXAnchor.constraint(equalTo: self.scroll.centerXAnchor).isActive = true
    myTitle.bottomAnchor.constraint(equalTo: self.start.topAnchor, constant: -40).isActive = true
    
    start.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
    start.trailingAnchor.constraint(equalTo: self.start.trailingAnchor).isActive = true
    start.bottomAnchor.constraint(equalTo: startInput.topAnchor, constant: -20).isActive = true
           
    startInput.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 50).isActive = true
    startInput.trailingAnchor.constraint(equalTo: self.scroll.trailingAnchor, constant: -50).isActive = true
    startInput.bottomAnchor.constraint(equalTo: end.topAnchor, constant: -40).isActive = true
    
    
    end.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
    end.trailingAnchor.constraint(equalTo: end.trailingAnchor).isActive = true
    end.bottomAnchor.constraint(equalTo: endInput.topAnchor, constant: -20).isActive = true
           
    endInput.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 50).isActive = true
    endInput.trailingAnchor.constraint(equalTo:self.scroll.trailingAnchor, constant: -50).isActive = true
    endInput.bottomAnchor.constraint(equalTo: self.totRent.topAnchor, constant: -40).isActive = true
    
        
        totRent.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
        totRent.trailingAnchor.constraint(equalTo: end.trailingAnchor).isActive = true
        totRent.bottomAnchor.constraint(equalTo: totRentInput.topAnchor, constant: -20).isActive = true
               
        totRentInput.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 50).isActive = true
        totRentInput.trailingAnchor.constraint(equalTo:self.scroll.trailingAnchor, constant: -50).isActive = true
        totRentInput.bottomAnchor.constraint(equalTo: self.oneTime.topAnchor, constant: -40).isActive = true
        
        oneTime.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 20).isActive = true
        oneTime.trailingAnchor.constraint(equalTo: end.trailingAnchor).isActive = true
        oneTime.bottomAnchor.constraint(equalTo: oneTimeInput.topAnchor, constant: -20).isActive = true
               
        oneTimeInput.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 50).isActive = true
        oneTimeInput.trailingAnchor.constraint(equalTo:self.scroll.trailingAnchor, constant: -50).isActive = true
        oneTimeInput.bottomAnchor.constraint(equalTo: self.myButton.topAnchor, constant: -40).isActive = true
        
        
        
        myButton.leadingAnchor.constraint(equalTo: self.scroll.leadingAnchor, constant: 50 ).isActive = true
        myButton.trailingAnchor.constraint(equalTo: self.scroll.trailingAnchor, constant: -50).isActive = true
               
            
        
    
    }
    
    
    
    func datePickerValueChanged(_ sender: UIDatePicker){
          
          // Create date formatter
          let dateFormatter: DateFormatter = DateFormatter()
          
          // Set date format
          dateFormatter.dateFormat = "MM/dd/yyyy hh:mm a"
          
          // Apply date format
          let selectedDate: String = dateFormatter.string(from: sender.date)
          
          print("Selected value \(selectedDate)")
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
