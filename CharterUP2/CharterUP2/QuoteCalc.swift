//
//  QuoteCalc.swift
//  CharterUP2
//
//  Created by Ritesh Malpani on 1/18/20.
//  Copyright © 2020 Ritesh Malpani. All rights reserved.
//

import UIKit

class QuoteCalc: UIView, UITextFieldDelegate {
    
    
    //Instantiate all variables
    var quoteTitle: UILabel!
    var busImage: UIImageView!
    var mileage: UILabel!
    var mileageText: UITextField!
    var travelTime: UILabel!
    var travelTimeText: UITextField!
    var passenger: UILabel!
    var passengerText: UITextField!
    var roundTrip: UILabel!
    var tripSwitch: UISwitch!
    var continueBut: UIButton!
    
    
    
    
    override func awakeFromNib() {
        
    }
    
    
    //Creates the Quote Calculator screen
    override init(frame: CGRect) {
    super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        
        //Creates the UILabel title adds text to it and formats it
        quoteTitle = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height/4))
        self.addSubview(quoteTitle)
        quoteTitle.contentMode = .scaleAspectFit
        quoteTitle.text = "Quote Calculator"
        quoteTitle.font = UIFont.systemFont(ofSize: 30)
        quoteTitle.textColor = UIColor.black
        quoteTitle.textAlignment = .center
        
        
        
        //Adss the buss photo in the screen and formats it
        busImage = UIImageView(image: UIImage(named: "BusBackground"))
        self.addSubview(busImage)
        busImage.frame = CGRect(x: 0, y: self.frame.height/6, width: self.frame.width, height: 230)
        busImage.contentMode = .scaleAspectFit
        self.busImage.center.y = self.frame.height/3
        
    
        
        //label that says Mileage Count and formating
        mileage = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 44))
        mileage.text = "Mileage Count"
        mileage.center.x = self.frame.width/3
        mileage.center.y = self.frame.height/2
        self.addSubview(mileage)
        mileage.textColor = UIColor.black
        mileage.textAlignment = .center
        mileage.font = UIFont.systemFont(ofSize: 24)
        
        //Text field that is used for recording the mileage
        mileageText = UITextField(frame: CGRect(x: 0, y: 0, width: 90, height: 40))
        mileageText.center.x = self.frame.width*3/4
        mileageText.center.y = self.frame.height/2
        mileageText.layer.cornerRadius=8.0;
        mileageText.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        mileageText.layer.borderWidth = 1.0
        self.addSubview(mileageText)
        mileageText.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        mileageText.textAlignment = .center
        mileageText.font = UIFont.systemFont(ofSize: 24)
        mileageText.delegate = self
        
        
        
        //label that says Travel Time and formating
        travelTime = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 44))
        travelTime.text = "Travel Time (Minutes)"
        travelTime.center.x = self.frame.width/3
        travelTime.center.y = self.frame.height/1.7
        self.addSubview(travelTime)
        travelTime.textColor = UIColor.black
        travelTime.textAlignment = .center
        travelTime.font = UIFont.systemFont(ofSize: 24)
        
        //Text field that is used for recording the travel time
        travelTimeText = UITextField(frame: CGRect(x: 0, y: 0, width: 90, height: 40))
        travelTimeText.center.x = self.frame.width*3/4
        travelTimeText.center.y = self.frame.height/1.7
        travelTimeText.layer.cornerRadius=8.0;
        travelTimeText.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        travelTimeText.layer.borderWidth = 1.0
        self.addSubview(travelTimeText)
        travelTimeText.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        travelTimeText.textAlignment = .center
        travelTimeText.font = UIFont.systemFont(ofSize: 24)
        travelTimeText.delegate = self
        
        
        
        
        //label that says  Passenger Count and formating
        passenger = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 44))
        passenger.text = "Passenger Count"
        passenger.center.x = self.frame.width/3
        passenger.center.y = self.frame.height*2/3
        self.addSubview(passenger)
        passenger.textColor = UIColor.black
        passenger.textAlignment = .center
        passenger.font = UIFont.systemFont(ofSize: 24)
        
        //Text field that is used for recording the passenger count
        passengerText = UITextField(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        passengerText.center.x = self.frame.width*3/4
        passengerText.center.y = self.frame.height*2/3
        passengerText.layer.cornerRadius=8.0;
        passengerText.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        passengerText.layer.borderWidth = 1.0
        self.addSubview(passengerText)
        passengerText.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        passengerText.textAlignment = .center
        passengerText.font = UIFont.systemFont(ofSize: 24)
        passengerText.delegate = self
        
        //label that says Round Trip and formating
        roundTrip = UILabel(frame: CGRect(x: 0, y: 50, width: 150, height: 44))
        roundTrip.center.x = self.frame.width/3
        roundTrip.center.y = self.frame.height*3/4
        roundTrip.text = "Round Trip"
        self.addSubview(roundTrip)
        roundTrip.textColor = UIColor.black
        roundTrip.textAlignment = .center
        roundTrip.font = UIFont.systemFont(ofSize: 24)
        
        //The switch which the user uses to designate a round trip
        tripSwitch = UISwitch(frame: CGRect(x: 0, y: 0, width: 150, height: 44))
        tripSwitch.center.x = self.frame.width*3/4
        tripSwitch.center.y = self.frame.height*3/4
        tripSwitch.onTintColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        self.addSubview(tripSwitch)
        
        //continue Button creation and formatting that is used in the View Controller to move to the next page
        continueBut = UIButton(frame: CGRect(x: 0, y: 50, width: 150, height: 44))
        continueBut.center.x = self.frame.width/2
        continueBut.center.y = self.frame.height*7/8
        continueBut.setTitle("CONTINUE", for: .normal)
        continueBut.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        continueBut.setTitleColor(UIColor.white, for: .normal)
        continueBut.backgroundColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        continueBut.layer.cornerRadius = continueBut.frame.size.height / 2
        self.addSubview(continueBut)
        
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.endEditing(true)
        return false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //When the text fields are clicked for inputting information, the keyboard blocks the screen so you can't see what is being inputted. This method animates all the text fields and labels up so that they are seen while typing
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.3) {
            self.busImage.center.y = -self.frame.height
            self.mileage.center.y = self.frame.height/3
            self.mileageText.center.y = self.frame.height/3
            self.travelTime.center.y = self.frame.height/2.4
            self.travelTimeText.center.y = self.frame.height/2.4
            self.passenger.center.y = self.frame.height/2
            self.passengerText.center.y = self.frame.height/2
            self.roundTrip.center.y = self.frame.height*3/5
            self.tripSwitch.center.y = self.frame.height*3/5
        }
    }
    //Thi smethod animates everything back to its original spot once the user in done typing
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.3) {
            self.busImage.center.y = self.frame.height/3
            self.mileage.center.y = self.frame.height/2
            self.mileageText.center.y = self.frame.height/2
            self.travelTime.center.y = self.frame.height/1.7
            self.travelTimeText.center.y = self.frame.height/1.7
            self.passenger.center.y = self.frame.height*2/3
            self.passengerText.center.y = self.frame.height*2/3
            self.roundTrip.center.y = self.frame.height*3/4
            self.tripSwitch.center.y = self.frame.height*3/4
        }
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
