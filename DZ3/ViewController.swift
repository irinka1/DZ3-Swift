//
//  ViewController.swift
//  DZ3
//
//  Created by Ирина on 03.05.18.
//  Copyright © 2018 Ирина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* 1.Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль */
        
       print(task1(A:"Irina"))
       
        /* 2. Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_” */
        
        print(task2(name: "Irina", surname: "Chubuk"))
        
        /* 3. Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
         Подсказка: в классе написан метод который позволяет проверить на суффикс или префикс, найдите и используйте его*/
        
        print(task3(A: "Максим Леонидович"))
        
        /*Collections Easy:
        Задание1
        Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.*/
        var array: [Int] = [1,4,7,23,56]
        print("Наш массив иммет такие элементы:\(array)")
        array.removeAll()
        print("А сейчас наш массив иммет такие элементы:\(array)")
        
        /*Задание2
        Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.*/
        var array2: [Int] = [1,4,7,23,56]
        var array3: [Int] = [45,4,75,22,76]
        print(array2+array3)
        
       /* Задание3
       Создать массив с любыми значениями типа строка(во viewDidLoad()). Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)*/
        
        task23(array: [1,5,7,8,9])
        
      /*Задание4
       Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром */
        print(task24(array: [345, 34, 53, "dff"]))
        
     /* Задание5
       Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
       Добавить в данный словарь еще 2 новых элемента.*/
        
       var dictionary = [ "Наталья": 15, "Елена" : 24, "Софія" : 38]
        dictionary.updateValue(34, forKey: "Настя")
        dictionary.updateValue(43, forKey: "Никита")
        print(dictionary)
        
        
    /* Задание 6
         Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
         Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
         Например: передаваемый словарь будет такой:
         ["Max": 1, "Dasha": 2, "Sergey": 3]
         И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".*/
        
        //var dictionary = [ "Наталья": 15, "Елена" : 24, "Софія" : 38]
        
        
        
        

    }
    
    func task1(A: String) -> Int{
        let numberOfCarachters = A.count
        return(numberOfCarachters)
    }
    
    func task2(name: String, surname: String) -> String{
        let nName = name.lowercased()
        let nSurname = surname.lowercased()
        let result = nName + "_" + nSurname
        return result
    }

    func task3(A: String){
        if A.hasSuffix("ич") {
            print("М")
        } else if A.hasSuffix("на"){
            print("Ж")
        }
    }
    
    func task23(array: [Int]){
        for i in array{
            print(i)
        }
    }
    
    func task24(array: [Any]){
        var newArray = [Any]()
            let lastNumber = array.last
            newArray.append(array[0])
            newArray.append(lastNumber!)
        print(newArray)
    }
    
    func task26(dict: [String: Int], value1: String){
        var willRemoveKey = value1
        dict.removeValue(forKey: willRemoveKey)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

