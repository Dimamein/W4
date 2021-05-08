<html>
<head>
<title>Yahoo!!</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<div class="container">
	<h1>Add Todo</h1>
	
	<form method="post" id="form">
		<div class="form-group">
			<label for="desc" class="control-label">Description</label>
			<input class="form-control" id="desc" placeholder="Description" name="desc" type="text"/>
		</div>
		
		<div class="form-group">
			<label for="date" class="control-label">Target Date</label>
			<input class="form-control" placeholder="Target Date" id="date" name="targetDate" type="date"/>
			<input type="hidden" name="targetDate" id="newdate"/>
		</div>
		
		<div class="form-group">
			<label for="done" class="control-label">Todo status</label>
			<select class="form-control" name="isDone" id="done">
				<option selected disabled value="">Select Status</option>
				<option value="true">True</option>
				<option value="false">False</option>
			</select>
		</div>
		
		
		<input type="submit" class="btn btn-default" value="Add"/>
	</form>
</div>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		
		//For Initialize the bootstrap validator plugin. 
		$(document).on('submit','#form',function(e){
		
			if ($('#desc').val() && $('#date').val() && $('#done').val()) {

			} else {
				e.preventDefault();
			}

			if (!$('#desc').val()) {
				$('#desc').parent().addClass('has-error');
			} else {
				$('#desc').parent().removeClass('has-error');
			}
			if (!$('#date').val()) {
				$('#date').parent().addClass('has-error');
			} else {
				var newDate = new Date();
				var new_date = $('#date').val()+'T'+newDate.toLocaleTimeString()+'.000Z';
				$('#newdate').val(new_date);
				$('#date').parent().removeClass('has-error');
			}
			if (!$('#done').val()) {
				$('#done').parent().addClass('has-error');
			} else {
				$('#done').parent().removeClass('has-error');
			}
			
			
		});
	});
	</script>
</body>
</html>