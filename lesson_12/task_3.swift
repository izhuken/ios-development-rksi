class RequestError {
    var statusCode: Int = 0
    var description: String = "[Unnamed]"

    init(code: Int, message: String) {
        self.statusCode = code
        self.description = message
    }     
}

class LogStash {
    private var errors: [String: [RequestError]] = [:]

    subscript(date: String) -> [RequestError]? {
        get {
            return self.errors[date]
        }
        set(newValue) {
            self.errors[date] = newValue
        }
    }
}

let logStash = LogStash()
logStash["2"] = [RequestError(code: 404, message: "Not Found")]
logStash["2"] = [RequestError(code: 500, message: "Internal Server Error")]

if let todaysErrors = logStash["2"] {
    print("Ошибки за сегодняшний день: \(todaysErrors)")
}