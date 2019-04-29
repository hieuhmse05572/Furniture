<html>

<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Latest compiled and minified CSS -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.1/css/all.min.css">

    <!-- Link Bootstrap JS and JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</head>

<body>

    <nav class="navbar navbar-dark bg-dark">
        <a href="#" class="navbar-brand">MyContact App</a>
    </nav>

    <div class="container">

        <div class="row mt-4">
            <div class="col-md-12 text-center">
                <h3>Contact form</h3>

            </div>
        </div>

        <div class="row mt-2 d-flex justify-content-center">
            <div class="col-md-4 text-center">
                <form method="post" action="save" class="form my-2 my-lg-0">
                    <input class="form-control mt-2" placeholder="Contact name" type="" name="name">
                    <input class="form-control mt-2" placeholder="Contact email" type=""  name="email">
                    <input class="form-control mt-2" placeholder="Contact Phone" type="" name="phone">
                    <button class="btn btn-primary mt-2 center btn-block" type="submit">
                        Save</button>
                </form>
            </div>

        </div>
    </div>

</body>

</html>