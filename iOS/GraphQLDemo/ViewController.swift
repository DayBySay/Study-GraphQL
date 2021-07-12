//
//  ViewController.swift
//  GraphQLDemo
//
//  Created by Takayuki Sei on 2021/07/06.
//

import UIKit
import Apollo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Network.shared.apollo.fetch(query: UsersWithoutEmailQuery()) { result in
          switch result {
          case .success(let graphQLResult):
            print("Success! Result: \(graphQLResult)")
          case .failure(let error):
            print("Failure! Error: \(error)")
          }
        }
    }
}

class Network {
  static let shared = Network()
    
  private(set) lazy var apollo = ApolloClient(url: URL(string: "http://localhost:4200/graphql")!)
}
