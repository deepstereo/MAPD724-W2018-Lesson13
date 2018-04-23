import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var SecondScreenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.StartView, sender: sender)
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.EndView, sender: sender)
    }
    
    
}
