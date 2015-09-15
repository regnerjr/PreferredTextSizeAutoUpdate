import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "textSizeWasUpdated:", name: UIContentSizeCategoryDidChangeNotification, object: nil)
    }

    func textSizeWasUpdated(note: NSNotification){
        textView.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
    }
}
