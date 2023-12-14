//
//  ViewController.swift
//  HW5(L7to1412)
//
//  Created by Карина Дьячина on 14.12.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Реализуйте методы в классе Student для добавления предметов, установки оценок и получения информации о студенте.
//        Реализуйте методы в классе Teacher с указанием предметов, установки оценок и получения информации о студенте которому ставишь оценку.
//
//        Создайте функции для изменения возраста и имени студента, используя соответствующие методы доступа.
//
//        Создайте функции для изменения возраста и имени преподавателя и его предмет который он преподаёт, используя соответствующие методы доступа.
//
//        Итог: Создайте несколько экземпляров студентов, преподавателей. Добавьте студентам предметы и установите оценки.
//        Вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет) (Оценка) (Кто поставил оценку)
//        У преподавателя вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)
//
//        Создание учителя
//        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
//        mathTeacher.addSubjectTaught(subjectName: "Math")
//
//        Создание студентов
//        let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
//        let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
//
//        Связывание студентов с учителем
//        student1.assignTeacher(teacher: mathTeacher)
//        student2.assignTeacher(teacher: mathTeacher)
//
//        Учитель ставит оценки студентам по предметам
//        mathTeacher.setGrade(for: student1, subjectName: "Math", grade: "A")
//        mathTeacher.setGrade(for: student2, subjectName: "Math", grade: "B+")
//           
        let math = Subject(subjectName: "Math", grade: "")
        let chemistry = Subject(subjectName: "Chemistry", grade: "")
        let pE = Subject(subjectName: "PE", grade: "")
                
        // Создание учителя
        let mathTeacher = Teacher(id: 1, firstName: "John", lastName: "Doe")
        let chemistryTeacher = Teacher(id: 2, firstName: "Lily", lastName: "Jefferson")
        let pETeacher = Teacher(id: 3, firstName: "Boris", lastName: "Kardanov")
                
        mathTeacher.addSubjectTaught(subjectName: math.subjectName)
        chemistryTeacher.addSubjectTaught(subjectName: chemistry.subjectName)
        pETeacher.addSubjectTaught(subjectName: pE.subjectName)
                
        // Создание студентов
        let student1 = Student(id: 1, name: "Alice", lastName: "Simpson", age: 20)
        let student2 = Student(id: 2, name: "Bob", lastName: "Maguire", age: 21)
                
        student1.addAge(age: 15)
        student2.addAge(age: 18)
                
        // Связывание студентов с учителем
        student1.assignTeacher(teacher: mathTeacher)
        student2.assignTeacher(teacher: mathTeacher)
                
        //
                
        student1.addSubject(subjectName: math.subjectName, grade: "")
        student1.addSubject(subjectName: pE.subjectName, grade: "")

        student2.addSubject(subjectName: chemistry.subjectName, grade: "")
        student2.addSubject(subjectName: math.subjectName, grade: "")
                
        // Учитель ставит оценки студентам по предметам
        student1.getGrade(teacher: mathTeacher, grade:( mathTeacher.setGrade(for: student1, subjectName: math.subjectName, grade: "10")))
        student2.getGrade(teacher: mathTeacher, grade: (mathTeacher.setGrade(for: student2, subjectName: math.subjectName, grade: "8")))
                
        //Вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет) (Оценка) (Кто поставил оценку)
        student1.studentInfo()
        student2.studentInfo()
                
        //
                
        student2.assignTeacher(teacher: chemistryTeacher)
        student1.assignTeacher(teacher: pETeacher)
                
        //
                
        student2.getGrade(teacher: chemistryTeacher, grade: (chemistryTeacher.setGrade(for: student2, subjectName: chemistry.subjectName, grade: "9")))
        student1.getGrade(teacher: pETeacher, grade: (pETeacher.setGrade(for: student1, subjectName: pE.subjectName, grade: "5")))
                
        student1.studentInfo()
        student2.studentInfo()
                
                
        //У преподавателя вывод должен быть таким: (ID) (Имя) (Фамилия) (Предмет который ведет) (Студент) (Оценка которую поставил преподаватель)
        
        mathTeacher.teacherInfo()
        chemistryTeacher.teacherInfo()
        pETeacher.teacherInfo()
          
    }


}

