//
//  Payment Page.swift
//  CharterUP2
//
//  Created by Ritesh Malpani on 1/19/20.
//  Copyright © 2020 Ritesh Malpani. All rights reserved.
//

import UIKit


class PaymentPage: UIView {
    
    //Instantiate all variables
    
    var payment: UIImageView!
    var paymentTitle: UILabel!
    var total: UILabel!
    var totalText: UILabel!
    var confirm: UIButton!
    var backBut: UIButton!
    
    override func awakeFromNib() {
        
    }
    
    //Creates the Payment Page screen
    override init(frame: CGRect) {
    super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        //Creates the title on the top of the page with text Confirm Payment
        paymentTitle = UILabel(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height/4))
        self.addSubview(paymentTitle)
        paymentTitle.font = UIFont.systemFont(ofSize: 30)
        paymentTitle.textColor = UIColor.black
        paymentTitle.textAlignment = .center
        let attributedString = NSMutableAttributedString.init(string: "Confirm Payment")
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: NSRange.init(location: 0, length: attributedString.length))
        paymentTitle.attributedText = attributedString
        
        
        //Creates a back button whose functionality is given in the View Controller
        backBut = UIButton(frame: CGRect(x: 30, y: 30, width: 50, height: 50))
        backBut.setImage(UIImage.init(named: "Back"), for: .normal)
        self.addSubview(backBut)
        
        
        //Places an image of a credit card in the screen
        payment = UIImageView(image: UIImage(named: "Payment"))
        payment.frame = CGRect(x: 0, y: self.frame.height/4, width: self.frame.width, height: self.frame.height/4)
        payment.contentMode = .scaleAspectFit
        self.addSubview(payment)
        
        //Label that says Totao
        total = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 44))
        total.text = "Total: "
        total.center.x = self.frame.width/3
        total.center.y = self.frame.height/1.7
        self.addSubview(total)
        total.textColor = UIColor.black
        total.textAlignment = .center
        total.font = UIFont.systemFont(ofSize: 24)
        
        //Label next to the text total that shows the price chosen by the user before confirming
        totalText = UILabel(frame: CGRect(x: 0, y: 0, width: 140, height: 44))
        totalText.center.x = self.frame.width*3/5
        totalText.center.y = self.frame.height/1.7
        totalText.layer.cornerRadius=8.0;
        totalText.layer.borderColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0).cgColor
        totalText.layer.borderWidth = 2.0
        self.addSubview(totalText)
        totalText.textColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        totalText.textAlignment = .center
        totalText.font = UIFont.systemFont(ofSize: 24)
        
        
        
        //Confirm Button creation and formatting that is used in the View Controller to move to the next page
        confirm = UIButton(frame: CGRect(x: 0, y: 50, width: 150, height: 44))
        confirm.center.x = self.frame.width/2
        confirm.center.y = self.frame.height*7/8
        confirm.setTitle("CONFIRM", for: .normal)
        confirm.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        confirm.setTitleColor(UIColor.white, for: .normal)
        confirm.backgroundColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        confirm.layer.cornerRadius = confirm.frame.size.height / 2
        self.addSubview(confirm)
        
        
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
