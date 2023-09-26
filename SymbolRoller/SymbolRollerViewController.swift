//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 윤태웅 on 2023/09/25.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min","moon","cloud","wind","snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    // 메모리 올라가고, 화면 준비하고.
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
    }
    
    // 화면이 곧 보여진다.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // 화면이 보여진 이후.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func reload(){
        let symbol = symbols.randomElement()! // !는 값이 확실히 있다고 표시하는 것.
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
}
