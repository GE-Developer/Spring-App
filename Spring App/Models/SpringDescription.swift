//
//  SpringDescription.swift
//  Spring App
//
//  Created by Mikhail Bukhrashvili on 28.04.2021.
//

struct SpringDescription {
    
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var textInLabel: String {
        """
        Preset: \(preset)
        Curve: \(curve)
        Force: \(String(format: "%.2f", force))
        Duration: \(String(format: "%.2f", duration))
        Delay: \(String(format: "%.2f", delay))
        """
    }
    
}


extension SpringDescription {
    
    static func getDescription() -> SpringDescription {
        SpringDescription(
            preset: AnimationData.shared.animationPresets.randomElement() ?? "slideUp",
            curve: AnimationData.shared.animationCurves.randomElement() ?? "easeIn",
            force: Float.random(in: 0...1),
            duration: Float.random(in: 1...1.5),
            delay: Float.random(in: 0...0.5))
    }
    
}
