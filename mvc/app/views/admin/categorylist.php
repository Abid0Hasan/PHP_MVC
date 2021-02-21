<h2>Category list</h2>
   
    <?php

   if (!empty($_GET['msg'])) {
	    	$msg = unserialize(urldecode($_GET['msg']));
	    	if(isset($msg)){
	          foreach ($msg as $key => $value) {
	    		echo "<span style='color:blue; font-weight:bold'>".$value."</span>";
	    	   }
	    	}else{

	   	  header("Location: ".BASE_URL."/Admin");

         }
         
       }

	?>

	<table class="tblone">
		<tr>
			<th>Serial</th>
			<th>Category Name</th>
			<th>Category Tilte</th>
			<th>Action</th>
		</tr>

	<?php
	  $i=0;
      foreach ($cat as $key => $value) {
      $i++;
	?>

		<tr>
			<td><?php echo $i; ?></td>
			<td><?php echo $value['name']; ?></td>
			<td><?php echo $value['title']; ?></td>
			

			<?php if(Session::get("level")==1){ ?>
		   <td>
				<a href="<?php echo BASE_URL; ?>/Admin/editCategory/<?php echo $value['id']; ?>">Edit</a> ||
				<a onclick="return confirm('Are you sure to delete !');" href="<?php echo BASE_URL; ?>/Admin/deleteCategory/<?php echo $value['id']; ?>">Delete</a>
		   </td>
			<?php } else { ?>
				<td>Not Permitted</td>
			<?php } ?>
		</tr>

	<?php } ?>
	</table>