//
//  FinalQuote.swift
//  CharterUP2
//
//  Created by Ritesh Malpani on 1/19/20.
//  Copyright © 2020 Ritesh Malpani. All rights reserved.
//

import UIKit

class FinalQuote: UIView {
    
    //Instantiate all variables
    
    var title: UILabel!
    var bestPrice: UILabel!
    var bestBut: UIButton!
    var daily: UILabel!
    var dailyBut: UIButton!
    var hourly: UILabel!
    var hourlyBut: UIButton!
    var mileage: UILabel!
    var mileageBut: UIButton!
    
    
    override func awakeFromNib() {
        
    }
    
    //Creates the final Quote screen
    override init(frame: CGRect) {
    super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        //Creates a title called choose desired price and puts it on the top of the page
        title = UILabel(frame: CGRect(x: 0, y: 10, width: self.frame.width, height: self.frame.height/7))
        self.addSubview(title)
        title.font = UIFont.systemFont(ofSize: 30)
        title.textColor = UIColor.black
        title.textAlignment = .center
        let attributedString = NSMutableAttributedString.init(string: "CHOOSE DESIRED PRICE")
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: NSRange.init(location: 0, length: attributedString.length))
        title.attributedText = attributedString
        
        
        //Creates label with text Best Rate
        bestPrice = UILabel(frame: CGRect(x: self.frame.width/8, y: self.frame.height/7, width: self.frame.width/2, height: self.frame.height/7))
        self.addSubview(bestPrice)
        bestPrice.text = "Best Rate:"
        bestPrice.font = UIFont.systemFont(ofSize: 28)
        bestPrice.textColor = UIColor.black
        bestPrice.textAlignment = .left
        
        //Creates a button next to the Best Rate text
        bestBut = UIButton(frame: CGRect(x: self.frame.width*3/5, y: self.frame.height/7, width: self.frame.width/3, height: self.frame.height/7))
        bestBut.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        bestBut.setTitleColor(UIColor.white, for: .normal)
        bestBut.backgroundColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        bestBut.layer.cornerRadius = bestBut.frame.size.height / 2
        self.addSubview(bestBut)
        
        
        
        
         //Creates label with text Daily Rate
        daily = UILabel(frame: CGRect(x: self.frame.width/8, y: self.frame.height*2/7 + self.frame.height/20, width: self.frame.width/2, height: self.frame.height/7))
        self.addSubview(daily)
        daily.text = "Daily Rate:"
        daily.font = UIFont.systemFont(ofSize: 28)
        daily.textColor = UIColor.black
        daily.textAlignment = .left
             
         //Creates a button next to the Daily Rate text
        dailyBut = UIButton(frame: CGRect(x: self.frame.width*3/5, y: self.frame.height*2/7 + self.frame.height/20, width: self.frame.width/3, height: self.frame.height/7))
        dailyBut.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        dailyBut.setTitleColor(UIColor.white, for: .normal)
        dailyBut.backgroundColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        dailyBut.layer.cornerRadius = dailyBut.frame.size.height / 2
        self.addSubview(dailyBut)
        
        
        
         //Creates label with text Hourly Rate
        hourly = UILabel(frame: CGRect(x: self.frame.width/8, y: self.frame.height*3/7 + self.frame.height/10, width: self.frame.width/2, height: self.frame.height/7))
        self.addSubview(hourly)
        hourly.text = "Hourly Rate:"
        hourly.font = UIFont.systemFont(ofSize: 28)
        hourly.textColor = UIColor.black
        hourly.textAlignment = .left
         
         //Creates a button next to the Hourly Rate text
        hourlyBut = UIButton(frame: CGRect(x: self.frame.width*3/5, y: self.frame.height*3/7 + self.frame.height/10, width: self.frame.width/3, height: self.frame.height/7))
        hourlyBut.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        hourlyBut.setTitleColor(UIColor.white, for: .normal)
        hourlyBut.backgroundColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        hourlyBut.layer.cornerRadius = dailyBut.frame.size.height / 2
        self.addSubview(hourlyBut)

        
         //Creates label with text Best Rate
        mileage = UILabel(frame: CGRect(x: self.frame.width/8, y: self.frame.height*4/7 + self.frame.height/7, width: self.frame.width/2, height: self.frame.height/7))
        self.addSubview(mileage)
        mileage.text = "Mileage Rate:"
        mileage.font = UIFont.systemFont(ofSize: 28)
        mileage.textColor = UIColor.black
        mileage.textAlignment = .left
         
         //Creates a button next to the Mileage Rate text
        mileageBut = UIButton(frame: CGRect(x: self.frame.width*3/5, y: self.frame.height*4/7 + self.frame.height/7, width: self.frame.width/3, height: self.frame.height/7))
        mileageBut.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        mileageBut.setTitleColor(UIColor.white, for: .normal)
        mileageBut.backgroundColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        mileageBut.layer.cornerRadius = dailyBut.frame.size.height / 2
        self.addSubview(mileageBut)


    
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
