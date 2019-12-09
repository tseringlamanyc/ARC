//
//  LabViewController.swift
//  ARC
//
//  Created by Alex Paul on 12/9/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class LabViewController: UIViewController {
  var labs = Array(repeating: Lab(name: "Recursion Lab", unit: "Unit 4"), count: 25)
  
  // requiring self in closure is a way for swift to reminds that capturing self is a strong reference and canlead to memory leak
  // [unowned self] vs [weak self]
  // weak self used when the object reference could be nil
  // owned self used when both object would be dellocated at the same time
    
  lazy var complete: (Lab) -> (String) = { [weak self] lab in
    self?.labs.append(lab)
    return "Great job \(self?.labs.count ?? 0) labs complete."
  }
  
  func markComplete(lab: Lab) -> String {
    return complete(lab)
  }
}
