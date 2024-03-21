<!-- sidebar.blade.php atau menu.blade.php -->
<li class="nav-item has-treeview {{ request()->routeIs('admin.employees.index', 'admin.departments.index', 'admin.positions.index') ? 'menu-open' : '' }}">
    <a href="#" class="nav-link {{ request()->routeIs('admin.employees.index', 'admin.departments.index', 'admin.positions.index') ? 'active' : '' }}">
        <i class="nav-icon fa fa-calendar-check-o"></i>
        <p>
            Karyawan
            <i class="fas fa-angle-left right"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="{{ route('admin.employees.index') }}" class="nav-link {{ request()->routeIs('admin.employees.index') ? 'active' : '' }}">
                <p>&nbsp; Daftar Karyawan</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="#" class="nav-link">
                <p>&nbsp; Organisasi</p>
                <i class="right fas fa-angle-left"></i>
            </a>
            <ul class="nav nav-treeview" style="padding-left: 15px;">
                <li class="nav-item">
                    <a href="{{route ('admin.employees.department') }}" class="nav-link">
                        <p>Departemen</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route ('admin.positions') }}" class="nav-link">
                        <p>Jabatan</p>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</li>
<li class="nav-item has-treeview {{ request()->routeIs('admin.employees.attendance') ? 'menu-open' : '' }}">
    <a href="#" class="nav-link {{ request()->routeIs('admin.employees.attendance') ? 'active' : '' }}">
        <i class="nav-icon fa fa-file"></i>
        <p>
            Data
            <i class="fas fa-angle-left right"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="{{ route('admin.employees.attendance') }}" class="nav-link {{ request()->routeIs('admin.employees.attendance') ? 'active' : '' }}">
                <p>&nbsp;Transaksi</p>
            </a>
        </li>
    </ul>
</li>
