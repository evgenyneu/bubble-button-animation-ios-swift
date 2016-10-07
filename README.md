# Bubble button animation demo iOS app

This demo app shows how to apply spring style animation to a button.

Animation is done by setting `Scale` transform to the button inside animation block. This demo app allows to tweak `duration`, `damping` and `velocity` parameters of the animation function.

    button.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)

    UIView.animate(withDuration: 2.0,
      delay: 0,
      usingSpringWithDamping: 0.2,
      initialSpringVelocity: 6.0,
      options: .allowUserInteraction,
      animations: { [weak self] in
        self?.button.transform = .identity
      },
      completion: nil)

<img src='https://raw.githubusercontent.com/evgenyneu/bubble-button-animation-ios-swift/master/images/animation.gif' width='144' alt='Button animation iOS'>

<img src='https://raw.githubusercontent.com/evgenyneu/bubble-button-animation-ios-swift/master/images/screenshot.png' width='320' alt='iOS animate button demo with Swift'>

## Credit

The **Large Bubble Sound** clip is taken from [soundbible.com](http://soundbible.com/1345-Large-Bubble.html) and recorded by **snottyboy**.
