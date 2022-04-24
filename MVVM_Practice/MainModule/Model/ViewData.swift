//
//  ViewData.swift
//  MVVM_Practice
//
//  Created by Ольга Горбачева on 23.04.22.
//

import Foundation

enum ViewData {
    
    case initial
    case loading(Data)
    case success(Data)
    case failure(Data)
    
    struct Data {
        let icon: String?
        let title: String?
        let description: String?
        let numberPhone: String?
        
    }
}
