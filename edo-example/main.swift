//
//  main.swift
//  edo-example
//
//  Created by Brandon Morris on 4/22/23.
//

import Foundation

let port: UInt16 = 12345

@objc protocol DoublingService {
  func double(_ number: Int) -> Int
}

class Doubler: DoublingService {
  func double(_ number: Int) -> Int {
    return number * 2
  }
}

func main() -> Int32 {
  let arguments = CommandLine.arguments

  if arguments.count < 2 {
    print("ERROR Incorrect arguments")
    print("Usage: edo-example (server,client) [toDouble]")
    return 1
  }

  if arguments[1] == "server" {
    print("starting server...")
    let remoteService = Doubler()
    let _ = EDOHostService(port: port, rootObject: remoteService, queue: DispatchQueue(label: "MyQueue"))
    print("press <Ctrl-c> to quit")
    RunLoop.current.run()
  }

  if arguments[1] == "client" {
    let toDouble = arguments.count >= 3 ? Int(arguments[2])! : 21
    print("starting client...")
    let remoteService: DoublingService = EDOClientService.rootObject(withPort: port)
    let result = remoteService.double(toDouble)
    print("doubled result: \(result)")
  }

  return 0
}


exit(main())
