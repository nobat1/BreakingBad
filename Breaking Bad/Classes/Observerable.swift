//
//  Observerable.swift
//  Breaking Bad
//
//  Created by Nobat on 05/12/2019.
//  Copyright © 2019 Nobat. All rights reserved.
//

import Foundation
class GenericObserverable<T> {
    typealias CompletionHandler = (() -> Void)
    var value: T {
        didSet {
            notify()
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    var observers = [String: CompletionHandler]()
    
    func bindObserver(observer: NSObject, completionHandler: @escaping CompletionHandler){
        observers[observer.description] = completionHandler
    }
    
    func bindAndNotify(observer: NSObject, completionHandler: @escaping CompletionHandler) {
        bindObserver(observer: observer, completionHandler: completionHandler)
        notify()
    }
    
    func notify(){
        observers.forEach{$0.value()}
    }
    
    deinit {
        observers.removeAll()
    }
}
