import UIKit

class ScoreViewController: UIViewController {
    
    var score: Int?

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfigure()
        scoreConfigure()
    }
    
    func layoutConfigure(){
        navigationItem.hidesBackButton = true
        resetButton.layer.cornerRadius = 16
    }
    
    
    func scoreConfigure(){
        guard let score = score else {return}
        scoreLabel.text = "Você acertou \(score) de \(questions.count) questões."
        
        let percent = (score * 100)/questions.count
        percentLabel.text = "Percentual final: \(percent)%"

    }
}
