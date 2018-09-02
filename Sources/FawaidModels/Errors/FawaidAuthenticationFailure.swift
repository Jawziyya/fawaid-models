//
//  FawaidAuthenticationFailure.swift
//  FawaidModels
//
//  Created by Abdurahim Jauzee on 28/01/2018.
//

import Foundation

public enum FawaidAuthenticationFailure: Error {
  case invalidCredentials
  case usernameTaken
}
