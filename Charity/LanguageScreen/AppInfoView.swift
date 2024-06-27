//
//  AppInfoView.swift
//  Charity
//
//  Created by Ai Hawok on 27/06/2024.
//

import UIKit


class AppInfoView: UIView {

    let appIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = Constants.Colors.primaryColor
        return imageView
    }()

    let appTitle: UILabel = {
        let text = UILabel()
        text.font = UIFont(name: "SFProText-Bold", size: 24)
        text.text = "App Title"
        text.textAlignment = .center
        text.numberOfLines = 0
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        [appIcon, appTitle].forEach { addSubview($0) }

        appIcon.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(128)
        }

        appTitle.snp.makeConstraints { make in
            make.top.equalTo(appIcon.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
        }
    }
}
