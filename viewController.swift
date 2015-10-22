
import UIKit
import CoreLocation

class ViewController: UIViewController  {

    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        locationManager.requestWhenInUseAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
    
    
    }
    
    

}

extension ViewController: CLLocationManagerDelegate {

    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        
        
        //Something went wrong...
    }

    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let newLocations = locations.last
        
        
        if let newLocations = newLocations {
        print(newLocations)
        locationManager.stopUpdatingLocation()
            
        
        
        }
        
        
        
    }
    
    
}
