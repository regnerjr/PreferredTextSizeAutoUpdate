import UIKit

class DynamicTextView: UITextView {

    var fontStyle = UIFontTextStyleBody

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
        self.font = UIFont.preferredFontForTextStyle(fontStyle)
    }

    func registerForNotification(){
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "textSizeWasUpdated:", name: UIContentSizeCategoryDidChangeNotification, object: nil)

    }

    func textSizeWasUpdated(note: NSNotification){
        self.font = UIFont.preferredFontForTextStyle(fontStyle)
    }
    
}