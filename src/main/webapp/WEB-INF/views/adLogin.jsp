<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
    <title>Admin Login</title>
    <style>
        .mainhead {
            background: white;

        }



        .l-head {
            margin: auto;
            text-align: center;
            min-width: auto;



        }



        .signIn {
            margin-top: 50px;
            color: #3527C0;
        }



        .login {
            text-align: center;
            margin: auto;

        }



        .responsive {
            max-width: 100%;
            /* height: auto; */
        }



        .imgdiv {
            max-width: 100%;
            margin: auto;
        }



        .r-head {
            border: 2px solid white;
            padding: 10px 10px;
            border-radius: 25px;
            min-height: 100vh;
            text-align: center;
            box-shadow: -10px 0px 60px rgba(15, 0, 167, 0.05);
            margin: auto;
            text-align: center;
            min-width: auto;
        }



        .row {
            margin-left: 0px;
            margin-right: 0px;
        }



        .button {



            background: black;
            color: #FFFFFF;
            margin: auto;
        }
    </style>
</head>

<body>
    <div class="mainhead">
        <div class="row">
            <div class="col-sm-7 l-head">
                <img src="C:\Users\Amisha\Downloads\download.jpeg" class="responsive" alt="">
            </div>
            <div class="col-sm-5 r-head" style="background-color: white;">



                <div class="imgdiv">
                    <img src="download.jpg">
                </div>
                <!-- Form Start here -->

                <div class="signIn">
                    <h2>Sign In</h2>
                </div>



                <form>
                    <div class="col-sm-8 login">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="col-sm-8 login">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>



    <!-- end Code here -->
</body>

</html>