//
//  LanguageViewController.swift
//  Charity
//
//  Created by Ai Hawok on 27/06/2024.
//

import UIKit

import UIKit

class LanguageViewController: UIViewController, LanguageSelectionViewDelegate {
    private let contentView = LanguageView()

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.languageSelectionView.delegate = self
    }

    func didSelectLanguage(_ language: String) {
        print("Selected language: \(language)")
    }
}
