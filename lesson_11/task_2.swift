let serverResponse: (statusCode: Int, message: String?, errorMessage: String?) = (
    statusCode: 404,
    message: nil,
    errorMessage: "Ошибка не найдено"
)

if serverResponse.statusCode > 200 && serverResponse.statusCode < 300 {
    if let message = serverResponse.message {
        print("Сообщение: \(message)")
    } else {
        print("Message отсутствует")
    }
} else {
    if let errorMessage = serverResponse.errorMessage {
        print("Ошибка: \(errorMessage)")
    } else {
        print("Ошибка отсутствует")
    }
}

let messageOrError: String? = serverResponse.message ?? serverResponse.errorMessage

if let finalMessage = messageOrError {
    print("Финальное сообщение: \(finalMessage)")
} else {
    print("Сообщение отсутствует в обоих полях")
}
