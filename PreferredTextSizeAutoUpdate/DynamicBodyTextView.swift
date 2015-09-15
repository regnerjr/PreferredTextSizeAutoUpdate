import UIKit

class DynamicBodyTextView: UITextView {
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        setFont()
        registerForNotification()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setFont()
        registerForNotification()
    }

    func setFont(){
        self.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
    }

    func registerForNotification(){
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "textSizeWasUpdated:", name: UIContentSizeCategoryDidChangeNotification, object: nil)

    }

    func textSizeWasUpdated(note: NSNotification){
        self.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
    }
    
}