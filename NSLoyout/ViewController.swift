//
//  ViewController.swift
//  NSLoyout
//
//  Created by Анастасия on 21.07.2021.
//


 import UIKit


 class ViewController: UIViewController {
    
     private lazy var subview: UIView = {
         let view = UIView()
         view.backgroundColor = .systemRed
         return view
     }()
    
    private lazy var subview2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemTeal
        return view
    }()
    
     override func loadView() {
         super.loadView()
         setupHierarchy()
         setupLayout()
     }
    
     // MARK: - Settings
     
     private func setupHierarchy() {
         //view.addSubview(subview)
        
        view.addSubviews(subview)
     }
    
     private func setupLayout() {
        //subview.translatesAutoresizingMaskIntoConstraints = false
        
        /*
        subview.addConstraints(centerX: view.centerXAnchor, centerXPadding: 0,
                               centerY: view.centerYAnchor, centerYPadding: 0,
                               top: view.topAnchor, paddingTop: 80, // расстояние от верха
                               left: view.leadingAnchor, paddingLeft: 40, // расстояние слева
                               right: view.trailingAnchor, paddingRight: 40, // расстояние справа
                               bottom: view.bottomAnchor, paddingBottom: 80, //расстояние от низа
                               width: 80,
                               height: 80) */
        
    
        /*
        let views = ["newView": subview]
        let widthConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[newView(100)]", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: views)
        let heightConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[newView(100)]", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: views)
        
        NSLayoutConstraint.activate(widthConstraints)
        NSLayoutConstraint.activate(heightConstraints)
        
        NSLayoutConstraint(item: subview, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: subview, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0).isActive = true
         */

        /*
        subview.translatesAutoresizingMaskIntoConstraints = false

        subview.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        subview.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true

        subview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        subview.heightAnchor.constraint(equalToConstant: 100).isActive = true
         */
     }
    
 }
 var viewController = ViewController()


 
extension UIView {
    
    /// Добавление вьюх как сабвью
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
    
    
    /// Добавление констрейнтов
    func addConstraints(
        centerX: NSLayoutXAxisAnchor? = nil, centerXPadding: CGFloat = 0,
        centerY: NSLayoutYAxisAnchor? = nil, centerYPadding: CGFloat = 0,
        top: NSLayoutYAxisAnchor? = nil, paddingTop: CGFloat = 0,
        left: NSLayoutXAxisAnchor? = nil, paddingLeft: CGFloat = 0,
        right: NSLayoutXAxisAnchor? = nil, paddingRight: CGFloat = 0,
        bottom: NSLayoutYAxisAnchor? = nil, paddingBottom: CGFloat = 0,
        width: CGFloat = 0, height: CGFloat = 0
    ) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let centerX = centerX {
            centerXAnchor.constraint(equalTo: centerX, constant: centerXPadding).isActive = true
        }
        
        if let centerY = centerY {
            centerYAnchor.constraint(equalTo: centerY, constant: centerYPadding).isActive = true
        }
        
        // Use the top parameter to set the top constarint
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        // Use the left parameter to set the left constarint
        if let left = left {
            leadingAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        // Use the bottom parameter to set the bottom constarint
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        // Use the right parameter to set the right constarint
        if let right = right {
            trailingAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        // Use the width parameter to set the top constarint
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        // Use the height parameter to set the top constarint
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
