//
//  InteractorToPresenter.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation

protocol InteractorToPresenter {
    
    func movieListFetchSuccess(movieList: MovieListingModel)
    func movieListFetchFailedError(error: Error)
    
}
