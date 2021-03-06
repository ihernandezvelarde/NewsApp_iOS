//
//  TimeLineViewController.swift
//  NewsApp_iOS
//
//  Created by Irene Hernández on 19/7/22.
//

import Foundation
import UIKit
class TimeLineViewController: UIViewController{

    @IBOutlet weak var firsNewLabel: UILabel!
    @IBOutlet weak var secondNewLabel: UILabel!
    @IBOutlet weak var thirdNewLabel: UILabel!
    @IBOutlet weak var forthNewLabel: UILabel!
    @IBOutlet weak var fiveNewLabel: UILabel!
    @IBOutlet weak var sixNewLabel: UILabel!
    
    
    @IBOutlet weak var firstNewImage: UIImageView!
    
    @IBOutlet weak var firstPartNextNewOneImage: UIImageView!
    @IBOutlet weak var secondPartNextNewTwoImage: UIImageView!
    
    @IBOutlet weak var secondNewImage: UIImageView!
    
    @IBOutlet weak var firstPartNextNewThreeImage: UIImageView!
    @IBOutlet weak var secondPartNextNewFourImage: UIImageView!
    
    @IBOutlet weak var thirdNewImage: UIImageView!
    
    @IBOutlet weak var firstPartNextNewFiveImage: UIImageView!
    @IBOutlet weak var secondPartNextNewSixImage: UIImageView!
    
    @IBOutlet weak var fourthNewImage: UIImageView!
    
    @IBOutlet weak var firstPartNextNewSevenImage: UIImageView!
    @IBOutlet weak var secondPartNextNewEigthImage: UIImageView!
    
    @IBOutlet weak var fiveNewImage: UIImageView!
    
    @IBOutlet weak var firstPartNextNewNineImage: UIImageView!
    @IBOutlet weak var secondPartNextNewTenImage: UIImageView!
    
    @IBOutlet weak var sixNewImage: UIImageView!
    
    var timer : Timer?
    var prueba = "10:0:0"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNewImage.image = UIImage(named: "radio-button")
        secondNewImage.image = UIImage(named: "radio-button")
        thirdNewImage.image = UIImage(named: "radio-button")
        fourthNewImage.image = UIImage(named: "radio-button")
        fiveNewImage.image = UIImage(named: "radio-button")
        sixNewImage.image = UIImage(named: "radio-button")
        
        firstPartNextNewOneImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        firstPartNextNewOneImage.tintColor = .black
        
        secondPartNextNewTwoImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        secondPartNextNewTwoImage.tintColor = .black
        
        firstPartNextNewThreeImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        firstPartNextNewThreeImage.tintColor = .black
        
        secondPartNextNewFourImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        secondPartNextNewFourImage.tintColor = .black

        firstPartNextNewFiveImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        firstPartNextNewFiveImage.tintColor = .black

        secondPartNextNewSixImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        secondPartNextNewSixImage.tintColor = .black

        firstPartNextNewSevenImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        firstPartNextNewSevenImage.tintColor = .black

        secondPartNextNewEigthImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        secondPartNextNewEigthImage.tintColor = .black

        firstPartNextNewNineImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        firstPartNextNewNineImage.tintColor = .black

        secondPartNextNewTenImage.image = UIImage(named: "line")?.withRenderingMode(.alwaysTemplate);
        secondPartNextNewTenImage.tintColor = .black

        
        firsNewLabel.text = "8:00 - Esta es la primera noticia. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        secondNewLabel.text = "9:00 - Esta es la segunda noticia. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        thirdNewLabel.text = "9:15 - Esta es la tercera noticia. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        forthNewLabel.text = "9:45 - Esta es la cuarta noticia. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        fiveNewLabel.text = "10:30 - Esta es la quinta noticia. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        sixNewLabel.text = "12:00 - Esta es la sexta noticia. Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(checkTime), userInfo: nil, repeats: true)
    }
    @objc func checkTime(){
        
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
    
        let hours = ("\(hour):\(minutes):\(seconds)")
        
        let hourEightAM = "8:0:0"
        let hourEightTwentyFive = "8:25:00"
        let hourEightFourtyFive = "8:45:00"
        let hourNineAM = "9:00:00"
        let hourNineFive = "9:05:00"
        let hourNineTen = "9:10:00"
        let hourNineFifteen = "9:15:00"
        let hourNineTwentyFive = "9:25:00"
        let hourNineThirtyFive = "9:35:00"
        let hourNineFourtyFive = "9:45:00"
        let hourTen = "10:00:00"
        let hourTenFifteen = "10:15:00"
        let hourTenThirty = "10:30:00"
        let hourEleven = "11:00:00"
        let hourElevenThirty = "11:30:00"
        let hourTwelve = "12:00:00"
        
        if hours.compare(hourEightAM, options: .numeric) == .orderedDescending {
            firstNewImage.image = UIImage(named: "radio-on-button-red")
            firstNewImage.tintColor = .red
        }
        if hours.compare(hourEightTwentyFive, options: .numeric) == .orderedDescending {
            firstPartNextNewOneImage.tintColor = .red
        }
        if hours.compare(hourEightFourtyFive, options: .numeric) == .orderedDescending {
            secondPartNextNewTwoImage.tintColor = .red
        }
        if hours.compare(hourNineAM, options: .numeric) == .orderedDescending {
            secondNewImage.image = UIImage(named: "radio-on-button-red")
            secondNewImage.tintColor = .red
        }
        if hours.compare(hourNineFive, options: .numeric) == .orderedDescending {
            firstPartNextNewThreeImage.tintColor = .red
        }
        if hours.compare(hourNineTen, options: .numeric) == .orderedDescending {
            secondPartNextNewFourImage.tintColor = .red
        }
        if hours.compare(hourNineFifteen, options: .numeric) == .orderedDescending {
            thirdNewImage.image = UIImage(named: "radio-on-button-red")
            thirdNewImage.tintColor = .red
        }
        if hours.compare(hourNineTwentyFive, options: .numeric) == .orderedDescending {
            firstPartNextNewFiveImage.tintColor = .red
        }
        if hours.compare(hourNineThirtyFive, options: .numeric) == .orderedDescending {
            secondPartNextNewSixImage.tintColor = .red
        }
        if hours.compare(hourNineFourtyFive, options: .numeric) == .orderedDescending {
            fourthNewImage.image = UIImage(named: "radio-on-button-red")
            fourthNewImage.tintColor = .red
        }
        if hours.compare(hourTen, options: .numeric) == .orderedDescending {
            firstPartNextNewSevenImage.tintColor = .red
        }
        if hours.compare(hourTenFifteen, options: .numeric) == .orderedDescending {
            secondPartNextNewEigthImage.tintColor = .red
        }
        if hours.compare(hourTenThirty, options: .numeric) == .orderedDescending {
            fiveNewImage.image = UIImage(named: "radio-on-button-red")
            fiveNewImage.tintColor = .red
        }
        if hours.compare(hourEleven, options: .numeric) == .orderedDescending {
            firstPartNextNewNineImage.tintColor = UIColor.red
        }
        if hours.compare(hourElevenThirty, options: .numeric) == .orderedDescending {
            secondPartNextNewTenImage.tintColor = UIColor.red
        }
        if hours.compare(hourTwelve, options: .numeric) == .orderedDescending {
            sixNewImage.image = UIImage(named: "radio-on-button-red")
        }
    }
}

