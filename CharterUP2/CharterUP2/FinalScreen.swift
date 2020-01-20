//
//  FinalScreen.swift
//  CharterUP2
//
//  Created by Ritesh Malpani on 1/19/20.
//  Copyright © 2020 Ritesh Malpani. All rights reserved.
//

import UIKit

class FinalScreen: UIView {
    
    //Instantiate all variables
    
    var logo: UIImageView!
    var thanks: UILabel!
    
    //Creates the final thank you screen
    override func awakeFromNib() {
           
       }
       
       override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.white
        
        
        //Makes a label that says thanks to the user
        thanks = UILabel(frame: CGRect(x: 0, y: self.frame.height/5, width: self.frame.width, height: self.frame.height/7))
        self.addSubview(thanks)
        thanks.text = "THANK YOU FOR USING"
        thanks.font = UIFont.systemFont(ofSize: 25)
        thanks.textColor = UIColor.black
        thanks.textAlignment = .center
        
        //Displays the logo so it is the last thing the user sees
        logo = UIImageView(image: UIImage(named: "CharterLogo"))
        logo.frame = CGRect(x: 0, y: self.frame.width/1.5, width: self.frame.width, height: self.frame.height/5)
        logo.contentMode = .scaleAspectFit
        self.addSubview(logo)
        
        
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
    }

}
