<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
        integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
        crossorigin="anonymous"></script>
    <title>Dashboard</title>
</head>

<body>
    <div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-light">
                <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                    <a href="/"
                        class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <span class="fs-5 d-none d-sm-inline">Menu</span>
                    </a>
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
                        id="menu">
                        <li class="nav-item">
                            <a href="" class="nav-link align-middle px-0">
                                <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline">Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="#submenu1" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-speedometer2"></i> <span
                                    class="ms-1 d-none d-sm-inline">Student</span> </a>
                            <ul class="collapse show nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                                <li class="w-100">
                                    <a href="addStudents"
                                        class="nav-link px-0"> <span class="d-none d-sm-inline">Add Student</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="studentsList"
                                        class="nav-link px-0"> <span class="d-none d-sm-inline">Student List</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                                <i class="fs-4 bi-speedometer2"></i> <span
                                    class="ms-1 d-none d-sm-inline">Fees</span> </a>
                            <ul class="collapse show nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                                <li class="w-100">
                                    <a href="submitFees"
                                        class="nav-link px-0"> <span class="d-none d-sm-inline">Submit Fees</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="classes"
                                        class="nav-link px-0"> <span class="d-none d-sm-inline">addClasses</span>
                                    </a>
                                </li>
                                 <li>
                                    <a href="session"
                                        class="nav-link px-0"> <span class="d-none d-sm-inline">addSession</span>
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="category"
                                        class="nav-link px-0"> <span class="d-none d-sm-inline">Category</span>
                                    </a>
                                </li>
                                
                                                                <li>
                                    <a href="feestype"
                                        class="nav-link px-0"> <span class="d-none d-sm-inline">Fees Type</span>
                                    </a>
                                </li>
                            </ul>
                        </li>



                    </ul>
                    <hr>

                </div>
            </div>

</body>
</html>
