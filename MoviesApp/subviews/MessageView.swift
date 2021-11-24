//
//  MessageView.swift
//  MoviesApp
//
//  Created by Nejat BOY on 24.11.2021.
//


import UIKit



class MessageView: BaseCardView {
    
    private let label = LabelCardView().also { it in
        it.textColor = .white
    }
    
    
    override func configure() {
        super.configure()
        
        alpha = 0
        backgroundColor = .red
    }
    
    
    override func setupSubviews() {
        addSubview(label)
    }
    
    
    override func setConstraints() {
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2 * spacing),
            label.topAnchor.constraint(equalTo: topAnchor, constant: 2 * spacing),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2 * spacing),
            
            trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: 2 * spacing)
        ])
    }
    
    
    func show(parent view: UIView, message: String) {
        label.text = message
        view.addSubview(self)
        
        NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: view.centerXAnchor),
            widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        UIView.animate(withDuration: 0.3) { [self] in
            transform = CGAffineTransform(translationX: 0, y: -Device.height * 0.2)
            alpha = 1
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            UIView.animate(withDuration: 0.3) {
                self.alpha = 0
                
            } completion: { _ in
                self.removeFromSuperview()
            }
        }
    }
}
