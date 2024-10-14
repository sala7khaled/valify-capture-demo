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
    
    
    // MARK: - Actions
    @IBAction func cameraButtonClicked(_ sender: Any) {
        let captureController = CaptureController(delegate: self)
        navigationController?.pushViewController(captureController, animated: true)
    }
    
}


// MARK: - Extensions
extension LandingController: ValifyCaptureRouter {
    func didCaptureSelfie(_ data: Data) {
        let vc = SelfieController(selfieData: data)
        navigationController?.pushViewController(vc, animated: true)
    }
}
