//
//  main.swift
//  ThucHanhStructClass
//
//  Created by Thị Bơ on 01/10/2022.
//

import Foundation

// Nhập vào 1 mảng sinh viên
//1. in ra danh sách sinh viên
//2. in ra những sinh viên có điểm TB >8
//3. Tìm sinh viên theo mã SV
//4. Sắp xếp danh sách sv theo điểm TB tăng dần

//print("nhập số sinh viên: ")
//var n = Int(readLine() ?? "") ?? 0
//// Tạo mảng chưa sính viên
//var arrSinhVien: [sinhVien] = []
//for i in 1...n {
//    print("nhập vào sinh viên thứ \(i)")
//    print("Nhập mã Sinh viên: ")
//    let maSinhVien = readLine() ?? ""
//    print("nhập tên sinh viên: ")
//    let tenSinhVien = readLine() ?? ""
//    print("Nhập điểm toán:")
//    let toan = Float(readLine() ?? "") ?? 0
//    print("nhập điểm lý: ")
//    let ly = Float(readLine() ?? "") ?? 0
//    print("nhập điểm hoá: ")
//    let hoa = Float(readLine() ?? "") ?? 0
//
//    let newSv = sinhVien(id: maSinhVien, name: tenSinhVien, diemToan: toan, diemLy: ly, diemHoa: hoa)
//
//    arrSinhVien.append(newSv)
//}
//
//// In ra tên sinh viên
//for sv in arrSinhVien {
//    print(sv.name, "có điểm TB là", sv.diemTb)
//}
// Tạo 1 mảng sinh viên sẵn
var arrSV: [sinhVien] = [sinhVien(id: "999", name: "hoang", diemToan: 9, diemLy: 8, diemHoa: 8),
sinhVien(id: "888", name: "quan", diemToan: 8, diemLy: 8, diemHoa: 8    ),
sinhVien(id: "777", name: "bảo", diemToan: 7, diemLy: 7, diemHoa: 7)]
for sv in arrSV {
    print(sv.name, "có điểm tb là: ", sv.diemTb)
}
// in ra những sv có điểm tb>8
for sv in arrSV {
    if sv.diemTb > 8 {
        print(sv.name, "có điểm Tb lớn hơn 8")
    }
}
 // Tìm sinh viên theo mã sinh viên
for sv in arrSV {
    if sv.id.contains("777"){
        print(sv.name, sv.id)
        break
    }
}

// Sắp sách sinh viên theo điểm Tb tăng dần
let sortArr = arrSV.sorted { svTrc, svSau in
    svTrc.diemTb > svSau.diemTb
}
sortArr.forEach { sv in
    print(sv.name, sv.diemTb
    )
}


//Sửa thông tin sinh viên có mã id là ""
for index in 1...arrSV.count {
    if arrSV[index].id.contains("777"){
        arrSV[index].name = "hoàng văn A"
        break
    }
}
arrSV.forEach { sv in
    print(sv.name)
}
