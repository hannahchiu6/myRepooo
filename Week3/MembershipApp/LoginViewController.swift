//
//  LoginViewController.swift
//  MembershipApp
//
//  Created by Hannah Chiu on 2021/3/13.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
  
@IBOutlet weak var mySegment: UISegmentedControl!
@IBOutlet weak var accountField: UITextField!
@IBOutlet weak var passwordField: UITextField!
@IBOutlet weak var checkField: UITextField!
@IBOutlet weak var checkLabel: UILabel!
@IBOutlet weak var loginHere: UIButton!

 //Enabled login and signup while toggling
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewsFor(pageType: .login)
    passwordField.isSecureTextEntry = true
    checkField.isSecureTextEntry = true
    checkField.backgroundColor = .gray
    
    let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    mySegment.setTitleTextAttributes(titleTextAttributes, for:.normal)

    let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIColor.black]
    mySegment.setTitleTextAttributes(titleTextAttributes1, for:.selected)
   


  
    }
  
  private enum PageType {
    case login 
    case signup
  }

  private var currentPageType: PageType = .login{
    didSet {
      setupViewsFor(pageType: currentPageType)
    }
  }

  private func setupViewsFor(pageType: PageType){
    checkField.isEnabled = pageType == .signup
    checkLabel.isEnabled = pageType == .signup
    
  }

  
  @IBAction func indexChanged(_ sender: UISegmentedControl) {
    
 
    currentPageType = sender.selectedSegmentIndex == 0 ? .login : .signup
    
    if currentPageType != PageType.login{
       passwordField.text = ""
       accountField.text = ""
       checkField.backgroundColor = .white
     
      
    }else {
       passwordField.text = ""
       accountField.text = ""
       checkField.backgroundColor = .gray
      }
  }
  

  
  
  //Delivery Alert Message

func displayMyAlertMessage(userMessage: String){
  
  let myAlert = UIAlertController(title: "Error", message: userMessage, preferredStyle: .alert)
  
  let doAction = UIAlertAction(title: "OK", style: .default, handler: nil)
  
  myAlert.addAction(doAction)
  present(myAlert, animated: true, completion: nil)
  
}
  
 func displayGoodAlertMessage(userMessage: String){
    
    let myAlert = UIAlertController(title: "Welcome!", message: userMessage, preferredStyle: .alert)
    
    let doAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    
    myAlert.addAction(doAction)
    present(myAlert, animated: true, completion: nil)
    
  }

  

  @IBAction func actionButton(_ sender: Any) {
    let userID = accountField.text
    let userPW = passwordField.text
    let checkPW = checkField.text
    
    if(userID?.isEmpty)! {
        displayMyAlertMessage(userMessage: "Account should not be empty.")
    }
  
    if(userPW?.isEmpty)! {
        displayMyAlertMessage(userMessage: "Password should not be empty.")
      }
    
    if(checkPW?.isEmpty)! && currentPageType == PageType.signup {
        displayMyAlertMessage(userMessage: "Check Password should not be empty.")
        }
    
    if(userPW == "1234" && userID == "appworks_school@gmail.com" && currentPageType == PageType.login){
        displayMyAlertMessage(userMessage: "Login successful.")
      
    }
    
    if((userPW != "1234" || userID != "appworks_school@gmail.com") && currentPageType == PageType.login){
        displayMyAlertMessage(userMessage: "Login failed.")
    }
    
    if((userPW != checkPW) || userID == "" && currentPageType == PageType.signup ){
        displayMyAlertMessage(userMessage: "Signup failed.")
    }
 
    if(userPW == checkPW && userID != "" && currentPageType == PageType.signup){
      displayGoodAlertMessage(userMessage: "Signup successful.")
      
    }
  
  }
  

}
