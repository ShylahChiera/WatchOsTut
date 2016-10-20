//
//  FlightInterfaceController.swift
//  AirAber
//
//  Created by Shylah Chiera on 10/16/16.
//  Copyright © 2016 Mic Pringle. All rights reserved.
//

import WatchKit
import Foundation


@IBOutlet var flightLabel: WKInterfaceLabel!
@IBOutlet var routeLabel: WKInterfaceLabel!
@IBOutlet var boardingLabel: WKInterfaceLabel!
@IBOutlet var boardTimeLabel: WKInterfaceLabel!
@IBOutlet var statusLabel: WKInterfaceLabel!
@IBOutlet var gateLabel: WKInterfaceLabel!
@IBOutlet var seatLabel: WKInterfaceLabel!



var flight: Flight? {

didSet {
  
  guard let flight = flight else { return }
  
  flightLabel.setText("Flight \(flight.shortNumber)")
  routeLabel.setText(flight.route)
  boardingLabel.setText("\(flight.number) Boards")
  boardTimeLabel.setText(flight.boardsAt)

  if flight.onSchedule {
    statusLabel.setText("On Time")
  } else {
    statusLabel.setText("Delayed")
    statusLabel.setTextColor(.red)
  }
  gateLabel.setText("Gate \(flight.gate)")
  seatLabel.setText("Seat \(flight.seat)")
}
}

class FlightInterfaceController: WKInterfaceController {

  
}
