
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
    /// Get intrinsic width of UILabel (width of a label based on its content - font and text)
    var intrinsicWidth: CGFloat {
        get { self.intrinsicContentSize.width }
    }
    
    /// Get width of UILabel
    var width: CGFloat {
        get { self.frame.width }
    }
    
    /// Get lines count of UILabel, call self.layoutIfNeeded() if your view uses auto layout
    var linesCount: Int {
      guard let myText = self.text as NSString? else {
        return 0
      }
      let rect = CGSize(width: self.bounds.width, height: CGFloat.greatestFiniteMagnitude)
      let labelSize = myText.boundingRect(with: rect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: self.font as Any], context: nil)
      return Int(ceil(CGFloat(labelSize.height) / self.font.lineHeight))
    }
}

#endif
