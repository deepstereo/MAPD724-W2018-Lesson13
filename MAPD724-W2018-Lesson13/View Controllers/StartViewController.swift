
import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var StartScreenLabel: UILabel!
    
    @IBOutlet weak var NextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        StartScreenLabel.alpha = 0
        NextButton.isHidden = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        AnimateLabelIn()
        AnimateButtonIn()
        MoveButtonOver()
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.SecondView, sender: sender)
    }
    
    func AnimateLabelIn() {
        UIView.animate(withDuration: 0.5, delay: 0.25,
                       options: [.curveEaseInOut], animations: {
                        self.StartScreenLabel.alpha = 1
                        self.StartScreenLabel.center.y -= 50
        }, completion: nil)
    }
    
    func AnimateButtonIn() {
        UIView.transition(with: self.NextButton, duration: 1,
                          options: [.transitionFlipFromTop], animations: {
                          self.NextButton.isHidden = false
        }, completion: nil)
    }
    
    func MoveButtonOver() {
        UIView.animate(withDuration: 0.5, delay: 0.25,
                       options: [.curveEaseIn], animations: {
                        self.NextButton.center.x += 100
        }, completion: nil)
    }
    
    

}
