//
//  MovieListingPresenter.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation
import UIKit

class MovieListingPresenter: ViewToPresenter {
    
    var view: PresenterToView?
    
    var router: PresenterToRouter?
    
    var interactor: PresenterToInteractor?
    
    func getMovieList() {
        interactor?.fetchMovieList()
    }
    
    func showMovieDetailScreen(navigationController: UINavigationController) {
        router?.pushMovieDetailScreen(navigationController: navigationController)
    }
    
}

extension MovieListingPresenter: InteractorToPresenter {
    func movieListFetchSuccess(movieList: MovieListingModel) {
        view?.showMovieList(movieList: movieList)
    }
    
    func movieListFetchFailedError(error: Error) {
        view?.showError(error: error)
    }
}
