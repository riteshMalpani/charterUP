//
//  OneWay.swift
//  CharterUP2
//
//  Created by Ritesh Malpani on 1/18/20.
//  Copyright © 2020 Ritesh Malpani. All rights reserved.
//

import UIKit

class OneWay: UIView, UITextViewDelegate {
    
    //Instantiate all variables
    var continueBut: UIButton!
    var bus: UIImageView!
    var depart: UILabel!
    var hour: UITextField!
    var minute: UITextField!
    var semiColon: UILabel!
    var timeday: UITextField!
    
    
    
    override func awakeFromNib() {
        
    }
    //Creates the One Way screen
    override init(frame: CGRect) {
        
    super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        //Creates the label that says Departure Time and correctly positions it
        depart = UILabel(frame: CGRect(x: 0, y: self.frame.height/7, width: self.frame.width, height: self.frame.height/7))
        self.addSubview(depart)
        depart.text = "Departure Time"
        depart.font = UIFont.systemFont(ofSize: 30)
        depart.textColor = UIColor.black
        depart.textAlignment = .center
        
        
         //This creates a text field for ther user to put in departure hour. The last line of code in this chunk puts a place holder in the field
        hour = UITextField(frame: CGRect(x: self.frame.width/8, y: self.frame.height/3.5, width: 60, height: 80))
        hour.layer.cornerRadius=8.0;
        hour.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        hour.layer.borderWidth = 1.0
        self.addSubview(hour)
        hour.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        hour.textAlignment = .center
        hour.font = UIFont.systemFont(ofSize: 30)
        hour.attributedPlaceholder = NSAttributedString(string: "3", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        
        //This is a label that simply holds a semicolon that is placed between the hour and minute text field
        semiColon = UILabel(frame: CGRect(x: self.frame.width/3.42, y: self.frame.height/3.5, width: 10, height: 80))
        self.addSubview(semiColon)
        semiColon.contentMode = .scaleAspectFit
        semiColon.text = ":"
        semiColon.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        semiColon.textColor = UIColor.black
        semiColon.textAlignment = .center
        
        //This creates a text field for ther user to put in departure minute. The last line of code in this chunk puts a place holder in the field
        minute = UITextField(frame: CGRect(x: self.frame.width/3, y: self.frame.height/3.5, width: 120, height: 80))
        minute.layer.cornerRadius=8.0;
        minute.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        minute.layer.borderWidth = 1.0
        self.addSubview(minute)
        minute.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        minute.textAlignment = .center
        minute.font = UIFont.systemFont(ofSize: 30)
        minute.attributedPlaceholder = NSAttributedString(string: "45", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
         //This creates a text field for ther user to put in am or pm. The last line of code in this chunk puts a place holder in the field
        timeday = UITextField(frame: CGRect(x: self.frame.width*2/3, y: self.frame.height/3.5, width: 90, height: 80))
        timeday.layer.cornerRadius=8.0;
        timeday.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        timeday.layer.borderWidth = 1.0
        self.addSubview(timeday)
        timeday.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        timeday.textAlignment = .center
        timeday.font = UIFont.systemFont(ofSize: 30)
        timeday.tag = 3
        timeday.attributedPlaceholder = NSAttributedString(string: "pm", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        
        
        //Creates an image of a bus and positions it
        bus = UIImageView(image: UIImage(named: "Bus"))
        self.addSubview(bus)
        bus.frame = CGRect(x: self.frame.width/8, y: self.frame.height/2, width: 300, height: 250)
        bus.contentMode = .scaleAspectFit
        
        
        
        
        
        //continue Button creation and formatting that is used in the View Controller to move to the next page
        continueBut = UIButton(frame: CGRect(x: 0, y: 50, width: 150, height: 44))
        continueBut.center.x = self.frame.width/2
        continueBut.center.y = self.frame.height*7/8
        continueBut.setTitle("GET QUOTE", for: .normal)
        continueBut.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        continueBut.setTitleColor(UIColor.white, for: .normal)
        continueBut.backgroundColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        continueBut.layer.cornerRadius = continueBut.frame.size.height / 2
        self.addSubview(continueBut)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
