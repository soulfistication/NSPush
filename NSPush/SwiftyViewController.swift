//
//  SwiftyViewController.swift
//  NSPush
//
//  Created by Ivan IvanDavidAlmadaPerez on 10/1/19.
//  Copyright © 2019 Ivan IvanDavidAlmadaPerez. All rights reserved.
//

import UIKit

class SwiftyViewController: UIViewController {

  // MARK: - UIViewController

  override func viewDidLoad() {
    super.viewDidLoad()

    let notification = LSPushModel()
    let notificationDictionary = notification.pushDictionary() as [AnyHashable: Any]

    let array = notificationDictionary["push"] as! [[AnyHashable: [AnyHashable: Any]]]
    let first = array.first!
    let data = first["data"]!
    let title = data[0]

    print(title)
  }
}
