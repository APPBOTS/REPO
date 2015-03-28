//
//  identityViewController.swift
//  APLICATION
//
//  Created by JULIO BARBERAN on 27/3/15.
//  Copyright (c) 2015 JULIO BARBERAN. All rights reserved.
//

import UIKit
let core = CoreDataStack()
class identityViewController: UIViewController {

    @IBOutlet var menuTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func disMiss()
    {
        self.dismissViewControllerAnimated(true , completion: nil)
    }

    @IBAction func cancelPressed(sender: AnyObject) {
        disMiss();
    }
    @IBAction func donePressed(sender: AnyObject) {
        if let entityText = menuTextField.text{
            println("Saving in the Stack")
            core.InsertItem(entityText)
        }
        disMiss();
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
