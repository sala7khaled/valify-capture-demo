//
//  SelfieController.swift
//  ValifyCaptureDemo
//
//  Created by Salah Khaled on 13/10/2024.
//

import UIKit

class SelfieController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var selfieImage: UIImageView!
    
    // MARK: - Properties
    let selfieData: Data
    
    // MARK: - Init
    init(selfieData: Data!) {
        self.selfieData = selfieData
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSelfieImage()
    }
    
    func setupSelfieImage() {
        selfieImage.layer.cornerRadius = 12
        selfieImage.image = UIImage(data: selfieData)
    }
    
    
    // MARK: - Actions
    @IBAction func retakeButtonClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
