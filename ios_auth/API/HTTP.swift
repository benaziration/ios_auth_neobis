//
//  HTTP.swift
//  ios_auth
//
//  Created by Benazir Toleubekova on 08.06.2023.
//

import Foundation

enum HTTP {
    
    enum Method: String {
        case get = "GET"
        case post = "POST"
    }
    
    enum Headers {
        
        enum Key: String {
            case contentType = "Content-Type"
        }
        
        enum Value: String {
            case applicationJson = "application/json"
        }
        
    }
    
}

