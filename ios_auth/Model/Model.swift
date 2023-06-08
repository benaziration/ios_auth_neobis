//
//  Model.swift
//  ios_auth
//
//  Created by Benazir Toleubekova on 25.05.2023.
//

import Foundation

struct ForgotPassword: Codable {
    let email: String
}

struct ForgotPasswordConfirm: Codable {
    let email: String
    let newPassword: String
    let newPasswordConfirm: String
    let activationCode: String

    enum CodingKeys: String, CodingKey {
        case email
        case newPassword = "new_password"
        case newPasswordConfirm = "new_password_confirm"
        case activationCode = "activation_code"
    }
}

struct TokenObtainPair: Codable {
    let refresh: String
    let access: String
}

struct TokenRefresh: Codable {
    let refresh: String
    let access: String
}

struct Register: Codable {
    let email: String
    let name: String
    let lastName: String
    let birthday: String
    let password: String
    let password2: String
}

struct RegisterAccess: Codable {
    let email: String
}
struct PasswordChangeResponse: Decodable {
    let msg: String
}
