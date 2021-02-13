//
//  UseCase.swift
//  Core
//
//  Created by Ilga Putra on 16/01/21.
//

import Foundation
import RxSwift

public protocol UseCase {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> Observable<Response>
}