//
//  Router.swift
//  VIPER
//
//  Created by 藤田優作 on 2021/05/08.
//

import Foundation
import UIKit

// Object
// Entry point
typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? { get }
    
    static func start() -> AnyRouter
}

class UserRouter:AnyRouter {
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = UserRouter()
        
        //Assign VIP
        var view: AnyView = UserViewController()
        var presenter: AnyPresenter = UserPresenter()
        var interactor: AnyInteractor = UserInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        interactor.getUsers()
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        
        router.entry = view as?  EntryPoint
        
        return router
    }
}

