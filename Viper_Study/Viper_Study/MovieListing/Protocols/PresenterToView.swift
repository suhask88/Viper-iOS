//
//  PresenterToView.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation

protocol PresenterToView {
    
    func showMovieList(movieList: MovieListingModel)
    func showError(error: Error)
    
}
