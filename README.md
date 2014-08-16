# Overview

A demo iOS app showning how to animate button and play sound.

Animation is done by setting `Scale` transform to the button inside animation block. This demo app allows to tweak `duration`, `damping` and `velocity` parameters of the animation function. 

    button.transform = CGAffineTransformMakeScale(0.1, 0.1)
    
    UIView.animateWithDuration(2.0,
      delay: 0,
      usingSpringWithDamping: 0.3,
      initialSpringVelocity: 1.9,
      options: UIViewAnimationOptions.AllowUserInteraction,
      animations: {
        self.button.transform = CGAffineTransformMakeScale(1, 1)
      }, completion: {})

<img src='https://raw.githubusercontent.com/evgenyneu/bubble-button-animation-ios-swift/master/images/animation.gif' width='144' alt='Button animation iOS'>

<img src='https://raw.githubusercontent.com/evgenyneu/bubble-button-animation-ios-swift/master/images/screenshot.png' width='320' alt='iOS animate button demo with Swift'>


## Credit

The bubble sound clip taken from [soundbible.com](http://soundbible.com/1345-Large-Bubble.html) and recorded by **snottyboy**.
