//
//  SymbolsFlashCardViewController.swift
//  HVACSymbols
//
//  Created by Student PM on 5/24/22.
//

import UIKit

class FlashCardsViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var modeSelector: UISegmentedControl!
    
    @IBOutlet var imageView: UIImageView!
        
    @IBOutlet var answerLabel: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var showAnswer: UIButton!
    
    @IBOutlet weak var showAnswerButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet var nextSymbol: UIButton!
    
    var answerIsCorrect = false
    var correctAnswerCount = 0
    
    var mode: Mode = .flashCard {
        didSet {
            switch mode {
            case .flashCard:
                setupFlashCards()
            case .quiz:
                setupQuiz()
            }
            
            updateUI()
        }
    }
    
    var state: State = .question
    
    var currentSymbol = 0
    
    var currentIndex = 0
    
    
    
    var index = 0
    
    var fixed = [

    0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30

   ]
        
    var randomized: [Int] = []
        

    
    enum Mode {
        case flashCard
        case quiz
    }
    
    enum State {
        case question
        case answer
        case score
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    
        
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func showAnswer(_ sender: UIButton) {
                
        state = .answer
        
        updateUI()
    }
    
    
    @IBAction func nextSymbol(_ sender: UIButton) {
        
        
//        var new = symbolData[randomize[index]].image
        
        
            /// this accesses the image, which is what I want
            /// now how do I randomize "index" so it gives me a random image every single time?
            
        
        
        
            /// how do I make the term match the randomized symbol? (so it is a randomized symbol along with its term?)
        
        
        
        currentIndex += 1
        
        if randomized.count < 31 {
            randomized = fixed.shuffled()
        }
        
        currentSymbol = randomized[currentIndex]

       if currentIndex == symbolData.count {
        
        currentIndex = 0
        
        currentSymbol = randomized[currentIndex]
        
        if mode == .quiz {
            state = .score
            updateUI()
            return
        }
    }
        state = .question
        
        updateUI()
        
        
    }
    
    
    @IBAction func switchModes(_ sender: UISegmentedControl) {
        
        if modeSelector.selectedSegmentIndex == 0 {
            mode = .flashCard
        }
        else {
            mode = .quiz
            randomized = Array(fixed.shuffled())
        }
        
    }
    
    
    func updateUI() {
        switch mode {
        
        case .flashCard:
            updateFlashCardUI()
            imageView.image = symbolData[currentSymbol].image
            
        case .quiz:
            updateQuizUI()
            imageView.image = symbolData[currentSymbol].image
        }
        
        if state == .score {
            displayScoreAlert()
        }
    }
    
    
    
    
    
    
    
    // Updates UI in Flash Card mode
    
    func updateFlashCardUI() {
        
//        imageView.image = symbolData[currentSymbol].image
        
        
        // updates answer label
        if state == .answer {
            answerLabel.text = symbolData[currentSymbol].name
        }
        else {
            answerLabel.text = "?"
        }
        
        
        // hides text field and keyboard
        textField.isHidden = true
        textField.resignFirstResponder()
        
        
        // segmented control
        modeSelector.selectedSegmentIndex = 0
        
        
        // buttons
        
        showAnswerButton.isHidden = false
        nextButton.isEnabled = true
        nextButton.setTitle("Next Symbol", for: .normal)

        
    }
    
    func updateQuizUI() {
        
        textField.isHidden = false
        
        // updates answer label
        switch state {
        
        case .question:
            answerLabel.text = ""
            
        case .answer:
            if answerIsCorrect {
                answerLabel.text = "Correct!"
            }
            else {
                answerLabel.text = "❌\nCorrect Answer: " + symbolData[currentSymbol].name
            }
        case .score:
            answerLabel.text = ""
            
        }
        
        // updates text field
        switch state {
        
        case .question:
            textField.isEnabled = true
            textField.text = ""
            textField.becomeFirstResponder()

        case .answer:
            textField.isEnabled = false
            textField.resignFirstResponder()
            
        case .score:
            textField.isHidden = true
            textField.resignFirstResponder()
        }
        
        // updates segmented control
        modeSelector.selectedSegmentIndex = 1
        
        
        // buttons
        showAnswerButton.isHidden = true
        
        if currentSymbol == symbolData.count - 1 {
            nextButton.setTitle("Show Answer", for: .normal)
        }
        else {
            nextButton.setTitle("Next Question", for: .normal)
        }
        
        switch state {
        case .question:
            nextButton.isEnabled = false
        case .answer:
            nextButton.isEnabled = true
        case .score:
            nextButton.isEnabled = false
            
        }
        
    }
        
        

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let textFieldContents = textField.text!
        
        
        if textFieldContents.lowercased() == symbolData[currentSymbol].name.lowercased() {
            answerIsCorrect = true
            correctAnswerCount += 1
        }
        else {
            answerIsCorrect = false
        }
        
        state = .answer
        
        updateUI()
        
        return true
    }
    
    
    // Displays alert with the user's quiz score
    
    
    func displayScoreAlert() {
        let alert = UIAlertController(title: "Quiz Score", message: "Your score is \(correctAnswerCount) out of \(symbolData.count).", preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "OK", style: .default, handler: scoreAlertDismissed(_ :))
        
        alert.addAction(dismissAction) // <- allows something to happen when OK is tapped
        
        present(alert, animated: true, completion: nil) // <- presents the actual alert to the user
    }
    
    func scoreAlertDismissed(_ action: UIAlertAction) {
    
        mode = .flashCard
        
    }
    
    
    func setupFlashCards() {
        state = .question
        currentSymbol = 0
        
    }
    
    func setupQuiz() {
        state = .question
//        currentSymbol = 0
        currentIndex = 0
        if randomized.count < 31 {
            randomized = fixed.shuffled()
        }
        currentSymbol = randomized[currentIndex]
    
        
        answerIsCorrect = false
        correctAnswerCount = 0
        
        
      
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
    



/*
// : - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
    


