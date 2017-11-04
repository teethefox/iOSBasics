//

//  ViewController.swift

//  Twerk

//

//  Created by Anastasia Lavrikova on 11/2/17.

//  Copyright © 2017 Anastasia Lavrikova. All rights reserved.


//



import UIKit
import AVFoundation
import CoreMotion

class ViewController: UIViewController {
    var stop: Bool = false;
    var bombSoundEffect: AVAudioPlayer?


    var motionManager: CMMotionManager?
    
    
    
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var button: UIButton!

    

    @IBAction func stopit(_ sender: UIButton) {

        if stop == false{
        stop = true
        bombSoundEffect?.stop()
        } else {
            stop = false
            
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
//        made an instance of CMMotionManager
        
        
        
                motionManager = CMMotionManager()
        var motion = motionManager
        var bombSoundEffect: AVAudioPlayer?

                if let manager = motionManager {
        
                    print("We have a motion manager")
        
                    if manager.isDeviceMotionAvailable {
        
                        //make sure we have the hardware that we need  -- need to be hooked up to a device to have the necessary hardware
        
                        print("We can detect device motion")
        
        
                        //
                        
                    
                }
        
                else {
        
                    print("We do not have a motion manager")
        
                }
        
            }
    
    
    
            func degrees(radians: Double) -> Double {
        
                return 180/Double.pi*radians
        
            }
                    }
    
    
    
    
                    
    
  
    
    override func viewDidAppear(_ animated: Bool) {
        button.backgroundColor = UIColor.black

        motionManager?.accelerometerUpdateInterval = 0.3
        var score : Int = 0
        
        let path = Bundle.main.path(forResource: "Beyonce.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            
            bombSoundEffect = try AVAudioPlayer(contentsOf: url)
            bombSoundEffect?.play()
            print("playing")
        } catch {
            // couldn't load file :(
            print("cant play")
        }
        
        
        motionManager?.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            
            if let myData = data {
                
                print(myData)
                
                if myData.acceleration.x > 0.1||myData.acceleration.y > 0.1||myData.acceleration.z > 0 {

                    //                print(myData)
                    score += 5
                    self.counter.text = String(score)
                    self.button.backgroundColor = UIColor.red

                }
                      if myData.acceleration.x > 0.4||myData.acceleration.y > 0.4
                        || myData.acceleration.z > 0.2 {
                        score += 10
                        self.counter.text = String(score)
                    self.button.backgroundColor = UIColor.yellow

                }
                if myData.acceleration.x > 1||myData.acceleration.y > 1 || myData.acceleration.z > 1 {
                    score += 25
                    self.counter.text = String(score)
                    self.button.backgroundColor = UIColor.green

                } else if myData.acceleration.x < 0 && myData.acceleration.y < 0 && myData.acceleration.z < 0{
                    score -= 5
                    self.counter.text = String(score)
                    self.button.backgroundColor = UIColor.black

                }
                
                if self.stop == true{
                    self.motionManager?.stopAccelerometerUpdates()
                    
                }
                
            }
            
            
          
        }
        
        
    
    }
}





