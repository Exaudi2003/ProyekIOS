

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtJudul: UILabel!
    @IBOutlet weak var txtDeskripsi: UILabel!
    
    var apple : AppleModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if apple != nil {
            imgView.image = apple?.image
            txtJudul.text = apple?.name
            txtDeskripsi.text = apple?.description
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
