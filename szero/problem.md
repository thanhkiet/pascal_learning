**Đề:** Cho một lưới ô vuông kích thước MxN. Mỗi ô chứa một số 0 hoặc 1. Các số 1 trên lưới tạo thành
một đường kín (tức là dãy các ô mà hai ô liên tiếp có chung cạnh hoặc đỉnh và ô cuối cùng của dãy
có chung cạnh hoặc đỉnh với ô đầu tiên) bọc được một vùng của lưới mà ta sẽ gọi là một hình. Diện
tích của hình là số ô chứa số 0 nằm trong đó.

**Yêu cầu:** Viết chương trình tính diện tích của hình trong một lưới ô vuông cho trước. Giả thiết
là diện tích của một hình khác 0. 

**Dữ liệu:** Vào từ file văn bản *SZERO.INP*:
Dòng đầu tiên chứa hai số nguyên dương M, N (5 ≤ M, N ≤ 100)
M dòng tiếp theo mô tả bảng cho trước, mỗi dòng chứa dãy gồm N số 0 hoặc 1 được ghi liền nhau </br>
**Kết quả:** Ghi ra trên một dòng của file văn bản *SZERO.OUT* diện tích của hình trên lưới đã cho.

**Ví dụ:** 

| SZERO.INP      | SZERO.OUT |
|----------------|-----------|
| 6 8 </br> 0 1 0 0 0 0 0 0 </br> 1 0 1 0 0 0 0 0 </br> 1 0 0 1 0 0 0 0 </br> 1 0 0 0 1 0 0 0 </br> 0 1 0 1 0 0 0 0 </br> 0 0 1 0 0 0 0 0 </br> | 7|
