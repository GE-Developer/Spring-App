//
//  AnimationData.swift
//  Spring App
//
//  Created by Mikhail Bukhrashvili on 28.04.2021.
//

class AnimationData {
    
    static let shared = AnimationData()
    
    let animationPresets = ["slideLeft", "slideRight", "slideDown",
                            "slideUp", "squeezeLeft", "squeezeRight",
                            "squeezeDown", "squeezeUp", "fadeIn",
                            "fadeOut", "fadeOutIn", "fadeInLeft",
                            "fadeInRight", "fadeInDown", "fadeInUp",
                            "zoomIn", "zoomOut", "fall",
                            "shake", "pop", "flipX",
                            "flipY", "morph", "squeeze",
                            "flash", "wobble", "swing"]
    
    let animationCurves = ["easeIn", "easeOut", "easeInOut",
                           "linear", "spring", "easeInSine",
                           "easeOutSine", "easeInOutSine", "easeInQuad",
                           "easeOutQuad", "easeInOutQuad", "easeInCubic",
                           "easeOutCubic", "easeInOutCubic", "easeInQuart",
                           "easeOutQuart", "easeInOutQuart", "easeInQuint",
                           "easeOutQuint", "easeInOutQuint", "easeInExpo",
                           "easeOutExpo", "easeInOutExpo", "easeInCirc",
                           "easeOutCirc", "easeInOutCirc", "easeInBack",
                           "easeOutBack", "easeInOutBack"]
    
    private init() {}
}
