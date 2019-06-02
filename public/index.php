<?php
include '../php/products/read.php';
?>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Product register</title>
  
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="css/style.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Product register</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Products
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container">
 
    <header class="jumbotron my-4">
      <h1 class="display-3">Welcome to the product register</h1>
      <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
      <p>
        <a class="btn btn-primary btn-lg" data-toggle="collapse" href="#collapseFilter" role="button" aria-expanded="false" aria-controls="collapseFilter">Filter products</a>
      </p>
      
      <form method="POST" action="test.php">
        <div class="collapse" id="collapseFilter">
          <div class="card card-body">
            <div class="d-flex flex-row">
              
              
              <div class="d-flex flex-column">
              <strong><h6>Product catagory types:</h6></strong>
                 
                   <div>
                     <div class="d-flex flex-column custom-control custom-checkbox">
                     <input type="checkbox" class="custom-control-input" id="type1" checked>
                     <label class="custom-control-label type-filter" for="type1">Type 1</label>
                     
                     
                     <input type="checkbox" class="custom-control-input" id="type2" checked>
                     <label class="custom-control-label type-filter" for="type2">Type 2</label> 
                     
                     <input type="checkbox" class="custom-control-input" id="type3" checked>
                     <label class="custom-control-label type-filter" for="type3">Type 3</label> 
                     
                     <input type="checkbox" class="custom-control-input" id="type4" checked>
                     <label class="custom-control-label type-filter" for="type4">Type 4</label>
                     </div>
                   </div>
                 
              </div>
              
              <div class="filter-space"></div>
              
              <div class="d-flex flex-column">
              <strong><h6>Enter a search query:</h6></strong>
              
                <div class="md-form active-cyan active-cyan-2 mb-3 d-flex flex-row">
                    <input class="form-control" type="text" placeholder="Search" aria-label="Search">
                </div> 
              </div>
              
              
            </div>
              <div class="d-flex justify-content-end">
                    <button class="btn btn-primary border" type="submit">
                      Search product
                      <i class="fa fa-search"></i>
                    </button>
              </div>
              
            </div>
        </div>
      </form>
    </div>
    </header>

    <div class="d-flex flex-row">

<?php
    
    $numOfCols = 4;
    $rowCount = 0;
    $bootstrapColWidth = 12 / $numOfCols;

    foreach($results as $result){
?>

      <div class="col-md-<?php echo $bootstrapColWidth; ?> product-box">
        <div class="card h-100">
          <img class="card-img-top" src="<?php echo $result['img']; ?>" alt="">
          <div class="card-body">
            <h4 class="card-title"><?php echo $result['product_name']; ?></h4>
            <p class="card-text"><?php echo $result['description']; ?></p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Show details</a>
          </div>
        </div>
      </div>
    
<?php 
    
     $rowCount++;
     if($rowCount % $numOfCols == 0) echo '</div><div class="row">';
    
     } ?>

    </div>
  </div>

  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Strand Website 2019</p>
    </div>
  </footer>

  <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>


