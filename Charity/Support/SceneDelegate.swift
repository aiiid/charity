//
//  SceneDelegate.swift
//  Charity
//
//  Created by Ai Hawok on 27/06/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let hasCompletedOnboarding = UserDefaults.standard.bool(forKey: "hasCompletedOnboarding")
        if hasCompletedOnboarding {
            showMainScreen()
        } else {
            showMainScreen()
        }
        
        window?.makeKeyAndVisible()
    }
    
    func showMainScreen() {
        let mainViewController = LanguageViewController() // Replace with your initial view controller
        let navigationController = UINavigationController(rootViewController: mainViewController)
        window?.rootViewController = navigationController
    }
    
    func showOnboardingScreen() {
//        let onboardingViewModel = LanguageViewController()
//        let onboardingViewController = LanguageViewController(viewModel: onboardingViewModel)
//        window?.rootViewController = onboardingViewController
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}

}

