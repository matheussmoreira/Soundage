//
//  UIStandarts.swift
//  HackathonWWDC21
//
//  Created by Matheus S. Moreira on 13/06/21.
//

import SwiftUI

extension Color {
    static let darkPurple = Color(red: 45/255, green: 53/255, blue: 97/255, opacity: 1)
    static let transparent = Color(red: 45/255, green: 53/255, blue: 97/255, opacity: 0)
    static let lightPink = Color(red: 244/255, green: 141/255, blue: 180/255, opacity: 1)
    static let darkPink = Color(red: 201/255, green: 53/255, blue: 108/255, opacity: 1)
    static let darkPink2 = Color(red: 201/255, green: 53/255, blue: 108/255, opacity: 1)
}

extension Gradient {
    static let pinkGradient = LinearGradient(colors: [.lightPink,.darkPink], startPoint: .top, endPoint: .bottom)
}
