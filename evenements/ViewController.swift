//
//  ViewController.swift
//  evenements
//
//  Created by user188225 on 3/23/21.
// commit
//

import UIKit
import DateScrollPicker

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var DateScrollPicker: DateScrollPicker!
    
    var imageArray = [UIImage(named: "apple-512"), UIImage(named: "apple-512"), UIImage(named: "apple-512"), UIImage(named: "apple-512")]
    var titleArray = ["KOD Tour", "4YEO", "Sideline", "2014 FHD"]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCollectionViewCell", for: indexPath) as! EventsCollectionViewCell

        cell.img.image = imageArray[indexPath.row]
        
        cell.title.text = titleArray[indexPath.row]
        
        return cell
    }

    	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "home"
        
        var format = DateScrollPickerFormat()
        format.days = 6
        format.topDateFormat = "EEE"
        format.topFont = UIFont.systemFont(ofSize: 10, weight: .regular)
    }
    
    
    // Example data structure
    var scheduleList:[Schedule]!
    
    func viewDidAppear() {
        ScheduleService().fetchAll(){ [weak self](schedules:[Schedule]) in
           // return to main thread
           DispatchQueue.main.async {
            /* Do async work here */
            self?.scheduleList = schedules
            //self?.DateScrollPicker.updateSomething()
           }
        }
    }


}

	
