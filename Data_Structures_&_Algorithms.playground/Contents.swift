import Foundation


/*
 
 هياكل البيانات والخوارزميات هي مكونات أساسية في علوم الحاسوب وهندسة البرمجيات. تتيح هذه المفاهيم تنظيم البيانات بطرق فعالة وتطوير حلول برمجية لحل مشكلات معقدة
 
 هياكل البيانات الأساسية
 
 1. المصفوفات (Arrays)
 الوصف: مجموعة من العناصر المخزنة في مواقع ذاكرة متتالية.
 الاستخدام: تخزين عدد ثابت من العناصر من نفس النوع.
 المزايا: الوصول السريع إلى العناصر باستخدام الفهرس.
 العيوب: الحجم ثابت ولا يمكن تغييره بعد الإنشاء.
 
 2. القوائم المتصلة (Linked Lists)
 الوصف: مجموعة من العقد، كل عقدة تحتوي على قيمة ومؤشر للعقدة التالية.
 الاستخدام: عندما تحتاج إلى هيكل بيانات بحجم متغير.
 المزايا: إضافة وحذف العناصر يكون فعالًا.
 العيوب: الوصول إلى العناصر يتطلب المرور بالعقد بترتيب.
 
 3. المكدسات (Stacks)
 الوصف: هيكل بيانات يتبع مبدأ "الأخير دخولا، أولًا خروجا" (LIFO).
 الاستخدام: تخزين البيانات المؤقتة، تنفيذ العودية.
 المزايا: العمليات السريعة للإدخال والإخراج.
 العيوب: الوصول إلى العناصر الداخلية ليس سهلًا.
 
 4. الطوابير (Queues)
 الوصف: هيكل بيانات يتبع مبدأ "الأول دخولا، أولًا خروجا" (FIFO).
 الاستخدام: جدولة العمليات، إدارة العمليات في الأنظمة.
 المزايا: العمليات السريعة للإدخال والإخراج.
 العيوب: الوصول إلى العناصر الداخلية ليس سهلًا.
 
 5. الأشجار (Trees)
 الوصف: هيكل هرمي يتكون من العقد، حيث تكون لكل عقدة عقد فرعية.
 الاستخدام: تمثيل البيانات الهرمية مثل أنظمة الملفات.
 المزايا: عمليات البحث والتصنيف تكون فعالة.
 العيوب: تعقيد التنفيذ والصيانة.
 
 6. الرسوم البيانية (Graphs)
 الوصف: مجموعة من العقد (vertices) وروابط (edges) بين العقد.
 الاستخدام: تمثيل الشبكات الاجتماعية، خرائط الطرق.
 المزايا: تمثيل العلاقات المعقدة.
 العيوب: تعقيد التنفيذ والتحليل.
 
 
 */


//test 1



/*
 1. Arrays
 
 Arrays are used to store multiple values of the same type in an ordered list.
 The same value can appear in an array multiple times at different positions.
 
 */

// تعريف مصفوفة من الأعداد الصحيحة
var numbers: [Int] = [1, 2, 3, 4, 5, 5]

// الوصول إلى عنصر في المصفوفة
let firstNumber = numbers[0] // 1

// إضافة عنصر إلى المصفوفة
numbers.append(6)

// إزالة عنصر من المصفوفة
numbers.remove(at: 2) // إزالة العنصر الثالث (قيمة 3)

// طباعة المصفوفة
print(numbers) // [1, 2, 4, 5, 6]




/*
 2. Linked Lists
 
 Linked lists consist of nodes where each node contains a value and a reference to the next node.
 
 */






/*
 3. Sets
 
 Sets are unordered collections of unique values.
 
 */

// Defining a set of integers
var numberSet: Set<Int> = [1, 2, 3, 4, 5,5,5]

// Adding an element to the set
numberSet.insert(6)

// Removing an element from the set
numberSet.remove(3)

// Checking if the set contains an element
let containsTwo = numberSet.contains(2) // true
print(containsTwo)

// Printing the set
print(numberSet) // Unordered collection of [1, 2, 4, 5, 6]




/*
 4. Maps (Dictionaries)
 
 Maps (or dictionaries) are collections of key-value pairs.
 
 */



// Defining a dictionary with string keys and integer values
var studentGrades: [String: Int] = ["Alice": 90, "Bob": 85, "Charlie": 92]

// Accessing a value in the dictionary
let aliceGrade = studentGrades["Alice"] // 90
print(aliceGrade!)

// Adding a key-value pair to the dictionary
studentGrades["David"] = 88

// Removing a key-value pair from the dictionary
studentGrades.removeValue(forKey: "Bob")

// Printing the dictionary
print(studentGrades) // ["Alice": 90, "Charlie": 92, "David": 88]



/*
 
 5. Sorting Algorithms
 Sorting algorithms are used to rearrange elements in a specified order.
 */

// Bubble Sort

func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    for i in 0..<n {
        for j in 0..<n-i-1 {
            if array[j] > array[j + 1] {
                let temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
}

// Using Bubble Sort

var unsortedArray = [5, 3, 8, 4, 2]
bubbleSort(&unsortedArray)
print(unsortedArray) // [2, 3, 4, 5, 8]


// Quick Sort

func quickSort<T: Comparable>(_ array: inout [T], low: Int, high: Int) {
    if low < high {
        let pivotIndex = partition(&array, low: low, high: high)
        quickSort(&array, low: low, high: pivotIndex - 1)
        quickSort(&array, low: pivotIndex + 1, high: high)
    }
}

func partition<T: Comparable>(_ array: inout [T], low: Int, high: Int) -> Int {
    let pivot = array[high]
    var i = low
    for j in low..<high {
        if array[j] <= pivot {
            array.swapAt(i, j)
            i += 1
        }
    }
    array.swapAt(i, high)
    return i
}

// Using Quick Sort
var quickUnsortedArray = [10, 7, 8, 9, 1, 5]
quickSort(&quickUnsortedArray, low: 0, high: quickUnsortedArray.count - 1)
print(quickUnsortedArray) // [1, 5, 7, 8, 9, 10]



 //
// 3 الكومت
