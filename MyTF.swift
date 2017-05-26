//
//  MyTF.swift
//  iSaldos
//
//  Created by Sergio Gutiérrez Marfil on 21/5/17.
//  Copyright © 2017 icologic. All rights reserved.
//

import UIKit

class MyTF: UITextField {
    
    //para añadir padding a un campo de texto

    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15);
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    //Esta función prepara el receptor para el servicio
    //y aquí le podemos añadir las características que queramos que tengan nuestros campos de texto
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 5
        layer.borderColor = UIColor.darkGray.cgColor
        layer.borderWidth = 1.0

    }
}
