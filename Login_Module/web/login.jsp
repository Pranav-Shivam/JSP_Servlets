
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <form action="Login">
                        <div class="card">
                            <div class="card-header bg-dark text-white">
                                <h3>Login Here</h3>
                            </div>
                            <div class="card-body bg-secondary ">
                                <div class="from-group">
                                    <input name="uname" class="from-control" placeholder="User name "/>
                                </div>
                                <br><!-- comment -->
                                <br>
                                <div class="from-group">
                                    <input name="pass" class="from-control" placeholder="Password "/>
                                </div>
                            </div>
                            <div class="card-footer text-white text-center bg-dark">
                                <button class="btn class-outline-light" type="submit" value="login"> Login </button>
                            </div> 
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
