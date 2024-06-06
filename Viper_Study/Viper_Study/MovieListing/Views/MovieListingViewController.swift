//
//  MovieListingViewController.swift
//  Viper_Study
//
//  Created by Suhas K on 06/06/24.
//

import Foundation
import UIKit

class MovieListingViewController : UIViewController {
    var presenter: ViewToPresenter?
    
    override func viewDidLoad() {
        presenter?.getMovieList()
    }
}

extension MovieListingViewController: PresenterToView {
    func showMovieList(movieList: MovieListingModel) {
        // Show movie list
    }
    
    func showError(error: Error) {
        // Show error
    }
}
