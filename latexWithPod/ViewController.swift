//
//  ViewController.swift
//  latexWithPod
//
//  Created by MAM OS 12 on 24/08/21.
//

import UIKit
import SVLatexView
import RxSwift
import RxCocoa
class ViewController: UIViewController {
    
    @IBOutlet weak var svView: SVLatexView!
//    lazy var latexView: SVLatexView = {
//        let v = SVLatexView(frame: CGRect.zero, using: SVLatexView.Engine.KaTeX, contentWidth: 200)
//        //v.backgroundColor = .
//
//        v.translatesAutoresizingMaskIntoConstraints = false
//        v.scrollView.isScrollEnabled = true
//        v.layer.borderWidth = 1
//        v.layer.borderColor = UIColor.gray.cgColor
//        v.customCSS = ".formula-wrap {line-height: 50px;}"
//        //v.isHidden = true
//        return v
//    }()
//
  
    override func viewDidLoad() {
        super.viewDidLoad()
        svView.clipsToBounds = true
        
        svView.translatesAutoresizingMaskIntoConstraints = false
        svView.scrollView.isScrollEnabled = true
        svView.layer.borderWidth = 1
        svView.layer.borderColor = UIColor.gray.cgColor
      //  svView.customCSS = ".formula-wrap {padding:10px;text-align: center;color:#14A68B; font-size:30px;}"
        svView.loadLatexString(latexString: "<html><body align='center'>$$ \\textnormal{Two thousand, two hundred and twenty two  =   ? } $$</body></html>")
    }

    
}

