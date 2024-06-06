//
//  MovieListingInteractor.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation

class MovieListingInteractor : PresenterToInteractor {
    var presenter: InteractorToPresenter?
    
    func fetchMovieList() {
        //Do movie list fetch operation using services like data or network operations
        if (success) {
            presenter?.movieListFetchSuccess(movieList: MovieListingModel())
        } else {
            presenter?.movieListFetchFailedError(error: Error())
        }
    }
}
