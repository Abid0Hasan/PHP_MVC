<?php ob_start(); ?>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>


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

<table id="mytableId" class="display" data-page-length='3'>
	<thead>
	<tr>
		<th width="5%">No</th>
		<th width="20%">Title</th>
		<th width="35%">Content</th>
		<th width="15%">Category</th>
		<th width="25%">Action</th>
	</tr>
	</thead>
	<tbody>
	<?php 
     $i = 0;
     foreach ($listpost as $key => $value) {
     $i++;

	?>

	<tr>
		<td><?php echo $i; ?></td>
		<td><?php echo $value['title']; ?></td>
		<td>
			<?php 

		      $text = $value['content']; 
					if (strlen($text) > 40) {
						$text = substr($text, 0, 40);
						echo $text;
					}
		     ?>
		   	
		   </td>
		<td>
			<?php 

			   foreach ($catlist as $key => $cat) {
			   	if ($cat['id'] == $value['cat']) {
			   		echo $cat['name'];
			   	}
			   }
			    

			  ?>
				
			</td>

			<?php if(Session::get("level")==1){ ?>
		<td>
				<a href="<?php echo BASE_URL; ?>/Admin/editArticle/<?php echo $value['id']; ?>">Edit</a> ||
				<a onclick="return confirm('Are you sure to delete !');" href="<?php echo BASE_URL; ?>/Admin/deleteArticle/<?php echo $value['id']; ?>">Delete</a>
		</td>
			<?php } else { ?>
				<td>Not Permitted</td>
			<?php } ?>
	</tr>

<?php } ?>
</tbody>
</table>

<script >
	$(document).ready( function () {
    $('#mytableId').DataTable();
} );
</script>