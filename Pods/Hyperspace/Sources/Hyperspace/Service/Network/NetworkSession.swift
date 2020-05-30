//
//  NetworkSession.swift
//  Hyperspace
//
//  Created by Tyler Milner on 6/26/17.
//  Copyright © 2017 Bottle Rocket Studios. All rights reserved.
//

import Foundation

/// Represents something that can execute a URLRequest to return a NetworkSessionDataTask. Modeled after URLSession to allow for injecting mock sessions into a BackendService.
public protocol NetworkSession {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask
}

// MARK: - URLSession Conformance to NetworkSession

extension URLSession: NetworkSession {
    public func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask {
        return (dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTask) as NetworkSessionDataTask
    }
}
