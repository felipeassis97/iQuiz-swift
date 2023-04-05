

import UIKit

class questionViewController: UIViewController {
    
    var points: Int = 0
    var questionNumber: Int = 0

    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet weak var questionTitle: UILabel!
    
    @IBAction func onTapAnswer(_ sender: UIButton) {
        sender.layer.cornerRadius = 16
        print("Pressionado: \(sender.tag)")
        let isRigthQuestion = questions[questionNumber].rightAnswer == sender.tag
       
        if isRigthQuestion{
            points += 1
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber < questions.count - 1  {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        }else{
            navigateToScore()
        }
     
    }
    
    
    
    func navigateToScore(){
        performSegue(withIdentifier: "gotToScore", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let scoreViewController = segue.destination as? ScoreViewController else {return}
        scoreViewController.score = points
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureQuestion()
    }
    
    func configureLayout(){
        navigationItem.hidesBackButton = true
        questionTitle.numberOfLines = 0
        questionTitle.textAlignment = .center
        for button in answerButtons{
            button.layer.cornerRadius = 16
        }
    }
    
    @objc func configureQuestion(){
        questionTitle.text = questions[questionNumber].title
        
        for button in answerButtons {
            let buttonTitle: String = questions[questionNumber].answers[button.tag]
            
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor =  UIColor(red: 116/255, green: 50/255, blue: 1, alpha: 1)
        }
    }
 

}
