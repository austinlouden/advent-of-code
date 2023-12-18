import Algorithms

struct Day01: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: [String] {
    data.split(separator: "\n").map { String($0) }
  }

  // Replace this with your solution for the first part of the day's challenge.
  func part1() -> Any {
    entities.reduce(into: 0) { acc, next in
      let first = next.firstDigit()
      let last = String(next.reversed()).firstDigit()

      print("\(next): \(Int(first + last) ?? 0)")
      acc += Int(first + last) ?? 0
    }
  }

  // Replace this with your solution for the second part of the day's challenge.
  func part2() -> Any {
    return ""
  }
}

extension String {
  func firstDigit() -> String {
    String(self.first { $0.isNumber } ?? "0")
  }
}
