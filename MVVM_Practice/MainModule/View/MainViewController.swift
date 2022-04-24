//
//  ViewController.swift
//  MVVM_Practice
//
//  Created by Ольга Горбачева on 23.04.22.
//

import UIKit

class MainViewController: UIViewController {
    private var viewModel: MainViewModelProtocol!
    private var testView: TestView!
    
    override func viewDidLoad() {
        
        viewModel = MainViewModel()
        super.viewDidLoad()
        
        createView()
        updateView()
    
    }
    
    private func createView() {
        testView = TestView()
        testView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        testView.center = view.center
        view.addSubview(testView)
    }
    
    private func updateView() {
        viewModel.updateViewData = { [weak self] ViewData in
            self?.testView.viewData = ViewData
        }
    }
    
    @IBAction func startAction(_ sender: Any) {
        viewModel.startFetch()
        
    }
    
    @IBAction func errorAction(_ sender: Any) {
        viewModel.error() 
    }
}


