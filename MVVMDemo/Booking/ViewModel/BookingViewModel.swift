//
//  BookingViewModel.swift
//  MVVMDemo
//
//  Created by Ahmed M. Hassan on 7/22/20.
//  Copyright © 2020 Unicom. All rights reserved.
//

import Foundation

// MARK: - BookingViewModel
class BookingViewModel: NSObject {
  
  // MARK: - Proeprties
  
  private(set) var list = Variable<[String]>([])
  
  private(set) var secondList = PublishSubject<[String]>()
  
  // MARK: - Init
  
  
  // MARK: - Handlers
  
  func loadData() {
    let newList = ["Ahmed", "Ashraf"]
    list.send(newList)
  }
  
}
