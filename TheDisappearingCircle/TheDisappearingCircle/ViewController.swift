//
//  ViewController.swift
//  TheDisappearingCircle
//
//  Created by Сергей Анпилогов on 20.09.2022.
//

import UIKit

class ViewController: UIViewController {

    var myButton: UIButton!
    var myView: UIView!

    var screenHeight = UIScreen.main.bounds.height
    var screeWidht = UIScreen.main.bounds.width

    override func viewDidLoad() {
        super.viewDidLoad()
        creatButton()
        creatView()



    }


    func creatView() {
        myView = UIView()
        myView.frame.size = CGSize(width: 220, height: 220)
        myView.frame.origin = CGPoint(x: self.view.center.x / 2.2 , y: self.view.frame.height / 4.0)
        myView.layer.cornerRadius = myView.frame.width / 2
        myView.backgroundColor = .systemYellow
        self.view.addSubview(myView)
    }



    func creatButton() {
        myButton = UIButton()
        myButton.frame.size = CGSize(width: 100, height: 100)
        myButton.frame.origin = CGPoint(x: self.view.center.x / 2 * 1.5, y: self.view.frame.height / 1.5 )
        myButton.setTitle("Button", for: .normal)
        myButton.setTitleColor(.systemBlue, for: .normal)
        myButton.backgroundColor = .white
        self.view.addSubview(myButton)

        myButton.addTarget(self, action: #selector(myButtonForChangeColor), for: .touchUpInside)
    }

    @objc func myButtonForChangeColor() {

        let arrayColor = [UIColor.systemBlue,
                          UIColor.systemCyan,
                          UIColor.blue,
                          UIColor.brown,
                          UIColor.orange,
                          UIColor.green]
        myView.backgroundColor = arrayColor[Int.random(in: 0..<arrayColor.count)]


        if myView.isHidden == false {
            myView.isHidden = true
        } else if myView.isHidden == true {
            myView.isHidden = false
            myView.frame.origin.x = self.view.frame.width
            myView.frame.origin.y = self.myButton.center.y
            myView.frame.origin.y = .random(in: 0...200)
            myView.frame.origin.x = .random(in: 0...200)
        }
    }

}
