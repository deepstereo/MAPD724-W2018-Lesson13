import UIKit

class EndViewController: UIViewController {
    
    @IBOutlet weak var EndScreenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
    
}
