import UIKit

class ViewController: UIViewController {

    var check : Bool = true
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var language: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(change))
        
        logo.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func change(){
        if(check == true){
            logo.image = UIImage(named:"kotlin")
            language.text = "Kotlin"
            check = false
        } else if(check == false){
            logo.image = UIImage(named:"swift")
            language.text = "Swift"
            check = true
        }
    }
    
}

