// import Utility
import Foundation

// let arguments = Array(CommandLine.arguments.dropFirst())

// let parser = ArgumentParser(usage: "-c [RGBA Color]", overview: "StoryboardやXibで指定したRGBAカラーを指定")
// let color = parser.add(option: "--color", shortName: "-c", kind: String.self)

// do {
//     let result = try parser.parse(arguments)
//     if let color = result.get(color) {
//         print("\(color)を元に検索を行います")
//     } else {
//         print("エラー")
//     }
// } catch {
//     print(error)
// }
let fileManager = FileManager.default
let path = FileManager.default.currentDirectoryPath

do {
    let files = try fileManager.contentsOfDirectory(atPath: path)
    for file in files {
        print("見つかった: \(file)")
    }
} catch {
    print("エラー")
}
