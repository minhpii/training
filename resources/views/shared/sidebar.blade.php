<div class="sidebar">

  <!-- SidebarSearch Form -->
  <div class="form-inline">
    <div class="input-group" data-widget="sidebar-search">
      <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
      <div class="input-group-append">
        <button class="btn btn-sidebar">
          <i class="fas fa-search fa-fw"></i>
        </button>
      </div>
    </div>
  </div>

  <!-- Sidebar Menu -->
  <nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
      <!-- Add icons to the links using the .nav-icon class
           with font-awesome or any other icon font library -->
      <li class="nav-item menu-open">
        <a href="{{ route('dashboard') }}" class="nav-link active">
          <i class="nav-icon fas fa-tachometer-alt"></i>
          <p>
            {{ __('Dashboard') }}</p>
        </a>
      </li>

      @if (Auth::user()->hasRole('admin'))
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-edit"></i>
            <p>
              {{ __('Department') }}
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('departments.index') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>List Department</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('departments.create') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Add Department</p>
              </a>
            </li>
          </ul>
        </li>

        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-edit"></i>
            <p>
              {{ __('Course') }}
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('courses.index') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>List Course</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('courses.create') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Add Course</p>
              </a>
            </li>
          </ul>
        </li>

        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-edit"></i>
            <p>
              {{ __('Student') }}
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('students.index') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>List Student</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('students.create') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Add Student</p>
              </a>
            </li>
          </ul>
        </li>
      @endif

      @if (Auth::user()->hasRole('student'))
        <li class="nav-item">
          <a href="#" class="nav-link">
            <i class="nav-icon fas fa-edit"></i>
            <p>
              {{ __('Profile') }}
              <i class="fas fa-angle-left right"></i>
            </p>
          </a>
          <ul class="nav nav-treeview">
            <li class="nav-item">
              <a href="{{ route('profile', Auth::user()->student->id) }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>My Profile</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="{{ route('register.course') }}" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Register Course</p>
              </a>
            </li>
          </ul>
        </li>
      @endif

      <li class="nav-item">
        <a href="#" class="nav-link"
          onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
          <i class="nav-icon fas fa-edit"></i>
          <p>
            LogOut
          </p>
        </a>
      </li>

      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        @csrf
      </form>
    </ul>
  </nav>
  <!-- /.sidebar-menu -->
</div>
