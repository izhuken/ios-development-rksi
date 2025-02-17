var requestResponse1 = (code: 502, details: "Service unavailable")
var requestResponse2 = (code: 404, details: "Domain name is not resolved")
var error = 404

if requestResponse1.code == error {
    print("Ошибка сервера: \(requestResponse1.details)");
}

else if requestResponse2.code == error {
    print("Ошибка клиента: \(requestResponse2.details)");
}