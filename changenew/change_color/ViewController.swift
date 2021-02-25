//
//  ViewController.swift
//  change_color
//
//  Created by Onion on 2021/1/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redlable.text = ""
        greenlable.text = ""
        bluelable.text = ""
        alohalable.text = ""
    }

    
    @IBOutlet weak var logoimage: UIImageView!
    @IBOutlet weak var newimage: UIImageView!
    @IBOutlet weak var redslider: UISlider!
    @IBOutlet weak var greenslider: UISlider!
    @IBOutlet weak var blueslider: UISlider!
    @IBOutlet weak var alphaslider: UISlider!
    
    @IBOutlet weak var redlable: UILabel!
    @IBOutlet weak var greenlable: UILabel!
    @IBOutlet weak var bluelable: UILabel!
    @IBOutlet weak var alohalable: UILabel!
    
//全部slider拉到這裡
    @IBAction func changecolor(_ sender: UISlider) {
        
        newimage.backgroundColor = UIColor(red:CGFloat(redslider.value),green: CGFloat(greenslider.value),blue: CGFloat(blueslider.value),alpha: CGFloat(alphaslider.value))
        
//        lable顯示數值
        redlable.text = String(format: "%.2f",(redslider.value) )
        greenlable.text = String(format: "%.2f",(greenslider.value) )
        bluelable.text = String(format: "%.2f",(blueslider.value) )
        alohalable.text = String(format: "%.2f",(alphaslider.value) )

    }
    
    
    @IBAction func radom(_ sender: UIButton) {
        redslider.value = Float.random(in: 0...1)
        greenslider.value = Float.random(in: 0...1)
        blueslider.value = Float.random(in: 0...1)
        alphaslider.value = Float.random(in: 0...1)
        
        newimage.backgroundColor = UIColor(red:CGFloat(redslider.value),green: CGFloat(greenslider.value),blue: CGFloat(blueslider.value),alpha: CGFloat(alphaslider.value))
        
    
        //        lable顯示數值
        redlable.text = String(format: "%.2f",(redslider.value) )
        greenlable.text = String(format: "%.2f",(greenslider.value) )
        bluelable.text = String(format: "%.2f",(blueslider.value) )
        alohalable.text = String(format: "%.2f",(alphaslider.value) )

    }
    
    
    @IBAction func changimage(_ sender: UISwitch) {
        if sender.isOn {
            logoimage.image = UIImage(named: "150")
        }else{
            logoimage.image = UIImage(named: "image")
        }
    }
    
    
}
        
    
    



