var requestResponse = (code: 502, details: "Service unavailable")

if requestResponse.code > 500 {
    print("Ошибка сервера: \(requestResponse.details)");
}

else if requestResponse.code > 400 {
    print("Ошибка клиента: \(requestResponse.details)");
}

else if requestResponse.code > 300 {
    print("Перенаправление: \(requestResponse.details)");
}

else if requestResponse.code > 200 {
    print("Успешно: \(requestResponse.details)");
}

else if requestResponse.code > 100 {
    print("Инфо: \(requestResponse.details)");
}