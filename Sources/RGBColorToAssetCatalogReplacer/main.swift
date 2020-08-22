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
