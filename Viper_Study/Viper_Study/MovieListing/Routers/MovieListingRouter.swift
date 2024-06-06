//
//  MovieListingRouter.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation
import UIKit

class MovieListingRouter : PresenterToRouter {
    static func createModule() -> MovieListingViewController {
        var view = mainstoryboard.instantiateViewController(withIdentifier: "MovieListingViewController") as! MovieListingViewController
        var presenter: ViewToPresenter & InteractorToPresenter = MovieListingPresenter()
        var interactor: PresenterToInteractor = MovieListingInteractor()
        var router: PresenterToRouter = MovieListingRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    func pushMovieDetailScreen(navigationController: UINavigationController) {
        let movieDetailViewController = MovieDetailRouter.createModule()
        navigationController.pushViewController(movieDetailViewController, animated: true)
    }
    
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
}
