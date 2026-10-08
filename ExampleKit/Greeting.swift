import Foundation

public enum Greeting {
    public static func message(for name: String, count: Int) -> String {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        let who = trimmed.isEmpty ? "World" : trimmed
        let times = count == 1 ? "1 time" : "\(count) times"
        return "Hello, \(who)! Greeted \(times)."
    }
}
