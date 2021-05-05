//
//  DataBaseManager.swift
//  InstagranClone
//
//  Created by Cátia Souza on 04/05/21.
//

import FirebaseDatabase

public class DataBaseManager{
  static let shared = DataBaseManager()
    private let database = Database.database().reference()
    
    // MARK: - Public
    
    /// check if username and email is avaliable
    /// - Parameters
    ///  - email: String representing email
    ///  - usermame: String representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    /// Inserts new user data to database
    /// - Parameters
    ///  - email: String representing email
    ///  - usermame: String representing username
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        let key = email.safedatabaseKey()
        print (key)
        
        database.child(key).setValue(["username": username]) { error, _ in
            if error == nil {
                // success
                completion(true)
                return
            }else {
                //failed
                completion(false)
                return
            }
        }
    }
}


