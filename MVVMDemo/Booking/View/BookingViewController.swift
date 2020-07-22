//
//  BookingViewController.swift
//  MVVMDemo
//
//  Created by Ahmed M. Hassan on 7/22/20.
//  Copyright © 2020 Unicom. All rights reserved.
//

import UIKit

// MARK: - BookingViewController
class BookingViewController: UIViewController {
  
  // MARK: - Outlets
  
  
  // MARK: - Proeprties
  var token: ObservationToken?
  
  // MARK: - Init
  var viewModel: BookingViewModel
  
  required init(viewModel: BookingViewModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - ViewLifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureViewModel()
    // Do any additional setup after loading the view.
    
    token?.cancel()
  }
  
}

// MARK: - Configure View

extension BookingViewController {
  
  func configureViewModel() {
    token = viewModel.list.subscribe { list in
//      self?.reloadTableView()
      print(list)
    }
  }
}

// MARK: - IBActions

extension BookingViewController {
  
  
}

// MARK: - Handlers

extension BookingViewController {
  
  
}
