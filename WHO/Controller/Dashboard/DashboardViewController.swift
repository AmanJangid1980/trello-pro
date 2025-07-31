//
//  DashboardViewController.swift
//  WHO
//
//  Created by Durgesh on 13/10/23.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var subviewWidth: NSLayoutConstraint!
    @IBOutlet weak var subViewHeight: NSLayoutConstraint!
    @IBOutlet weak var subview: UIView!
    @IBOutlet weak var lowerWheelImg: UIImageView!
    @IBOutlet weak var upperWheelImg: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var desHeightCons: NSLayoutConstraint!

    @IBOutlet weak var scrollview: UIScrollView!
    var _startTransform = CGAffineTransform()
    var _prevPoint = CGPointZero
    var _deltaAngle = Float()


    override func viewDidLoad() {
        super.viewDidLoad()
        let size = self.scrollview.bounds.width - 20
        self.subviewWidth.constant = size
        self.subViewHeight.constant = size
        self.scrollview.delegate = self
        scrollview.minimumZoomScale = 1.0
        scrollview.maximumZoomScale = 1.6

    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let lang = UserDefaults.standard.value(forKey: "SelectedLanguege") as! String
        self.startButton.isHidden = (lang != "en")

        descLabel.text = StringConstant.launchTagLine
        if StringConstant.launchTagLine.unicodeScalars.count >= 89 {
            desHeightCons.constant = 140.0
        }
        startButton.setTitle(StringConstant.START, for: .normal)
        self.lowerWheelImg.image = UIImage(named: StringConstant.lower_wheel)
        self.upperWheelImg.image = UIImage(named: StringConstant.upper_wheel)

        self._startTransform = CGAffineTransform(a: -0.7622027791151481, b: 0.6473383377408948, c: -0.6473383377408948, d: -0.7622027791151481, tx: 0.0, ty: 0.0)
        self._deltaAngle = 3.7546463
        self.lowerWheelImg.transform = CGAffineTransformRotate(_startTransform, CGFloat(_deltaAngle))

        let _panGesture = UIPanGestureRecognizer(target: self, action: #selector(rotateItem(_:)))
        _panGesture.delegate = self
        self.view.addGestureRecognizer(_panGesture)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        self.rotate2(imageView: self.lowerWheelImg, aCircleTime: 10.0)
    }
    
    func rotate2(imageView: UIImageView, aCircleTime: Double) { //UIView
        UIView.animate(withDuration: aCircleTime/2, delay: 0.0, options: .curveLinear, animations: {
            imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        }, completion: { finished in
            UIView.animate(withDuration: aCircleTime/2, delay: 0.0, options: .curveLinear, animations: {
                imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi*2))
            }, completion: { finished in
                self.rotate2(imageView: imageView, aCircleTime: aCircleTime)
            })
        })
    }
    
    @objc func rotateItem(_ recognizer: UIPanGestureRecognizer) {
        let currPoint = recognizer.location(in: self.view)
        if let center = recognizer.view?.center {
            let ang = atan2f(Float(currPoint.y - center.y), Float(currPoint.x - center.x)) - atan2f(Float(_prevPoint.y - center.y), Float(_prevPoint.x - center.x))
            _prevPoint = recognizer.location(in: self.view)
            _deltaAngle += ang
            print(_startTransform)
            print(_deltaAngle)
            self.lowerWheelImg.transform = CGAffineTransformRotate(_startTransform, CGFloat(_deltaAngle))
        }
    }
    
    
//    /// Rotates An SCNNode Around It's YAxis
//    ///
//    /// - Parameter gesture: UIRotationGestureRecognizer
//    @objc func rotateNode(_ gesture: UIRotationGestureRecognizer){
//
//        //1. Get The Current Rotation From The Gesture
//        let rotation = Float(gesture.rotation)
//
//        //2. If The Gesture State Has Changed Set The Nodes EulerAngles.y
//        if gesture.state == .changed{
//            isRotating = true
//            self.lowerWheelImg.eu.eulerAngles.y = currentAngleY + rotation
//        }
//
//        //3. If The Gesture Has Ended Store The Last Angle Of The Cube
//        if(gesture.state == .ended) {
//            currentAngleY = currentNode.eulerAngles.y
//            isRotating = false
//        }
//    }

//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let touch = touches.first {
//            // do something with your currentPoint
//
//            let currentLocation = touch.location(in: touch.view)
//            let pastLocation = Float(touch.location(in: self.view).x)
//        }
//    }
    
    @IBAction func tapOnLanguage(_ sender: UIButton) {
        if let myObject = Storyboard.dashboard.instantiateViewController(withIdentifier: "LanguageViewController") as? LanguageViewController {
            self.navigationController?.pushViewController(myObject, animated: true)
        }
    }
    
    
    
    @IBAction func tapOnStart(_ sender: UIButton) {
        if let myObject = Storyboard.dashboard.instantiateViewController(withIdentifier: "HomeListViewController") as? HomeListViewController {
            self.navigationController?.pushViewController(myObject, animated: true)
        }
    }
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subview // This should be the container view holding both images
    }
    func scrollViewDidZoom(_ scrollView: UIScrollView) {
//           centerImage()
//        centerImageAtTop()
        centerHorizontallyAtTop()

       }

       private func centerImage() {
           let scrollViewSize = scrollview.bounds.size
           let contentSize = scrollview.contentSize

           let verticalInset = max((scrollViewSize.height - contentSize.height) / 2, 0)
           let horizontalInset = max((scrollViewSize.width - contentSize.width) / 2, 0)

           scrollview.contentInset = UIEdgeInsets(top: verticalInset,
                                                  left: horizontalInset,
                                                  bottom: verticalInset,
                                                  right: horizontalInset)
       }
    private func centerHorizontallyAtTop() {
        let scrollViewSize = scrollview.bounds.size
        let contentSize = scrollview.contentSize

        // Horizontally center if content is smaller than scroll view width
        let horizontalInset = max((scrollViewSize.width - contentSize.width) / 2, 0)

        // Keep top aligned
        scrollview.contentInset = UIEdgeInsets(top: 0,
                                               left: horizontalInset,
                                               bottom: 0,
                                               right: horizontalInset)
    }

    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        // Set offset to top-center when zoom begins
        let topOffset = CGPoint(x: (scrollview.contentSize.width - scrollview.bounds.width) / 2, y: 0)
        scrollview.setContentOffset(topOffset, animated: false)
    }


    private func centerImageAtTop() {
        let scrollViewSize = scrollview.bounds.size
        let contentSize = scrollview.contentSize

        // Horizontal center as usual
        let horizontalInset = max((scrollViewSize.width - contentSize.width) / 2, 0)
        
        // Top alignment (0 or slight padding if needed)
        let topInset: CGFloat = 20.0 // You can set it to 0 for exact top

        scrollview.contentInset = UIEdgeInsets(top: topInset,
                                               left: horizontalInset,
                                               bottom: 0,
                                               right: horizontalInset)

        // Optionally scroll to top after zoom
        scrollview.setContentOffset(CGPoint(x: 0, y: -topInset), animated: false)
    }

    
}

extension DashboardViewController: UIGestureRecognizerDelegate, UIScrollViewDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        _startTransform = self.lowerWheelImg.transform
        return true
    }
}
