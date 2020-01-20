//
//  ViewController.swift
//  CharterUP2
//
//  Created by Ritesh Malpani on 1/18/20.
//  Copyright © 2020 Ritesh Malpani. All rights reserved.
//

import UIKit

//What I learned from this project.
//In this project, I no tonly gained new skills, but refined previous skills in app development. I have had expereince in the past with Swift and thus chose to make the app natively. The bigges obstacle in this project was time. This was a long weekend and in order to finish a fully functional and user inutitive app I had to gather my thoughts, make a few mock ups, and hit the computer coding quickly. In the past I made iOS apps using the storyboard which was a lot quicker, but gave less flexibility as to what I can do. Thus I recently started learning how to progrmatticaly code the whole application which takes a lot more time and is more advanced. Thus I really refined my skills and learned how to program out screens and make them all interact through the view controller. Specifically, I really enjoyed learning how to use the View Controller in a sophisticated way. For one, I set targets on buttons which call on a method once the button is clicked. This is essentially how i ran through the screens. Another cool method I learned to code was the hideKeyboardWhenTappedAround(). When a text field is clicked and the user begins typing, this method allows the user to exit out of the keyboard by tapping anywhere else on the screen. I also used learned to use text field delegates in this project to rescind the keyboard with teh return button. Another fascinating thing I learned was the textFieldDidBeginEditing() and textFieldDidEndEditing() at the bottom of the QuoteCalc file. These methods animated everything around once a text field begins or finished editing so that the user can see what they are typing as they keyboard is orignally blocking the text. All in all, I believe I took a lot away from coding a fairly sophisticated application in a very short amount of time. My biggest goal was to make an application that runs smoothly and also creates a user interface similar to the company website to make everything in the company unified. This is whyt I used pictures from the website, the company logo in several places, and the exact shade of blue that is the company color. Lastly, I have spent a good amount of time debugging the code so all edge cases should work perfectly and output the correct data. Daily rate was calculated by looking at the total hours of travel and dividing it by 24 to see the amount of days needed for travel. The hourly rate was calculated by taking the minutes and calculating them into hours and rounding up. For example, an 80 minute trip 2 ways would could as 4 hours, 2 hours each way as this is how hourly rates normally work. The mileage rate is fairly strightforward. Each of these calculations have coded edge cases and are multiplied by the amount of busses necessary to get an accurate figure times their respective multipliers.






//This class is where all the communication between all the different swift files and controllers occur

class ViewController: UIViewController {

    //Instantiate all variables
    
    var logo: UIImageView!
    var bookButton: UIButton!
    var background: UIImageView!
    var quoteView: QuoteCalc!
    var roundTrip: RoundTrip!
    var oneWay: OneWay!
    var finalQuote: FinalQuote!
    var paymentPage: PaymentPage!
    var finalScreen: FinalScreen!
    
    
    //This function is essentially the screen that loads in and the first screen that the user interacts with
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        hideKeyboardWhenTappedAround()
        view.backgroundColor = .white
      
        
        //Creates an image of the logo and positions it
        logo = UIImageView(image: UIImage(named: "CharterLogo"))
        view.addSubview(logo)
        logo.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        logo.center.x = self.view.center.x
        logo.center.y = self.view.frame.height/3
        logo.contentMode = .scaleAspectFit
        
        //Creates the book a trip button and properly formats it
        bookButton = UIButton(frame: CGRect(x: 0, y: 50, width: 150, height: 44))
        bookButton.center.x = self.view.center.x
        bookButton.center.y = self.view.frame.height*2/3
        bookButton.setTitle("BOOK A TRIP", for: .normal)
        bookButton.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
        bookButton.setTitleColor(UIColor.white, for: .normal)
        bookButton.backgroundColor = UIColor(red:0.03, green:0.65, blue:0.94, alpha:1.0)
        bookButton.layer.cornerRadius = bookButton.frame.size.height / 2
        view.addSubview(bookButton)
        
        
        //Sets the background image and places it on the bottom of the screen
        background = UIImageView(image: UIImage(named: "Background"))
        background.frame = CGRect(x: 0, y: self.view.frame.height*3/4, width: self.view.frame.width, height: self.view.frame.height/4)
        background.contentMode = .scaleAspectFill
        view.addSubview(background)
        
        //This line of code is what is what calls the myAction method declared below when the book a trip button is clicked
        bookButton.addTarget(self, action: #selector(myAction),for: .touchUpInside)
    }
    
    //This method is called from the book a trip button and instantiaes as well as animates in the next screen for quote calculation
    @objc func myAction(){
        //instantiating quoteView
        quoteView = QuoteCalc(frame: CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        view.addSubview(quoteView)
        //animating the quoteView in after it was made
        UIView.animate(withDuration: 0.25) {
        self.quoteView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            
        }
        //
        //This line of code is what is what calls the timeAction method declared below when the continue button is clicked
        self.quoteView.continueBut.addTarget(self, action: #selector(timeAction),for: .touchUpInside)
    }
    
    //This method first checks to see if there are valid enteries for mileage, travel time, and passengers. If there are not valid enteries, it sends a tailored alert describing which entry the user must change an how. If there is a valid entry, it checks to see if it is a round trip or not. If it is a round trip it instantiates and animates a RoundTrip class and if it is a one way, it does the same for a OneWay class.
    @objc func timeAction(){
        
        //Checks to make sure all text field enteries are valid
        if( Int(self.quoteView.passengerText.text!) != nil && Int(self.quoteView.passengerText.text!)! >= 0 && Int(self.quoteView.mileageText.text!) != nil && Int(self.quoteView.mileageText.text!)! >= 0 &&
            Int(self.quoteView.travelTimeText.text!) != nil &&
            Int(self.quoteView.travelTimeText.text!)! >= 0) {
            
            //checks to see if the round trip switch is on, if so creates a roundTrip instance and animates it in
            if (self.quoteView.tripSwitch.isOn) {
                roundTrip = RoundTrip(frame: CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
                view.addSubview(roundTrip)
                UIView.animate(withDuration: 0.25) {
                self.roundTrip.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
                    
            
                }
                
                 // The continue buttom on the roundTrip screen calls on the option action
                self.roundTrip.continueBut.addTarget(self, action: #selector(optionAction),for: .touchUpInside)
            //If it is not e round trip it creates a oneWay instance and animates it in
            } else {
            
                oneWay = OneWay(frame: CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
                view.addSubview(oneWay)
                UIView.animate(withDuration: 0.25) {
                self.oneWay.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
                
                }
                
                // The continue buttom on the oneWay screen calls on the option action as well
                self.oneWay.continueBut.addTarget(self, action: #selector(optionAction),for: .touchUpInside)
                
            }
        //If text field enteries are not valid, the rest of the conditioals determine which text field is in corrrect and produce an alert with specific information
        
        //Passenger entry is not a number
        }
        else if (Int(self.quoteView.passengerText.text!) == nil){
            let alert = UIAlertController(title: "Passenger Count Error", message: "Not A Number", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Retry", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        //Passenger entry is less than 0
        else if (Int(self.quoteView.passengerText.text!)! < 0) {
            let alert = UIAlertController(title: "Passenger Count Error", message: "Max Passenger Count is 50", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Retry", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        //Mileage entry is less than 0 or not a number
        else if (Int(self.quoteView.mileageText.text!) == nil || Int(self.quoteView.mileageText.text!)! < 0) {
            
            let alert = UIAlertController(title: "Mileage Error", message: "Must Enter Valid Number", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Retry", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        // All other errors must be from the travel time not being a number
        } else {
            let alert = UIAlertController(title: "Travel Time Error", message: "Must Enter Valid Number", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Retry", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
    }
    
    //Method called from the continue button on either the oneWay or roundTrip Screens. This is also the method where all math and logic are handled for pricing
    @objc func optionAction(){
        finalQuote = FinalQuote(frame: CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        view.addSubview(finalQuote)
        UIView.animate(withDuration: 0.25) {
        self.finalQuote.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        }
        
        //Uses the passenger count inputted by the user to determine how many busses will be needed for the trip as only 50 people can fit in a single bus
        var busses = 0
        var passengers = self.quoteView.passengerText.text
        if (passengers != nil) {
            busses = ((Int(passengers!) ?? 0) / 50) + 1
            print(busses)
        }
        
        
        //Calculates the price for the daily rate by using the travel time inputted by the user as well as the number of busses needed and checking it it's a round trip
        var time = 0
        var daily = self.quoteView.travelTimeText.text
        if (daily != nil) {
            if (((Int(daily!) ?? 0) % 1440) == 0) {
                time = (((Int(daily!) ?? 0)) / 1440)
            } else {
                time = (((Int(daily!) ?? 0)) / 1440) + 1
            }
            time = time * 1100 * busses
            self.finalQuote.dailyBut.setTitle("$\(Double(time))", for: .normal)
           

        }
        
        //Calculates the price for the hourly rate by using the travel time inputted by the user as well as the number of busses needed and checking it it's a round trip
        var hours = 0
        if (daily != nil) {
            
            if (((Int(daily!) ?? 0) % 60) == 0) {
                hours = (((Int(daily!) ?? 0) / 60))
            } else {
                hours = (((Int(daily!) ?? 0) / 60) + 1)
            }
            
            hours = hours * 125 * busses
            
            if( self.quoteView.tripSwitch.isOn) {
                self.finalQuote.hourlyBut.setTitle("$\(Double(hours) * 2.0)", for: .normal)
                hours = hours * 2
            } else {
                self.finalQuote.hourlyBut.setTitle("$\(Double(hours))", for: .normal)
            }
        }
        
        
        //Calculates the price for the mileage rate by using the travel time inputted by the user as well as the number of busses needed and checking it it's a round trip
        var miles = 0.0
        var mileage = self.quoteView.mileageText.text
        if (mileage != nil) {
            miles = (Double(mileage!) ?? 0) * 4.2 * Double(busses)
            
            if( self.quoteView.tripSwitch.isOn) {
                self.finalQuote.mileageBut.setTitle("$\(Double(miles) * 2.0)", for: .normal)
                miles = miles * 2
            } else {
                self.finalQuote.mileageBut.setTitle("$\(Double(miles))", for: .normal)
            }
        }
        
        //The conditionals determine which price is the cheapest and assing the text of the Best Price to that value
        if ( Double(miles) <= Double(hours) && Double(miles) <= Double(time)) {
            self.finalQuote.bestBut.setTitle("$\(Double(miles))", for: .normal)
        } else if ( Double(hours) <= Double(miles) && Double(hours) <= Double(time)) {
            self.finalQuote.bestBut.setTitle("$\(Double(hours))", for: .normal)
        } else {
            self.finalQuote.bestBut.setTitle("$\(Double(time))", for: .normal)
        }
        
        //All of these buttons call the payAction method and send the button name so that the payAction method knows which button called on it so that we know which price that the user choose to pick
        self.finalQuote.bestBut.addTarget(self, action: #selector(payAction(sender:)),for:
            .touchUpInside)
        self.finalQuote.dailyBut.addTarget(self, action: #selector(payAction(sender:)),for: .touchUpInside)
        self.finalQuote.hourlyBut.addTarget(self, action: #selector(payAction(sender:)),for: .touchUpInside)
        self.finalQuote.mileageBut.addTarget(self, action: #selector(payAction(sender:)),for: .touchUpInside)
    }
    
    
    //This method is called from any of the price buttons. This method makes an instance of the payment page and animates it into the frame
    @objc func payAction(sender: UIButton){
        
        let text = sender.titleLabel?.text
        
        paymentPage = PaymentPage(frame: CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        self.paymentPage.totalText.text = String(text!)
        view.addSubview(paymentPage)
        UIView.animate(withDuration: 0.25) {
        self.paymentPage.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        }
        //This assigns an action to the confirm button which calls the finalAction method
        self.paymentPage.confirm.addTarget(self, action: #selector(finalAction),for: .touchUpInside)
        //This assigns an action to the back button which calls the back Action
        self.paymentPage.backBut.addTarget(self, action: #selector(backAction), for: .touchUpInside)
    }
    
    //This method creates an instance of the final screen and animates it in
    @objc func finalAction() {
        finalScreen = FinalScreen(frame: CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        view.addSubview(finalScreen)
        UIView.animate(withDuration: 0.25) {
        self.finalScreen.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        }
        
    }
    //This method animates out the confirmation page so that the user can choose a different price if they want to
    @objc func backAction() {
        
        UIView.animate(withDuration: 0.25) {
        self.paymentPage.frame = CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        }
        
    }
    

    
}



//This is an extenstion of the ViewController and its purpose is for the keybaord to disapeear once the user touches any part of the screen that is not the keybopard (dismisses keyboard)
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
        
    }
}
