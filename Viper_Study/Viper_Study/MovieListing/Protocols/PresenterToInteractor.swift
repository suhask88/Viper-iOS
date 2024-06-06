//
//  PresenterToInteractor.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation

protocol PresenterToInteractor {
    
    var presenter: InteractorToPresenter? { get set }
    
    func fetchMovieList()
    
}
