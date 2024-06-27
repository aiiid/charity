//
//  LanguageView.swift
//  Charity
//
//  Created by Ai Hawok on 27/06/2024.
//
import UIKit
import SnapKit

class LanguageView: UIView {

    let appInfoView = AppInfoView()

    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Begin", for: .normal)
        button.layer.backgroundColor = Constants.Colors.primaryColor.cgColor
        button.layer.cornerRadius = 18
        return button
    }()
    
    let languageSelectionView: LanguageSelectionView

    override init(frame: CGRect) {
        self.languageSelectionView = LanguageSelectionView(languages: Constants.languages)
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        backgroundColor = .systemBackground
        [appInfoView, languageSelectionView, startButton].forEach { addSubview($0) }

        let screenHeight = UIScreen.main.bounds.height
        
        appInfoView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(140)
            make.centerX.equalToSuperview()
            make.height.equalTo(screenHeight/2)
            make.leading.trailing.equalToSuperview()
        }

        languageSelectionView.snp.makeConstraints { make in
//            make.top.equalTo(appInfoView.snp.bottom)
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalTo(startButton.snp.top)
            make.height.equalTo(screenHeight/3)
        }

        startButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-30)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(36)
        }
    }
}
