# Intern QC

Repo này dùng để lưu tài liệu kiểm thử thủ công và kiểm thử tự động cho dự án Student Attendance System.

## Cấu trúc thư mục

```text
Intern-QC/
|-- PhamTien_QuanLyDiemDanh_Automation/
|   |-- documents/                        # Tài liệu, kế hoạch và báo cáo kiểm thử
|   |   |-- QC_Test_Plan_Test_Cases.docx  # Kế hoạch và kịch bản kiểm thử chi tiết
|   |   |-- QC_Test_Cases.xlsx            # File excel kịch bản kiểm thử (Manual Test Cases)
|   |   |-- Test_Report_Manual.xlsx       # Báo cáo kết quả kiểm thử thủ công (Excel)
|   |   |-- Automation_Test_Report_By_Function.xlsx # Báo cáo kết quả kiểm thử tự động theo chức năng
|   |   `-- Automation_Manual_Comparison.xlsx       # Bảng so sánh kết quả kiểm thử thủ công và tự động
|   |
|   |-- locators/                         # Python files chứa locators tách biệt hoàn toàn
|   |   |-- __init__.py
|   |   |-- LoginPageLocators.py
|   |   |-- RegisterPageLocators.py
|   |   |-- DashboardPageLocators.py
|   |   |-- ClassPageLocators.py
|   |   |-- StudentPageLocators.py
|   |   |-- AttendancePageLocators.py
|   |   |-- SchedulePageLocators.py
|   |   |-- TimetablePageLocators.py
|   |   `-- ReportPageLocators.py
|   |
|   |-- resources/
|   |   |-- app.resource                  # File import tổng cho automation
|   |   |-- common_keywords.resource      # Từ khóa dùng chung
|   |   |-- page_objects/                 # Các Page Objects theo chuẩn POM (PascalCase)
|   |   |   |-- LoginPage.resource
|   |   |   |-- RegisterPage.resource
|   |   |   |-- DashboardPage.resource
|   |   |   |-- ClassPage.resource
|   |   |   |-- StudentPage.resource
|   |   |   |-- AttendancePage.resource
|   |   |   |-- SchedulePage.resource
|   |   |   |-- TimetablePage.resource
|   |   |   `-- ReportPage.resource
|   |   `-- services/                     # Keyword hỗ trợ API/test data flow
|   |       `-- api_flows.resource
|   |
|   |-- tests/                            # Các suite kiểm thử tự động (PascalCase)
|   |   |-- LoginTests.robot
|   |   |-- RoleTests.robot
|   |   |-- ClassStudentImportTests.robot
|   |   |-- AttendanceScheduleReportTests.robot
|   |   `-- RemainingRegressionTests.robot
|   |
|   |-- environment.variables.yml         # Quản lý tập trung các biến môi trường
|   |-- requirements.txt                  # Khai báo các thư viện cần thiết
|   `-- results/                          # Kết quả chạy Robot Framework
```

## Tài liệu chính (nằm trong thư mục `documents/`)

- `QC_Test_Plan_Test_Cases.docx`: File tài liệu Word bao gồm Kế hoạch kiểm thử (Test Plan) và Kịch bản kiểm thử (Test Cases).
- `QC_Test_Cases.xlsx`: File Excel quản lý chi tiết kịch bản kiểm thử thủ công (Manual Test Cases).
- `Test_Report_Manual.xlsx`: File Excel báo cáo kết quả thực hiện kiểm thử thủ công.
- `Automation_Test_Report_By_Function.xlsx`: File Excel báo cáo kết quả kiểm thử tự động theo từng phân hệ/chức năng.
- `Automation_Manual_Comparison.xlsx`: Bảng so sánh, đối chiếu kết quả kiểm thử thủ công và tự động (Manual vs Automation).

## Automation suites

- `PhamTien_QuanLyDiemDanh_Automation/tests/LoginTests.robot`
- `PhamTien_QuanLyDiemDanh_Automation/tests/RoleTests.robot`
- `PhamTien_QuanLyDiemDanh_Automation/tests/ClassStudentImportTests.robot`
- `PhamTien_QuanLyDiemDanh_Automation/tests/AttendanceScheduleReportTests.robot`
- `PhamTien_QuanLyDiemDanh_Automation/tests/RemainingRegressionTests.robot`

## Cấu trúc POM

- `PhamTien_QuanLyDiemDanh_Automation/environment.variables.yml`: Lưu cấu hình trình duyệt, URL, tài khoản test và tên menu dùng chung.
- `PhamTien_QuanLyDiemDanh_Automation/locators/`: Nơi lưu trữ tất cả locators (XPath, CSS Selector) bằng ngôn ngữ Python để tách biệt giao diện khỏi logic kiểm thử.
- `PhamTien_QuanLyDiemDanh_Automation/resources/app.resource`: import tất cả resource cần cho test suite.
- `PhamTien_QuanLyDiemDanh_Automation/resources/page_objects/`: Mỗi file đại diện cho một màn hình/chức năng, chứa các keywords hành vi thao tác trên màn hình tương ứng.
- `PhamTien_QuanLyDiemDanh_Automation/resources/services/api_flows.resource`: Gồm các keyword tạo/sửa/xóa dữ liệu bằng API để test suite gọn và dễ bảo trì.
- `PhamTien_QuanLyDiemDanh_Automation/tests/`: Chỉ giữ kịch bản test flow và assertion mức nghiệp vụ.

## Lệnh chạy automation

Cài đặt thư viện:

```bash
pip install -r PhamTien_QuanLyDiemDanh_Automation\requirements.txt
```

Chạy kiểm tra cú pháp:

```powershell
robot --dryrun --output NONE --log NONE --report NONE PhamTien_QuanLyDiemDanh_Automation\tests
```

Chạy theo từng nhóm trên production:

```powershell
robot -d PhamTien_QuanLyDiemDanh_Automation\results\LoginTests PhamTien_QuanLyDiemDanh_Automation\tests\LoginTests.robot
robot -d PhamTien_QuanLyDiemDanh_Automation\results\RoleTests PhamTien_QuanLyDiemDanh_Automation\tests\RoleTests.robot
robot -d PhamTien_QuanLyDiemDanh_Automation\results\ClassStudentImportTests PhamTien_QuanLyDiemDanh_Automation\tests\ClassStudentImportTests.robot
robot -d PhamTien_QuanLyDiemDanh_Automation\results\RemainingRegressionTests PhamTien_QuanLyDiemDanh_Automation\tests\RemainingRegressionTests.robot
```

Chạy nhóm điểm danh, thời khóa biểu và báo cáo trên local:

```powershell
robot -d PhamTien_QuanLyDiemDanh_Automation\results\AttendanceScheduleReportTests_local -v BASE_URL:http://localhost:8080 PhamTien_QuanLyDiemDanh_Automation\tests\AttendanceScheduleReportTests.robot
```

## Kết quả hiện tại

- Manual test: 32/32 đạt.
- Automation dry-run: 32/32 đạt.
- Automation runtime: 32/32 đạt.
