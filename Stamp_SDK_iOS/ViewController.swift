
import UIKit
import StampSDK

class ViewController: UIViewController {
    
    private lazy var stampSDK = StampSDK()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapInitBtn(_ sender: Any) {
        stampSDK.initialize(mkey: "1132", mckey: "10415", userID: "qtbt_ios") { result, msg in
            
            if(result) {
                self.stampSDK.show(on: self)
            }
        }
    }
}
