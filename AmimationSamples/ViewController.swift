//
//  ViewController.swift
//  AmimationSamples
//
//  Created by Kiroshan Thayaparan on 6/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 30)
        label.text = "Animation"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        label.dropFromTop(parentView: view, repeatAnimation: "cardFlipRotate")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            self.label.cardFlip(parentView: nil, repeatAnimation: nil)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let controller = ListViewController()
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true, completion: nil)
        }
    }
}
