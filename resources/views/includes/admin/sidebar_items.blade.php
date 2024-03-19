<li class="nav-item has-treeview">
    <a href="#" class="nav-link">
        <i class="nav-icon fa fa-calendar-check-o"></i>
        <p>
            Karyawan
            <i class="fas fa-angle-left right"></i>
            {{-- <span class="badge badge-info right">3</span> --}}
        </p>
    </a>
    <ul class="nav nav-treeview">
        {{-- <li class="nav-item">
            <a
                href="{{ route('admin.employees.create') }}"
                class="nav-link"
            >
                <i class="far fa-circle nav-icon"></i>
                <p>Tambah Karyawan</p>
            </a>
        </li> --}}
        <li class="nav-item">
            <a
                href="{{ route('admin.employees.index') }}"
                class="nav-link"
            >
                <i class="far fa-circle nav-icon"></i>
                <p>Daftar Karyawan</p>
            </a>
        </li>
        <li class="nav-item">
            <a
                {{-- href="{{ route('admin.employees') }}" --}}
                class="nav-link"
            >
                <i class="far fa-circle nav-icon"></i>
                <p>Organisasi</p>
            </a>
        </li>
    </ul>
</li>

<li class="nav-item has-treeview">
    <a href="#" class="nav-link">
        <i class="nav-icon fa fa-file"></i>
        <p>
            Data
            <i class="fas fa-angle-left right"></i>
            {{-- <span class="badge badge-info right">3</span> --}}
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a
                href="{{ route('admin.employees.attendance') }}"
                class="nav-link"
            >
                <i class="far fa-circle nav-icon"></i>
                <p>Transaksi</p>
            </a>
        </li>
        <li class="nav-item">
            <a
                {{-- href="{{ route('admin.employees.attendance') }}" --}}
                class="nav-link"
            >
                <i class="far fa-circle nav-icon"></i>
                <p>Tunggakan</p>
            </a>
        </li>
    </ul>
</li>