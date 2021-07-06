// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class UsersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Users {
      users {
        __typename
        name
        email
        posts {
          __typename
          title
        }
      }
    }
    """

  public let operationName: String = "Users"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("users", type: .nonNull(.list(.nonNull(.object(User.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(users: [User]) {
      self.init(unsafeResultMap: ["__typename": "Query", "users": users.map { (value: User) -> ResultMap in value.resultMap }])
    }

    public var users: [User] {
      get {
        return (resultMap["users"] as! [ResultMap]).map { (value: ResultMap) -> User in User(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: User) -> ResultMap in value.resultMap }, forKey: "users")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("posts", type: .list(.nonNull(.object(Post.selections)))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String, email: String? = nil, posts: [Post]? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "name": name, "email": email, "posts": posts.flatMap { (value: [Post]) -> [ResultMap] in value.map { (value: Post) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var posts: [Post]? {
        get {
          return (resultMap["posts"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [Post] in value.map { (value: ResultMap) -> Post in Post(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Post]) -> [ResultMap] in value.map { (value: Post) -> ResultMap in value.resultMap } }, forKey: "posts")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Post"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(title: String) {
          self.init(unsafeResultMap: ["__typename": "Post", "title": title])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }
      }
    }
  }
}
