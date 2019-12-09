//
//  ViewController.swift
//  ARC
//
//  Created by Alex Paul on 12/9/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class Fellow {
    var name: String
    var cohort: Double
    
    init(name: String, cohort: Double) {
        self.name = name
        self.cohort = cohort
        print("\(name) \(cohort) created")
    }
    deinit {
        print("\(name) \(cohort) destroyed")
    }
}

class ViewController: UIViewController {
    
    var fellow: Fellow?
    var fellow1: Fellow?
    
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewDidLoad")
    fellow = Fellow(name: "tsering", cohort: 6.3)
    fellow1 = fellow
    
    fellow = nil
    fellow1 = nil
    
    configurePersonApartment()
    
    configureLabController()
  }
  
  func configurePersonApartment() {
    var alex: Person?
    var apartment: Apartment?
    
    alex = Person(name: "Alex")
    apartment = Apartment(unit: "Apt 6B")
    
    alex?.apartment = apartment
    apartment?.tenant = alex
    
    alex = nil
    apartment = nil
  }
  
  func configureLabController() {
    let lab = Lab(name: "Concurrency", unit: "Unit 3")
    var labViewController: LabViewController?
    labViewController = LabViewController()
    print(labViewController?.markComplete(lab: lab) ?? "")
    
    labViewController = nil
  }
}

