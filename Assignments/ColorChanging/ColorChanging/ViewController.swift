//
//  ViewController.swift
//  ColorChanging
//
//  Created by Francisco Arellanos on 10/5/15.
//  Copyright © 2015 Francisco Arellanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var colorView: UIView!
    
    var hue : Float = 0.5
    var brightness : Float = 0.5
    var saturation : Float = 0.5
    
    var newHue : Float = 0.5
    var newBrightness : Float = 0.5
    var newSaturation : Float = 0.5
    
    @IBOutlet weak var defaultColor: UIView!

    
    
    @IBAction func onHueChange(sender: UISlider) {
        self.hue = sender.value
        self.updateColor()
    }
    
    @IBAction func onBrightnessChange(sender: UISlider) {
        self.brightness = sender.value
        self.updateColor()
    }
    
    @IBAction func onSaturationChange(sender: UISlider) {
        self.saturation = sender.value
        self.updateColor()
    }
    
    func updateColor() ->UIColor {
    let newColor = UIColor(
        hue: CGFloat(self.hue),
        saturation: CGFloat(self.saturation),
        brightness: CGFloat(self.brightness),
        alpha: 1.0
        )
        self.colorView.backgroundColor = newColor
        return newColor

    }
    
    
    
    
    @IBAction func onMixColorChange(sender: UIButton) {
        self.hue = (self.hue + self.newHue) / 2.0
        self.saturation = (self.saturation + newSaturation) / 2.0
        self.brightness = (self.brightness / newBrightness) / 2.0
        self.updateColor()
//        self.updateSliders()

    }
    
    @IBAction func onOverlayColorChange(sender: UIButton) {
        self.newHue = self.hue
        self.newSaturation = self.saturation
        self.newBrightness = self.brightness
        
        self.updateColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.updateColor()
        
        self.colorView.backgroundColor = UIColor.redColor()
        self.defaultColor.backgroundColor = UIColor.greenColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

