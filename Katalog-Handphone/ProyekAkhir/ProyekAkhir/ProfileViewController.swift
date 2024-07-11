

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var Foto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Foto.makeRounded()
    }
}

extension UIImageView {
    func makeRounded() {
    let radius = self.bounds.height / 2
    self.layer.cornerRadius = radius
    self.layer.masksToBounds = true
    self.clipsToBounds = true
    }
}
