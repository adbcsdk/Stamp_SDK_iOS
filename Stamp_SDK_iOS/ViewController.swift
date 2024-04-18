
import UIKit
import StampSDKBF

class ViewController: UIViewController {
    
    private lazy var stampSDK = StampSDK(delegate: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapInitBtn(_ sender: Any) {
        stampSDK.initialize(mkey: "1132", mckey: "10415", userID: "qtbt_ios")
    }
}

extension ViewController: StampSDKDelegate {
    func StampSDKInitializeDidEnd(result: Bool, message: String) {
        if(result) {
            stampSDK.show(on: self)
        }
    }
}
