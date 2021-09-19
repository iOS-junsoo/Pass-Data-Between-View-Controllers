//
//  ViewController.swift
//  Pass Data Between View Controllers
//
//  Created by 준수김 on 2021/09/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func didTapButton() {
        let vc = storyboard?.instantiateViewController(identifier: "other") as! OtherViewController
        //Storyboard가 있으면 Storyboard에 Other이라는 이름을 가진 ViewController를 만드는데 이름은 OtherViewController이다.
        vc.modalPresentationStyle = .fullScreen //fullScreen형태로 View Controller를 나타낸다.
        vc.completionHandler = { text in
            self.label.text = text
        }
        present(vc, animated: true) //View Controller를 애니메이션을 주어 나타낸다.
    }

}

