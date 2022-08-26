//
//  SomeView.swift
//  Funios XIB
//
//  Created by Ferry Adi Wijayanto on 23/07/22.
//

import UIKit

class SomeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        let view = xibSetupView()
        view.frame = self.bounds
        addSubview(view)
    }
    
    private func xibSetupView() -> UIView {
        guard let xibView = Bundle.main.loadNibNamed("SomeView", owner: self, options: nil)?.first as? UIView else { return UIView() }
        return xibView
    }
    
}
