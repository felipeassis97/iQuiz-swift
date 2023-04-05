import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureQuizButton()
    }

    @IBAction func onTapStartQuiz(_ sender: Any) {
        print("Botao 2")
    }
    
    func configureQuizButton(){
        navigationItem.hidesBackButton = true
        startQuizButton.layer.cornerRadius = 16
    }
    
}

