//
//  ViewController.swift
//  spring-button-demo
//
//  Created by Evgenii Neumerzhitckii on 16/08/2014.
//  Copyright (c) 2014 Evgenii Neumerzhitckii. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
                            
  @IBOutlet weak var button: UIButton!
  var bubbleSound: SystemSoundID!
  @IBOutlet weak var dampingLabel: UILabel!
  @IBOutlet weak var dampingStepper: UIStepper!

  @IBOutlet weak var velocityLabel: UILabel!
  @IBOutlet weak var velocityStepper: UIStepper!

  @IBOutlet weak var durationLabel: UILabel!
  @IBOutlet weak var durationStepper: UIStepper!

  let defaultDuration = 1.7
  let defaultDamping = 0.20
  let defaultVelocity = 2.4

  override func viewDidLoad() {
    super.viewDidLoad()

    setDefaults()
    bubbleSound = createBubbleSound()
    animateButton()
  }

  func setDefaults() {
    dampingLabel.text = ""

    durationStepper.value = defaultDuration
    onDurationChanged(durationStepper)

    dampingStepper.value = defaultDamping
    onDampingChanged(dampingStepper)

    velocityStepper.value = defaultVelocity
    onVelocityChanged(velocityStepper)
  }

  // ⬇︎⬇︎⬇︎ animation happens here ⬇︎⬇︎⬇︎
  func animateButton() {
    AudioServicesPlaySystemSound(bubbleSound)
    button.transform = CGAffineTransformMakeScale(0.1, 0.1)

    UIView.animateWithDuration(durationStepper.value,
      delay: 0,
      usingSpringWithDamping: CGFloat(dampingStepper.value),
      initialSpringVelocity: CGFloat(velocityStepper.value),
      options: UIViewAnimationOptions.AllowUserInteraction,
      animations: {
        self.button.transform = CGAffineTransformIdentity
      },
      completion: { finished in
        self.animateButton()
      }
    )
  }

  func createBubbleSound() -> SystemSoundID {
    var soundID: SystemSoundID = 0
    let soundURL = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "bubble", "mp3", nil)
    AudioServicesCreateSystemSoundID(soundURL, &soundID)
    return soundID
  }

  @IBAction func onVelocityChanged(sender: UIStepper) {
    velocityLabel.text =  formatValue(sender.value)
  }

  @IBAction func onDampingChanged(sender: UIStepper) {
    dampingLabel.text =  formatValue(sender.value)
  }
  
  @IBAction func onDurationChanged(sender: UIStepper) {
    durationLabel.text =  formatValue(sender.value)
  }

  func formatValue(value: Double) -> String {
    return String(format: "%.2f", value)
  }
}

