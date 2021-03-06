//
//  Interactor.swift
//  Core
//
//  Created by Ilga Putra on 16/01/21.
//

import Foundation
import RxSwift

public struct Interactor<Request, Response, R: Repository>: UseCase
where R.Request == Request, R.Response == Response {
    
    private let _repository: R
    
    public init(repository: R) {
        _repository = repository
    }
    
    public func execute(request: Request?) -> Observable<Response> {
        _repository.execute(request: request)
    }
}
