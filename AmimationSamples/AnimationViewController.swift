//
//  AnimationViewController.swift
//  AmimationSamples
//
//  Created by Kiroshan Thayaparan on 6/25/22.
//

import UIKit

class AnimationViewController: UIViewController {
    
    let buttonBack: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        button.addTarget(self, action: #selector(gotoBack), for: .touchUpInside)
        return button
    }()
    
    let animiView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        return view
    }()
    
    var animiIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        view.addSubview(buttonBack)
        view.addSubview(animiView)
        animiView.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if animiIndex == 0 {
            animiView.dropFromTop(parentView: view, repeatAnimation: nil)
        } else if animiIndex == 1 {
            animiView.comingFromLeft(parentView: view, repeatAnimation: nil)
        } else if animiIndex == 2 {
            animiView.popIn(parentView: view, repeatAnimation: nil)
        } else if animiIndex == 3 {
            animiView.popOut(parentView: view, repeatAnimation: nil)
        } else if animiIndex == 4 {
            animiView.cardFlipRotate(parentView: view, repeatAnimation: nil)
        } else if animiIndex == 5 {
            animiView.cardFlipRotate(parentView: view, repeatAnimation: "cardFlip")
        } else if animiIndex == 6 {
            animiView.fadeIn(parentView: view, repeatAnimation: nil)
        } else if animiIndex == 7 {
            animiView.fadeOut(parentView: view, repeatAnimation: nil)
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        NSLayoutConstraint.activate([
            buttonBack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            buttonBack.leftAnchor.constraint(equalTo: view.leftAnchor),
            buttonBack.widthAnchor.constraint(equalToConstant: 40),
            buttonBack.heightAnchor.constraint(equalToConstant: 40),
            
            animiView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animiView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            animiView.widthAnchor.constraint(equalToConstant: view.frame.width/3),
            animiView.heightAnchor.constraint(equalToConstant: view.frame.width/3)
        ])
    }
    
    @objc func gotoBack() {
        dismiss(animated: true, completion: nil)
    }
}

