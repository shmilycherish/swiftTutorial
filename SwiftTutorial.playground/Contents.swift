import Foundation
@objc protocol Speaker {
    func Speak()
    optional func TellJoke()
}



@objc class Vicki: Speaker {
    func Speak()
    {
        println("Hello, I am Vicki!")
    }
    func TellJoke() {
        println("Q: What did Sushi A say to Sushi B?")
    }
    
}

@objc class Ray: Speaker {
    func Speak() {
        println("Yo, I am Ray!")
    }
    
    func TellJoke() {
        println("Q: Whats the object-oriented way to become wealthy?")
    }
    func WriteTutorial() {
        println("I'm on it!")
    }
}

class Animal {
    
}

@objc class Dog: Animal, Speaker {
    func Speak() {
        println("woof!")
    }
}

var speaker:Speaker
speaker = Ray()
speaker.Speak()
(speaker as! Ray).WriteTutorial()
speaker = Vicki()
speaker.Speak()
speaker.TellJoke?()

speaker = Dog()
speaker.TellJoke?()



class DateSimulator {
    let a:Speaker
    let b:Speaker
    var delegate: DateSimulatorDelegate?
    
    init(a:Speaker, b:Speaker) {
        self.a = a
        self.b = b
    }
    
    func simulate() {
        delegate?.dataSimulatorDidStart(self, a: a, b: b)
        println("Off to dinner")
        a.Speak()
        b.Speak()
        println("Walking back home")
        a.TellJoke?()
        b.TellJoke?()
        delegate?.dataSimulatorDidEnd(self, a: a, b: b)
    }
}

protocol DateSimulatorDelegate {
    func dataSimulatorDidStart(sim:DateSimulator, a:Speaker, b:Speaker)
    func dataSimulatorDidEnd(sim:DateSimulator, a:Speaker, b:Speaker)
}

class LoggingDateSimulator:DateSimulatorDelegate {
    func dataSimulatorDidStart(sim: DateSimulator, a: Speaker, b: Speaker) {
        println("Date started")
    }
    
    func dataSimulatorDidEnd(sim: DateSimulator, a: Speaker, b: Speaker) {
        println("date ended!")
    }
}

let sim = DateSimulator(a:Vicki(), b:Ray())
sim.delegate = LoggingDateSimulator()
sim.simulate()


