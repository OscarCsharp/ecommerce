<?php 
session_start();
if (!isset($_SESSION['user'])) {
  header("location:vendor.php");
}

include "./vendor/top.php"; 

?>
 
<?php include "./vendor/navbar.php"; ?>

<div class="container-fluid">
  <div class="row">
    
    <?php include "./vendor/sidebar.php"; 

    $admin= $_SESSION['user'];

    if($admin == 'storeadmin@tsalastore.co.za'){
    ?>

      <!-- <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas> -->

       <h2>All Vendors</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Address</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody id="admin_list">
          </tbody>
        </table>
      </div> 

      <?php 
    }
      else{}
        ?>

    </main>
  </div>
</div>

<?php include "./vendor/footer.php"; ?>

<script type="text/javascript" src="./js/admin.js"></script>