//
//  OtherViewController.swift
//  Pass Data Between View Controllers
//
//  Created by 준수김 on 2021/09/19.
//

import UIKit

class OtherViewController: UIViewController {

    @IBOutlet var field: UITextField!
    
    public var completionHandler: ((String?) -> Void)? //Void를 반환하는 문자열?? -> Controller를 해체하기 전에 수행할 작업
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //Save Button을 Tap했을 때 VView Controller를 닫는다.
    @IBAction func didTapSave() {
        
        completionHandler?(field.text)
        
        dismiss(animated: true, completion: nil)
    }

}
