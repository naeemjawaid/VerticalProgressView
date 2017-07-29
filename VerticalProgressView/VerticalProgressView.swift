//
//  VerticalSliderView.swift
//  MovieApp
//
//  Created by Muhammad Naeem Jawaid on 23/07/2017.
//  Copyright © 2017 Muhammad Naeem Jawaid. All rights reserved.
//

import UIKit

open class VerticalProgressView: UIView {
    
    private let progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    open var progress: Float {
        get {
            return progressView.progress
        }
        set {
            progressView.progress = newValue
        }
    }
    
    open var progressViewStyle: UIProgressViewStyle {
        get {
            return progressView.progressViewStyle
        }
        set {
            progressView.progressViewStyle = newValue
        }
    }
    
    open var progressTintColor: UIColor? {
        get {
            return progressView.progressTintColor
        }
        set {
            progressView.progressTintColor = newValue
        }
    }
    
    open var progressImage: UIImage? {
        get {
            return progressView.progressImage
        }
        set {
            progressView.progressImage = newValue
        }
    }
    
    open var trackTintColor: UIColor? {
        get {
            return progressView.trackTintColor
        }
        set {
            progressView.trackTintColor = newValue
        }
    }
    
    open var trackImage: UIImage? {
        get {
            return progressView.trackImage
        }
        set {
            progressView.trackImage = newValue
        }
    }
    
    open var isAscending: Bool = true {
        didSet {
            rotateSlider()
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initialize()
    }
    
    required override public init(frame: CGRect) {
        super.init(frame: frame)
        progressView.frame = frame
        initialize()
    }
    
    convenience init(progressViewStyle style: UIProgressViewStyle) {
        self.init()
        initialize()
        progressView.progressViewStyle = style
    }
    
    fileprivate func initialize() {
        rotateSlider()
        addSubview(progressView)
    }
    
    fileprivate func rotateSlider() {
        if isAscending {
            progressView.transform = CGAffineTransform(rotationAngle: .pi * -0.5)
        } else {
            progressView.transform = CGAffineTransform(rotationAngle: .pi * 0.5)
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        
        let width = bounds.width
        let height = bounds.height
        
        progressView.bounds.size.width = height
        progressView.bounds.size.height = width
        progressView.center.x = bounds.midX
        progressView.center.y = bounds.midY
    }
    
    override open var intrinsicContentSize: CGSize {
        get {
            return CGSize(width: progressView.intrinsicContentSize.height, height: progressView.intrinsicContentSize.width)
        }
    }
    
    open func setProgress(_ progress: Float, animated: Bool) {
        progressView.setProgress(progress, animated: animated)
    }
}
