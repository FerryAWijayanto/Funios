//
//  DependencyContainer.swift
//  URLSessions
//
//  Created by Ferry Adi Wijayanto on 17/08/22.
//

import Foundation

protocol ViewControllerFactory {
    func makeHomeViewController() -> HomeViewController
}


class DependencyContainer {
    lazy private var manager = NetworkManager(sessions: .shared)
}

extension DependencyContainer: ViewControllerFactory {
    func makeHomeViewController() -> HomeViewController {
        HomeViewController(manager: manager)
    }
}
