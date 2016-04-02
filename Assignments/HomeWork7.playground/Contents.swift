//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true


func connectToGoogle () {
    let urlGoogle = NSURL (string: "http://www.google.com")!

let sessionManager = NSURLSession.sharedSession()

let task = sessionManager.dataTaskWithURL(urlGoogle) { (data, response, error) -> Void in
    let str = String(data: data!, encoding: NSASCIIStringEncoding)
    
    print(str)
}
task.resume()
    
}

print("\(connectToGoogle())")


func connectToGA () {
    let urlGA = NSURL (string: "http://generalassemb.ly/foobar.baz")!
    
    let sessionManager = NSURLSession.sharedSession()
    
    let task = sessionManager.dataTaskWithURL(urlGA) { (data, response, error) -> Void in
        let str = String(data: data!, encoding: NSASCIIStringEncoding)
        
        print(str)
    }
    task.resume()
    
}

print("\(connectToGA())")


let weatherURL2 = "http://api.openweathermap.org/data/2.5/weather?q=New%20York&units=imperial&APPID=ddf2b16294f8884204a373331e615187"

if let url = NSURL(string: weatherURL2) {
    let urlSession = NSURLSession.sharedSession()
    let task = urlSession.dataTaskWithURL(url) { (data, response, error) -> Void in
        if let error = error {
            print("error: \(error.localizedDescription)")
        }
        
        if let response = response as? NSHTTPURLResponse {
            print(response.statusCode)
        }
        
        if let data = data {
            do {
                let jsonDict = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions())
                
                let main = jsonDict.valueForKey("main") as? NSDictionary
                let wind = jsonDict.valueForKey("wind") as? NSDictionary
                let temp = main?.valueForKey("temp") as? Float
                let humidity = main?.valueForKey("humidity") as? Int
                let speed = wind?.valueForKey("speed") as? Float
                let temperature:Int = Int(temp!)
                let humidityNy:Double = Double(humidity!)
                let windSpeed:Float = speed!
                
                if let temperatureNy:Int = temperature {
                    print("Current Weather in New York is: \(temperatureNy) degrees! Humidity: \(humidityNy)% Wind Speed: \(windSpeed) m/hr")
                    
                }
                
            } catch {
                print("invalid json")
            }
            
        } else {
            print("could not get data back")
        }
    }
    task.resume()
} else {
    print("not a valid url")
}


