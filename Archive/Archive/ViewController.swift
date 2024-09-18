//
//  ViewController.swift
//  Archive
//
//  Created by user@81 on 02/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var signImageView: UIImageView!
    
    var sign = Signs()
    var currentIndex = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    fileprivate func updateUI() {
        var currentSign = sign.getSign(for: currentIndex)
        signLabel.text = "\(currentIndex) - \(currentSign)"
        signImageView.image = UIImage(named: "\(currentIndex)\(currentSign)")
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        if currentIndex < 12{
            currentIndex += 1
        }
        updateUI()
        
    }
    
    
    @IBAction func perviousButtonTapped(_ sender: Any) {
        if currentIndex > 1{
            currentIndex -= 1
        }
        print(currentIndex)
        updateUI()
    }
    

    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
       
            nextButtonTapped(sender)
        print(currentIndex)
        
    }
    
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        
            perviousButtonTapped(sender)
        
        print(currentIndex)

    }
    @IBAction func imageTapped(_ sender: Any) {
        nextButtonTapped(sender)
    }
}
