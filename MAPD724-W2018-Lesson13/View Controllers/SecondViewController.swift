import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var SecondScreenLabel: UILabel!
	@IBOutlet weak var BackButton: UIButton!
	@IBOutlet weak var NextButton: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
		SecondScreenLabel.alpha = 0

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
		AnimateLabelIn()
		PulseLabel()
		AnimateButtons()
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.StartView, sender: sender)
    }
    
    @IBAction func NextButton(_ sender: UIButton) {
        performSegue(withIdentifier: SegueManager.EndView, sender: sender)
    }
	
	func AnimateLabelIn() {
		UIView.animate(withDuration: 1, delay: 0,
					   options: [.curveEaseIn], animations: {
						self.SecondScreenLabel.alpha = 1
						self.SecondScreenLabel.center.y -= 200
		}, completion: nil)
	}
	
	func PulseLabel() {
		UIView.animate(withDuration: 0.25, delay: 1,
					   options: [.repeat, .autoreverse], animations: {
						self.SecondScreenLabel.alpha = 0
		}, completion: nil)
	}
	
	func AnimateButtons() {
		UIView.transition(with: self.NextButton, duration: 1, options: [.curveEaseIn], animations: {
			self.BackButton.center.x -= 185
			self.NextButton.center.x += 185
		}, completion: nil)
	}

	
	
	
    
}
