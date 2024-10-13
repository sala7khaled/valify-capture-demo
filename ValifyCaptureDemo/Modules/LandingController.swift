//
//  LandingController.swift
//  ValifyCaptureDemo
//
//  Created by Salah Khaled on 13/10/2024.
//

import UIKit
import ValifyCaptureKit

class LandingController: UIViewController {

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Action
    @IBAction func cameraButtonClicked(_ sender: Any) {
        let captureController = CaptureController()
        navigationController?.pushViewController(captureController, animated: true)
    }
    
}
