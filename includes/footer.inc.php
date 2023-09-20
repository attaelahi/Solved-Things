<!--? ======== FOOTER ======== -->
<footer class="footer">
  <div class="footer-left">
    <a href="./index.php"><img src="./assets/images/loga.png" /></a>
    <p>
    Welcome to Solved Things, your one-stop solution for academic success! 
    Upload and find assignments from students just like you. Join our community to access a 
    treasure trove of knowledge and ace your assignments, projects effortlessly. Get started today 
    and take the hassle out of homework!
  </p>
    <div class="socials">
      <a href="https://www.facebook.com/attaa.elahi/" target="_blank"><i class="fab fa-facebook"></i></a>
      <a href="https://www.instagram.com/attaa.elahi/" target="_blank"><i class="fab fa-youtube"></i></a>
      <a href="https://www.twitter.com/attaaelahi/" target="_blank"><i class="fab fa-twitter"></i></a>
      <a href="https://www.instagram.com/attaa.elahi/" target="_blank"><i class="fab fa-instagram"></i></a>
    </div>
  </div>
  <ul class="footer-right">
    <li>
      <h2>Quick Links</h2>
      <ul class="box">
        <li><a href="./index.php">Home</a></li>
        <li><a href="./categories.php">Categories</a></li>
        <li><a href="./bookmarks.php">Bookmarks</a></li>
        <li><a href="./search.php?trending=1">New Uploads</a></li>
      </ul>
    </li>
    <li>
      <h2>Categories</h2>
      <ul class="box">
        <?php

          // Category Query to fetch random 3 categories
  	      $categoryQuery= " SELECT  category_id, category_name
                            FROM category 
                            ORDER BY RAND() LIMIT 3";

          // Running Category Query
          $result = mysqli_query($con,$categoryQuery);

          // Returns the number of rows from the result retrieved.
          $row = mysqli_num_rows($result);


          // If query has any result (records) => If there are categories
          if($row > 0) {

          // Fetching the data of particular record as an Associative Array
          while($data = mysqli_fetch_assoc($result)) {

            // Storing the category data in variables
            $category_id = $data['category_id'];
            $category_name = $data['category_name'];
            
        ?>
        <li><a href="articles.php?id=<?php echo $category_id ?>"><?php echo $category_name ?></a></li>
        <?php  
              }
            }
          ?>
        <li><a href="./categories.php">More +</a></li>
      </ul>
    </li>
    <li>
      <h2>Join Us</h2>
      <ul class="box">
        <li>
        Ready to become part of the Solved Things community? 
        Join us now and tap into a world of collaborative learning. 
        Upload your assignments, connect with fellow students and unlock the power of shared knowledge.
        </li>
        <a href="./author-login.php" class="my-1 btn btn-secondary">Sign Up</a>
      </ul>
    </li>
  </ul>
  <div class="footer-bottom">
    <p>All Rights Reserved by &copy; SolvedThings <?php echo date("Y")?></p>
  </div>
</footer>

<!-- JQUERY SCRIPT -->
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

<!-- SCRIPT FOR BACK TO TOP BUTTON -->
<script src="../assets/js/back-to-top.js"></script>

<!-- SCRIPT FOR NAVBAR COLLAPSE -->
<script src="../assets/js/navbar-collapse.js"></script>
</body>

</html>