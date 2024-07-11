
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AppleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppleTableView.dataSource = self
        AppleTableView.delegate = self

        AppleTableView.register(UINib(nibName:"AppleTableViewCell",bundle: nil), forCellReuseIdentifier: "AppleCell"
        )
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return dummyAppleData.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier:"AppleCell", for: indexPath) as? AppleTableViewCell {

            let apple = dummyAppleData[indexPath.row]
            cell.AppleLabel.text = apple.name
            cell.AppleImage.image = apple.image
            return cell

        } else {

            return UITableViewCell()

        }
    }
}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let Appleku = storyboard?.instantiateViewController(withIdentifier: "detail") as! DetailViewController

        let apple = dummyAppleData[indexPath.row]

        Appleku.apple = apple

        self.navigationController?.pushViewController(Appleku, animated: true)
    }
}




