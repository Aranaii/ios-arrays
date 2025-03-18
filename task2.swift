import Foundation

// Массив с количеством дней в месяцах
let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// Массив с названиями месяцев
let monthNames = [
    "Январь", "Февраль", "Март", "Апрель", "Май", "Июнь",
    "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"
]

// 1. Вывод количества дней в каждом месяце
print("Количество дней в каждом месяце:")
for days in daysInMonths {
    print(days)
}

// 2. Вывод названия месяца + количество дней
print("\nКоличество дней в каждом месяце с названиями:")
for (index, days) in daysInMonths.enumerated() {
    print("\(monthNames[index]): \(days) дней")
}

// 3. Использование массива кортежей
let monthsWithDays: [(String, Int)] = [
    ("Январь", 31), ("Февраль", 28), ("Март", 31), ("Апрель", 30),
    ("Май", 31), ("Июнь", 30), ("Июль", 31), ("Август", 31),
    ("Сентябрь", 30), ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)
]

print("\nКоличество дней в каждом месяце с названиями (кортежи):")
for month in monthsWithDays {
    print("\(month.0): \(month.1) дней")
}

// 4. Вывод дней в обратном порядке
print("\nКоличество дней в каждом месяце в обратном порядке:")
for days in daysInMonths.reversed() {
    print(days)
}

// 5. Вычисление количества дней до произвольно выбранной даты
let chosenMonth = 3 // Апрель (индекс 3)
let chosenDay = 18 // 18 число

var daysUntilChosenDate = 0

for i in 0..<chosenMonth {
    daysUntilChosenDate += daysInMonths[i]
}

daysUntilChosenDate += chosenDay

print("\nКоличество дней до \(monthNames[chosenMonth]) \(chosenDay) от начала года: \(daysUntilChosenDate)")