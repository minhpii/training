<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleAndPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [
            "manage-departments", // Thêm, sửa, xóa và xem các khoa.
            "manage-subjects", // Thêm, sửa, xóa và xem các môn học.
            "manage-students", // Thêm, sửa, xóa và xem thông tin sinh viên.
            "manage-scores", // Thêm, cật nhật và xem điểm
            "view-subjects", // Chỉ xem danh sách môn học
            "register-subjects", // Đăng ký môn học
            "view-scores" // Chỉ xem điểm
        ];

        foreach ($permissions as $permission) {
            Permission::firstOrCreate(["name" => $permission]);
        }

        $adminRole = Role::firstOrCreate(['name' => 'admin']);
        $adminPermissions = [
            "manage-departments",
            "manage-subjects",
            "manage-students",
            "manage-scores"
        ];
        $adminRole->syncPermissions($adminPermissions);

        $studentRole = Role::firstOrCreate(['name' => 'student']);
        $studentPermissions = [
            "view-subjects",
            "register-subjects",
            "view-scores"
        ];
        $studentRole->syncPermissions($studentPermissions);
    }
}
