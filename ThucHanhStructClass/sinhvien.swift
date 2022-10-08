//
//  sinhvien.swift
//  ThucHanhStructClass
//
//  Created by Thị Bơ on 01/10/2022.
//

import Foundation

struct sinhVien {
  
    //Properties
    var id: String
    var name: String
    var age: Int
    var diemToan: Float
    var diemLy: Float
    var diemHoa: Float
    var diemTb: Float
    
    init(id: String, name: String, age: Int, diemToan: Float, diemLy: Float, diemHoa: Float, diemTb: Float) {
        self.id = id
        self.name = name
        self.age = age
        self.diemToan = diemToan
        self.diemLy = diemLy
        self.diemHoa = diemHoa
        self.diemTb = diemTb
    }
    
     init(id: String, name: String, diemToan: Float, diemLy: Float, diemHoa: Float) {
        self.id = id
        self.name = name
        self.diemToan = diemToan
        self.diemLy = diemLy
        self.diemHoa = diemHoa
        self.diemTb = (diemToan+diemLy+diemHoa)/3
         self.age = 0
    }
    
    // 1 phương thức Mutating có thể thay đổi giá trị của thuộc tính
    mutating func saveDiemToan(newToan:Float){
        self.diemToan = newToan
        self.diemTb = (diemTb+diemLy+diemHoa)/3
    }
}

