<!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li class="sidebar-item pt-2">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/dashboard"
                                aria-expanded="false">
                                <i class="fas fa-tachometer-alt" aria-hidden="true"></i>
                                <span class="hide-menu">Dashboard</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/about_admin/1/edit"
                                aria-expanded="false">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                <span class="hide-menu">Tentang Saya</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/post"
                                aria-expanded="false">
                                <i class="fas fa-file-alt" aria-hidden="true"></i>
                                <span class="hide-menu">Artikel</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/contact"
                                aria-expanded="false">
                                <i class="fas fa-address-book" aria-hidden="true"></i>
                                <span class="hide-menu">Kontak Masuk</span>
                            </a>
                        </li>
                        <li class="text-center p-20 upgrade-btn">
                            <form action="/logout" method="post">
                                @csrf
                                <div class="d-grid gap-2">
                                    <button type="submit" class="btn btn-danger text-white fw-bold"><i class="fas fa-sign-out-alt"></i>&nbsp;Logout</button>
                                </div>
                            </form>
                            {{-- <div class="d-grid gap-2">
                                <a href="/logout" class="btn btn-danger text-white fw-bold" target="_blank"><i class="fas fa-sign-out-alt"></i>&nbsp;Logout</a>
                            </div> --}}
                        </li>
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->