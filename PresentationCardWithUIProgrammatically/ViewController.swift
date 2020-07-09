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
    let nombrePersona = UILabel()
    let cargoPersonal = UILabel()
    let phone = UILabel()
    let mail = UILabel()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        buildAndLoadImageWithAutoLayout(imageName: "ezequiel")
        nameAssingAndAutoLayout(name: "Ezequiel Parada Beltran")
        jobTitleAssingAndAutoLayout(name: "iOS Developer")
        phoneAssingAndAutoLayout(num: "(+54) 3886123456")
        mailAssingAndAutoLayout(email: "ezequiel3434@gmail.com")
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

    
    func nameAssingAndAutoLayout(name: String){
        nombrePersona.text = name
        nombrePersona.textColor = UIColor.black
        nombrePersona.translatesAutoresizingMaskIntoConstraints = false
        nombrePersona.textAlignment = NSTextAlignment.center
        nombrePersona.font = UIFont(name: "Avenir Next", size: 20)
        
        self.view.addSubview(nombrePersona)
        
        let leadingConstraint = nombrePersona.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8)
        let trailingConstrant = nombrePersona.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 8)
        let topConstraint = nombrePersona.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50)
        
        let heightConstraint = nombrePersona.heightAnchor.constraint(equalToConstant: 25)
        
        constraintsToApply.append(leadingConstraint)
        constraintsToApply.append(trailingConstrant)
        constraintsToApply.append(topConstraint)
        constraintsToApply.append(heightConstraint)
    }
    
    
    func jobTitleAssingAndAutoLayout(name: String){
        cargoPersonal.text = name
        cargoPersonal.textColor = UIColor.black
        cargoPersonal.translatesAutoresizingMaskIntoConstraints = false
        cargoPersonal.textAlignment = NSTextAlignment.center
        cargoPersonal.font = UIFont(name: "Avenir Next", size: 16)
        
        self.view.addSubview(cargoPersonal)
        
        let leadingConstraint = cargoPersonal.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstrant = cargoPersonal.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraint = cargoPersonal.topAnchor.constraint(equalTo: self.imagenDePerfil.bottomAnchor, constant: 10)
        
        let heightConstraint = cargoPersonal.heightAnchor.constraint(equalToConstant: 20)
        
        constraintsToApply.append(leadingConstraint)
        constraintsToApply.append(trailingConstrant)
        constraintsToApply.append(topConstraint)
        constraintsToApply.append(heightConstraint)
    }
    
    
    
    func phoneAssingAndAutoLayout(num: String){
           phone.text = num
           phone.textColor = UIColor.black
           phone.translatesAutoresizingMaskIntoConstraints = false
           phone.textAlignment = NSTextAlignment.left
           phone.font = UIFont(name: "Avenir Next", size: 13)
           
           self.view.addSubview(phone)
           
           let leadingConstraint = phone.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8)
           let botConstraint = phone.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10)
           
        let widthConstraint = phone.widthAnchor.constraint(equalToConstant: 120)
           let heightConstraint = phone.heightAnchor.constraint(equalToConstant: 20)
           
           constraintsToApply.append(leadingConstraint)
           constraintsToApply.append(widthConstraint)
           constraintsToApply.append(botConstraint)
           constraintsToApply.append(heightConstraint)
       }
    
    
    func mailAssingAndAutoLayout(email: String){
        mail.text = email
        mail.textColor = UIColor.black
        mail.translatesAutoresizingMaskIntoConstraints = false
        mail.textAlignment = NSTextAlignment.right
        mail.font = UIFont(name: "Avenir Next", size: 13)
        
        self.view.addSubview(mail)
        
        let trailingConstraint = mail.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8)
        let botConstraint = mail.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10)
        
     let widthConstraint = mail.widthAnchor.constraint(equalToConstant: 180)
        let heightConstraint = mail.heightAnchor.constraint(equalToConstant: 20)
        
        constraintsToApply.append(trailingConstraint)
        constraintsToApply.append(widthConstraint)
        constraintsToApply.append(botConstraint)
        constraintsToApply.append(heightConstraint)
    }



}

