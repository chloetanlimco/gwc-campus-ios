import UIKit

// Solution 1: Dictionaries
class ViewController: UIViewController {
    // outlets are references to UI components, treat these as you would any object
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    // actions are functions called after user interaction occurs
    // button clicked
    @IBAction func generateButtonClicked(_ sender: Any) {
        setUpScreen()
    }
    
    func setUpScreen() {
        // dictionaries have keys and values; "look up" a key to find its value
        let imagelib: [String: String] = ["Yosemite": "yosemite.jpg", "Banff": "banff.jpg", "Arches": "arches.jpg"]
        
        // calls generateRandomPark() function, which returns a string of the park name
        let randomPark = generateRandomPark()
        
        // changing the text of a label in your Storyboard
        titleLabel.text = randomPark
        // changing the image of the UIImage view - have to create a UIImage object with the file name passed in as a parameter
        backgroundImage.image = UIImage(named: imagelib[randomPark]!)
    }
    
    // generates a random park; returns a String value
    func generateRandomPark() -> String {
        
        let ntlParks: [String] = ["Yosemite", "Banff", "Arches"]
        // ! necessary to indicate that we know the array is not empty
        return ntlParks.randomElement()!
    }
    
    // this function is called when the view is loading
    // do all your initial screen set up here
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScreen()
    }
}


// Solution 2: Arrays
class ViewController2: UIViewController {
    // outlets are references to UI components, treat these as you would any object
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    // actions are functions called after user interaction occurs
    // button clicked
    @IBAction func generateButtonClicked(_ sender: Any) {
        setUpScreen()
    }
    
    func setUpScreen() {
        // ensure that the items correspond so that you can match up the image with the correct item
        // don't want the two to be separately random, e.g. Yosemite label and Arches image
        let ntlParks: [String] = ["Yosemite", "Banff", "Arches"]
        let imageArray: [String] = ["yosemite.jpg", "banff.jpg", "arches.jpg"]
        
        // get a random index (this is where the randomness will come from)
        // swift has this function:
        let randomNumber = Int.random(in: 0 ..< ntlParks.count)
        
        
        // because the following two use the same index (randomNumber doesn't change values in between this line of code and the next), the image and text will correspond so long as your arrays are written correctly
        // changing the text of a label in your Storyboard
        titleLabel.text = ntlParks[randomNumber]
        
        // changing the image of the UIImage view - have to create a UIImage object with the file name passed in as a parameter
        backgroundImage.image = UIImage(named: imageArray[randomNumber])
    }
    
    // this function is called when the view is loading
    // do all your initial screen set up here
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScreen()
    }
}
