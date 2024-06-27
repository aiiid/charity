import UIKit
import SnapKit

protocol LanguageSelectionViewDelegate: AnyObject {
    func didSelectLanguage(_ language: String)
}

class LanguageSelectionView: UIView {
    private var languageButtons: [UIButton] = []
    private let languages: [String]
    weak var delegate: LanguageSelectionViewDelegate?
    
    let chooseLanguage: UILabel = {
        let text = UILabel()
        text.font = UIFont(name: "SFProText-Semibold", size: 20)
        text.text = "Выберите язык"
        text.numberOfLines = 0
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    let languagesStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 16
        return stackView
    }()
    
    init(languages: [String]) {
        self.languages = languages
        super.init(frame: .zero)
        setupLanguageButtons()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLanguageButtons() {
        addSubview(chooseLanguage)
        addSubview(languagesStack)
        
        chooseLanguage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        languagesStack.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(chooseLanguage.snp.bottom).offset(16)
            make.center.equalToSuperview()
        }
        
        for language in languages {
            let button = UIButton()
            var config = UIButton.Configuration.plain()
            config.title = language
            config.image = UIImage(systemName: "circle")
            config.imagePadding = 10
            config.imagePlacement = .leading
            config.baseForegroundColor = .label
            button.configuration = config
            button.contentHorizontalAlignment = .left
            button.addTarget(self, action: #selector(languageButtonTapped(_:)), for: .touchUpInside)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
            languagesStack.addArrangedSubview(button)
            languageButtons.append(button)
        }
    }

    @objc private func languageButtonTapped(_ sender: UIButton) {
        resetButtons()
        
        var selectedConfig = sender.configuration
        selectedConfig?.image = UIImage(systemName: "smallcircle.filled.circle")
        sender.configuration = selectedConfig

        if let selectedLanguage = sender.configuration?.title {
            delegate?.didSelectLanguage(selectedLanguage)
        }
    }
    
    private func resetButtons() {
        for button in languageButtons {
            var config = button.configuration
            config?.image = UIImage(systemName: "circle")
            button.configuration = config
        }
    }
}
