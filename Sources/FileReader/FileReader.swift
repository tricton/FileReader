import Foundation

public class FileReader {
  public func read(filename: String) -> String? {
    let fileManager = FileManager.default
    let currentDirectoryURL = URL(fileURLWithPath: fileManager.currentDirectoryPath)
    let fileURL = currentDirectoryURL.appendingPathComponent(filename)
    return try? String(contentsOf: fileURL, encoding: .utf8)
  }
}
