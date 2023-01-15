
#if canImport(UIKit)

import UIKit

public extension UIView {
    var isVisible: Bool {
        set { self.isHidden = !newValue }
        get { self.isHidden == false }
    }
    
    var isNotHidden: Bool {
        set { isVisible = newValue }
        get { isVisible }
    }
    
    var isNotVisible: Bool {
        set { isHidden = newValue }
        get { isHidden }
    }
}

public extension UILabel {
    var intrinsicWidth: CGFloat {
        get { self.intrinsicContentSize.width }
    }
    
    var width: CGFloat {
        get { self.frame.width }
    }
    
    var linesCount: Int {
      guard let myText = self.text as NSString? else {
        return 0
      }
      // Call self.layoutIfNeeded() if your view uses auto layout
      let rect = CGSize(width: self.bounds.width, height: CGFloat.greatestFiniteMagnitude)
      let labelSize = myText.boundingRect(with: rect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.font as Any], context: nil)
      return Int(ceil(CGFloat(labelSize.height) / self.font.lineHeight))
    }
}

#endif
