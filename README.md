# Overview

A demo iOS app showning how to animate button and play sound.

Animation is done by setting `Scale` transform to the button inside animation block. 

    button.transform = CGAffineTransformMakeScale(0.1, 0.1)
    
    UIView.animateWithDuration(durationStepper.value,
      delay: 0,
      usingSpringWithDamping: CGFloat(dampingStepper.value),
      initialSpringVelocity: CGFloat(velocityStepper.value),
      options: UIViewAnimationOptions.AllowUserInteraction,
      animations: {
        self.button.transform = CGAffineTransformMakeScale(1, 1)
      }, completion: {})

<img src='https://raw.githubusercontent.com/evgenyneu/bubble-button-animation-ios-swift/master/images/animation.gif' width='288' alt='Button animation iOS'>

<img src='https://raw.githubusercontent.com/evgenyneu/bubble-button-animation-ios-swift/master/images/screenshot.png' width='320' alt='iOS animate button demo with Swift'>


