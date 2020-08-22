import Foundation

let fileManager = FileManager.default
let path = FileManager.default.currentDirectoryPath

do {
    let files = try fileManager.contentsOfDirectory(atPath: path)
    for file in files {
        if file.hasSuffix(".xcodeproj") {
            print("プロジェクトファイルが見つかりました: \(file)")
        }
    }
} catch {
    print("エラー")
}
let directoryURL: URL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)


if let enumerator =
    FileManager.default.enumerator(atPath: directoryURL.path)
{
    for case let path as String in enumerator {
        if path.hasSuffix(".storyboard") || path.hasSuffix(".xib") {
            print(">>> パス: \(path)")
        }
    }
}
