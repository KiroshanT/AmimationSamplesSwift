//
//  Animation.swift
//  AmimationSamples
//
//  Created by Kiroshan Thayaparan on 6/25/22.
//

import UIKit

extension UIView {
    
    func dropFromTop(parentView: UIView, repeatAnimation: String?) {
        let offset = CGPoint(x: 0, y: -parentView.frame.maxY)
        let x: CGFloat = 0, y: CGFloat = 0
        self.transform = CGAffineTransform(translationX: offset.x + x, y: offset.y + y)
        self.isHidden = false
        UIView.animate(
            withDuration: 1, delay: 1, usingSpringWithDamping: 0.47, initialSpringVelocity: 3,
            options: .curveEaseOut, animations: {
                self.transform = .identity
                self.alpha = 1
            }, completion: {_ in
                if repeatAnimation == "dropFromTop" {
                    self.dropFromTop(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "comingFromLeft" {
                    self.comingFromLeft(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "popIn" {
                    self.popIn(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "popOut" {
                    self.popOut(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "cardFlip" {
                    self.cardFlip(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "cardFlipRotate" {
                    self.cardFlipRotate(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "fadeOut" {
                    self.fadeOut(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "fadeIn" {
                    self.fadeIn(parentView: parentView, repeatAnimation: nil)
                }
            })
    }
    
    func comingFromLeft(parentView: UIView, repeatAnimation: String?) {
        let offset = CGPoint(x: -parentView.frame.maxX, y: 0)
        let x: CGFloat = 0, y: CGFloat = 0
        self.transform = CGAffineTransform(translationX: offset.x + x, y: offset.y + y)
        self.isHidden = false
        UIView.animate(
            withDuration: 1, delay: 1, usingSpringWithDamping: 0.47, initialSpringVelocity: 3,
            options: .curveEaseOut, animations: {
                self.transform = .identity
                self.alpha = 1
            }, completion: {_ in
                if repeatAnimation == "dropFromTop" {
                    self.dropFromTop(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "comingFromLeft" {
                    self.comingFromLeft(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "popIn" {
                    self.popIn(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "popOut" {
                    self.popOut(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "cardFlip" {
                    self.cardFlip(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "cardFlipRotate" {
                    self.cardFlipRotate(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "fadeOut" {
                    self.fadeOut(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "fadeIn" {
                    self.fadeIn(parentView: parentView, repeatAnimation: nil)
                }
            })
    }
    
    func popIn(parentView: UIView?, repeatAnimation: String?) {
        self.alpha = 0
        self.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.isHidden = false
        UIView.animate(
            withDuration: 0.5, delay: 1, usingSpringWithDamping: 0.55, initialSpringVelocity: 3,
            options: .curveEaseOut, animations: {
                self.transform = .identity
                self.alpha = 1
            }, completion: {_ in
                if repeatAnimation == "dropFromTop" {
                    self.dropFromTop(parentView: parentView ?? self, repeatAnimation: nil)
                } else if repeatAnimation == "comingFromLeft" {
                    self.comingFromLeft(parentView: parentView ?? self, repeatAnimation: nil)
                } else if repeatAnimation == "popIn" {
                    self.popIn(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "popOut" {
                    self.popOut(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "cardFlip" {
                    self.cardFlip(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "cardFlipRotate" {
                    self.cardFlipRotate(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "fadeOut" {
                    self.fadeOut(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "fadeIn" {
                    self.fadeIn(parentView: parentView, repeatAnimation: nil)
                }
            })
    }
    
    func popOut(parentView: UIView?, repeatAnimation: String?) {
        UIView.animate(
            withDuration: 0.5, delay: 1, usingSpringWithDamping: 0.55, initialSpringVelocity: 3,
            options: .curveEaseOut, animations: {
                self.alpha = 0
                self.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                self.isHidden = false
            }, completion: {_ in
                if repeatAnimation == "dropFromTop" {
                    self.dropFromTop(parentView: parentView ?? self, repeatAnimation: nil)
                } else if repeatAnimation == "comingFromLeft" {
                    self.comingFromLeft(parentView: parentView ?? self, repeatAnimation: nil)
                } else if repeatAnimation == "popIn" {
                    self.popIn(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "popOut" {
                    self.popOut(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "cardFlip" {
                    self.cardFlip(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "cardFlipRotate" {
                    self.cardFlipRotate(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "fadeOut" {
                    self.fadeOut(parentView: parentView, repeatAnimation: nil)
                } else if repeatAnimation == "fadeIn" {
                    self.fadeIn(parentView: parentView, repeatAnimation: nil)
                }
            })
    }
    
    func cardFlip(parentView: UIView?, repeatAnimation: String?) {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.isHidden = false
        }, completion: {_ in
            if repeatAnimation == "dropFromTop" {
                self.dropFromTop(parentView: parentView ?? self, repeatAnimation: nil)
            } else if repeatAnimation == "comingFromLeft" {
                self.comingFromLeft(parentView: parentView ?? self, repeatAnimation: nil)
            } else if repeatAnimation == "popIn" {
                self.popIn(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "popOut" {
                self.popOut(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "cardFlip" {
                self.cardFlip(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "cardFlipRotate" {
                self.cardFlipRotate(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "fadeOut" {
                self.fadeOut(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "fadeIn" {
                self.fadeIn(parentView: parentView, repeatAnimation: nil)
            }
        })
    }
    
    func cardFlipRotate(parentView: UIView?, repeatAnimation: String?) {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform(scaleX: -1, y: 1)
            self.isHidden = false
        }, completion: {_ in
            if repeatAnimation == "dropFromTop" {
                self.dropFromTop(parentView: parentView ?? self, repeatAnimation: nil)
            } else if repeatAnimation == "comingFromLeft" {
                self.comingFromLeft(parentView: parentView ?? self, repeatAnimation: nil)
            } else if repeatAnimation == "popIn" {
                self.popIn(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "popOut" {
                self.popOut(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "cardFlip" {
                self.cardFlip(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "cardFlipRotate" {
                self.cardFlipRotate(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "fadeOut" {
                self.fadeOut(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "fadeIn" {
                self.fadeIn(parentView: parentView, repeatAnimation: nil)
            }
        })
    }
    
    func fadeOut(parentView: UIView?, repeatAnimation: String?) {
        self.alpha = 1
        UIView.animate(withDuration: 0.5, delay: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.isHidden = false
            self.alpha = 0.0
        }, completion: {_ in
            if repeatAnimation == "dropFromTop" {
                self.dropFromTop(parentView: parentView ?? self, repeatAnimation: nil)
            } else if repeatAnimation == "comingFromLeft" {
                self.comingFromLeft(parentView: parentView ?? self, repeatAnimation: nil)
            } else if repeatAnimation == "popIn" {
                self.popIn(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "popOut" {
                self.popOut(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "cardFlip" {
                self.cardFlip(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "cardFlipRotate" {
                self.cardFlipRotate(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "fadeOut" {
                self.fadeOut(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "fadeIn" {
                self.fadeIn(parentView: parentView, repeatAnimation: nil)
            }
        })
    }
    
    func fadeIn(parentView: UIView?, repeatAnimation: String?) {
        self.alpha = 0.0
        UIView.animate(withDuration: 0.5, delay: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
            self.isHidden = false
            self.alpha = 1
        }, completion: {_ in
            if repeatAnimation == "dropFromTop" {
                self.dropFromTop(parentView: parentView ?? self, repeatAnimation: nil)
            } else if repeatAnimation == "comingFromLeft" {
                self.comingFromLeft(parentView: parentView ?? self, repeatAnimation: nil)
            } else if repeatAnimation == "popIn" {
                self.popIn(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "popOut" {
                self.popOut(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "cardFlip" {
                self.cardFlip(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "cardFlipRotate" {
                self.cardFlipRotate(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "fadeOut" {
                self.fadeOut(parentView: parentView, repeatAnimation: nil)
            } else if repeatAnimation == "fadeIn" {
                self.fadeIn(parentView: parentView, repeatAnimation: nil)
            }
        })
    }
}
