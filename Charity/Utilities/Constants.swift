//
//  Constants.swift
//  Charity
//
//  Created by Ai Hawok on 27/06/2024.
//

import UIKit

struct LocalizedText {
    let choice: String
    let chooseLanguage: String
    let button: String
}

struct Constants {
    static let languages = ["ru", "kz", "en"]
    
    static let localizedTexts: [String: LocalizedText] = [
        "ru": LocalizedText(choice: "Русский язык", chooseLanguage: "Выберите язык", button: "Начать"),
        "kz": LocalizedText(choice: "Қазақ тілі", chooseLanguage: "Тілді таңдаңыз", button: "Бастау"),
        "en": LocalizedText(choice: "English Language", chooseLanguage: "Choose Language", button: "Start")
        ]
    
    struct Colors {
        static let primaryColor = UIColor(hex: "#136E63")
        static let backgroundColor = UIColor.systemBackground
        static let textColor = UIColor.label
    }
    
    struct Fonts {
        static let titleFont = UIFont.systemFont(ofSize: 24, weight: .bold)
        static let bodyFont = UIFont.systemFont(ofSize: 16, weight: .regular)
    }
}
