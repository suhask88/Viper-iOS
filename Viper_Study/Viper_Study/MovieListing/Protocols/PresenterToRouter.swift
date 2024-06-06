//
//  PresenterToRouter.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation
import UIKit

protocol PresenterToRouter {
    
    static func createModule() -> MovieListingViewController
    func pushMovieDetailScreen(navigationController: UINavigationController)
    
}
