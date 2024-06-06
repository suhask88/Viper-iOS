//
//  ViewToPresenter.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation
import UIKit

protocol ViewToPresenter {
    var view: PresenterToView? { get set }
    var router: PresenterToRouter? { get set }
    var interactor: PresenterToInteractor? { get set }
    
    func getMovieList()
    func showMovieDetailScreen(navigationController: UINavigationController)
    
}
