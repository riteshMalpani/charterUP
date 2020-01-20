//
//  Timing.swift
//  CharterUP2
//
//  Created by Ritesh Malpani on 1/18/20.
//  Copyright © 2020 Ritesh Malpani. All rights reserved.
//

import UIKit

class RoundTrip: UIView {
    
    //Instantiate all variables
    
    var continueBut: UIButton!
    var bus: UIImageView!
    
    var depart: UILabel!
    var departHour: UITextField!
    var departMinute: UITextField!
    var departSemiColon: UILabel!
    var departTimeday: UITextField!
    
    var returnTime: UILabel!
    var returnHour: UITextField!
    var returnMinute: UITextField!
    var returnSemiColon: UILabel!
    var returnTimeday: UITextField!
    
    override func awakeFromNib() {
        
    }
    
    //Creates the Round Trip screen
    override init(frame: CGRect) {
    super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        //Creates the label that says Departure Time and correctly positions it
        depart = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height/4))
        self.addSubview(depart)
        depart.text = "Departure Time"
        depart.font = UIFont.systemFont(ofSize: 30)
        depart.textColor = UIColor.black
        depart.textAlignment = .center
        
        
        //This creates a text field for ther user to put in departure hour. The last line of code in this chunk puts a place holder in the field
        departHour = UITextField(frame: CGRect(x: self.frame.width/8, y: self.frame.height/5.5, width: 60, height: 80))
        departHour.layer.cornerRadius=8.0;
        departHour.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        departHour.layer.borderWidth = 1.0
        self.addSubview(departHour)
        departHour.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        departHour.textAlignment = .center
        departHour.font = UIFont.systemFont(ofSize: 30)
        departHour.attributedPlaceholder = NSAttributedString(string: "11", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        
        //This is a label that simply holds a semicolon that is placed between the hour and minute text field
        departSemiColon = UILabel(frame: CGRect(x: self.frame.width/3.42, y: self.frame.height/5.5, width: 10, height: 80))
        self.addSubview(departSemiColon)
        departSemiColon.contentMode = .scaleAspectFit
        departSemiColon.text = ":"
        departSemiColon.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        departSemiColon.textColor = UIColor.black
        departSemiColon.textAlignment = .center
        
        
        //This creates a text field for ther user to put in departure minute. The last line of code in this chunk puts a place holder in the field
        departMinute = UITextField(frame: CGRect(x: self.frame.width/3, y: self.frame.height/5.5, width: 120, height: 80))
        departMinute.layer.cornerRadius=8.0;
        departMinute.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        departMinute.layer.borderWidth = 1.0
        self.addSubview(departMinute)
        departMinute.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        departMinute.textAlignment = .center
        departMinute.font = UIFont.systemFont(ofSize: 30)
        departMinute.attributedPlaceholder = NSAttributedString(string: "45", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        //This creates a text field for ther user to put in am or pm. The last line of code in this chunk puts a place holder in the field
        departTimeday = UITextField(frame: CGRect(x: self.frame.width*2/3, y: self.frame.height/5.5, width: 90, height: 80))
        departTimeday.layer.cornerRadius=8.0;
        departTimeday.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        departTimeday.layer.borderWidth = 1.0
        self.addSubview(departTimeday)
        departTimeday.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        departTimeday.textAlignment = .center
        departTimeday.font = UIFont.systemFont(ofSize: 30)
        departTimeday.attributedPlaceholder = NSAttributedString(string: "am", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        
        

    
        
        
        //Creates the label that says Return Time and correctly positions it
        returnTime = UILabel(frame: CGRect(x: 0, y: self.frame.height/4.8, width: self.frame.width, height: self.frame.height/4))
        self.addSubview(returnTime)
        returnTime.text = "Return Time"
        returnTime.font = UIFont.systemFont(ofSize: 30)
        returnTime.textColor = UIColor.black
        returnTime.textAlignment = .center
        
        
        //This creates a text field for ther user to put in return hour. The last line of code in this chunk puts a place holder in the field
        returnHour = UITextField(frame: CGRect(x: self.frame.width/8, y: self.frame.height/2.5, width: 60, height: 80))
        returnHour.layer.cornerRadius=8.0;
        returnHour.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        returnHour.layer.borderWidth = 1.0
        self.addSubview(returnHour)
        returnHour.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        returnHour.textAlignment = .center
        returnHour.font = UIFont.systemFont(ofSize: 30)
        returnHour.attributedPlaceholder = NSAttributedString(string: "3", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        
         //This is a label that simply holds a semicolon that is placed between the hour and minute text field
        returnSemiColon = UILabel(frame: CGRect(x: self.frame.width/3.42, y: self.frame.height/2.5, width: 10, height: 80))
        self.addSubview(returnSemiColon)
        returnSemiColon.contentMode = .scaleAspectFit
        returnSemiColon.text = ":"
        returnSemiColon.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        returnSemiColon.textColor = UIColor.black
        returnSemiColon.textAlignment = .center
        
        
         //This creates a text field for ther user to put in return minute. The last line of code in this chunk puts a place holder in the field
        returnMinute = UITextField(frame: CGRect(x: self.frame.width/3, y: self.frame.height/2.5, width: 120, height: 80))
        returnMinute.layer.cornerRadius=8.0;
        returnMinute.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        returnMinute.layer.borderWidth = 1.0
        self.addSubview(returnMinute)
        returnMinute.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        returnMinute.textAlignment = .center
        returnMinute.font = UIFont.systemFont(ofSize: 30)
        returnMinute.attributedPlaceholder = NSAttributedString(string: "10", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        //This creates a text field for ther user to put in am or pm. The last line of code in this chunk puts a place holder in the field
        returnTimeday = UITextField(frame: CGRect(x: self.frame.width*2/3, y: self.frame.height/2.5, width: 90, height: 80))
        returnTimeday.layer.cornerRadius=8.0;
        returnTimeday.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        returnTimeday.layer.borderWidth = 1.0
        self.addSubview(returnTimeday)
        returnTimeday.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        returnTimeday.textAlignment = .center
        returnTimeday.font = UIFont.systemFont(ofSize: 30)
        returnTimeday.attributedPlaceholder = NSAttributedString(string: "pm", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        
        
        
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
