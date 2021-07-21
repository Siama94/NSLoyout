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
    
     override func loadView() {
         super.loadView()
         setupHierarchy()
         setupLayout()
     }
    
     // MARK: - Settings
     
     private func setupHierarchy() {
         view.addSubview(subview)
     }
    
     private func setupLayout() {
        subview.translatesAutoresizingMaskIntoConstraints = false
        
        let views = ["newView": subview]
        let widthConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[newView(100)]", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: views)
        let heightConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[newView(100)]", options: NSLayoutConstraint.FormatOptions(rawValue: 0), metrics: nil, views: views)
        
        NSLayoutConstraint.activate(widthConstraints)
        NSLayoutConstraint.activate(heightConstraints)
        
        NSLayoutConstraint(item: subview, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: subview, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0).isActive = true
        
     }
    
 }
 var viewController = ViewController()

 
