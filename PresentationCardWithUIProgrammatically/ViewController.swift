//
//  ViewController.swift
//  PresentationCardWithUIProgrammatically
//
//  Created by Ezequiel Parada Beltran on 09/07/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imagenDePerfil = UIImageView()
    var constraintsToApply = Array<NSLayoutConstraint>()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        buildAndLoadImageWithAutoLayout(imageName: "ezequiel")
        self.view.layoutIfNeeded()
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        NSLayoutConstraint.activate(constraintsToApply)
    }
    
    
    func buildAndLoadImageWithAutoLayout(imageName: String){
        imagenDePerfil.translatesAutoresizingMaskIntoConstraints = false
        imagenDePerfil.image = UIImage(named: imageName)
        imagenDePerfil.contentMode = UIImageView.ContentMode.scaleAspectFill
        imagenDePerfil.clipsToBounds = true
        self.view.addSubview(imagenDePerfil)
        let centerXConstraint = imagenDePerfil.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        let centerYConstraint = imagenDePerfil.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        
        let widthConstraint = imagenDePerfil.widthAnchor.constraint(equalToConstant: 175)
        let heightConstraint = imagenDePerfil.heightAnchor.constraint(equalToConstant: 175)
        
        imagenDePerfil.layer.cornerRadius = widthConstraint.constant / 2.0
        
        constraintsToApply.append(centerXConstraint)
        constraintsToApply.append(centerYConstraint)
        constraintsToApply.append(widthConstraint)
        constraintsToApply.append(heightConstraint)
    }


}

