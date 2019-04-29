<html>

    <head>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <div class="col-md-8">
                    <form method="get" action="search" class="form-inline my-2 my-lg-0">
                        <input name="search" class="form-control mr-sm-2" placeholder="Search by name..." type="" value="">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i> Search</button>
                    </form>
                </div>
                <div class="col-md-4">
                    <a href="add" class="btn btn-success float-right"><i class="fa fa-plus-square"></i> New contact</a>
                </div>
            </div>
            <div class="row mt-4">
                <h5>List of contacts</h5>
            </div>
      
                <div class="row mt-2">
                    <table class="table table-light table-bordered table-hover text-center">
                        <thead class="thead-light">
                            <tr>
                                <th style="width: 5%">#</th>
                                <th style="width: 20%">Name</th>
                                <th style="width: 30%">Email</th>
                                <th style="width: 20%">Phone</th>
                                <th style="width: 20%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${contacts}" var="contact" varStatus="index">
                                <tr>
                                    <th>${index.count}</th>
                                    <td>${contact.name}</td>
                                    <td>
                                        ${contact.email}
                                    </td>
                                    <td>${contact.phone}</td>
                                    <td>
                                        <a href="edit?id=${contact.id}" class="mr-sm-2 text-primary">
                                            <i class="fas fa-pencil-alt float-center"></i>
                                        </a>
                                        <a href="remove?id=${contact.id}" class="mr-sm-2 text-danger">
                                            <i class="fas fa-trash-alt"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
        </div>

    </body>

</html>