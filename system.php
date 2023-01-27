<?php			
$conn = mysqli_connect("localhost", "root", "", "data");
$all_alerts = mysqli_query($conn, "SELECT * FROM beach_alerts");
$latest_alert = mysqli_query($conn, "SELECT *FROM beach_alerts order by alert_id DESC LIMIT 1");
?>

<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<div class="row">
	<div class="col-sm-8">
		<div class="table-responsive">
			<p><h4>All Alerts
			</h4></p>
			<table class="table table-bordered"> 
			<thead>
			<tr>
				<th>S.N</th>
				<th>User ID</th>
				<th>Timestamp</th>
				<th>Latitude</th>
				<th>Longtitude</th>
				<th>Rescued</th>
				<th>Remarks</th>
				<th>IP</th>
			</tr>
			</thead>
			
<?php $i = 1; ?>
<?php foreach($all_alerts as $allalerts) : ?>
    <tr>
		<td><?php echo $i++; ?></td>
		<td><?php echo $allalerts["user_id"]; ?></td>
		<td><?php echo $allalerts["timestamp"]; ?></td>
		<td><?php echo $allalerts["latitude"]; ?></td>
		<td><?php echo $allalerts["longitude"]; ?></td>
		<td><?php echo $allalerts["isRescued"]; ?></td>
		<td><?php echo $allalerts["remarks"]; ?></td>
		<td><?php echo $allalerts["ip"]; ?></td>
    </tr>
<?php endforeach; ?>
			</table>

<div class="table-responsive">
	<table class="table table-bordered">
	<p><h4>New Alert
	</h4></p>
	<thead>
		<tr>
			<th>User ID</th>
			<th>Timestamp</th>
			<th>Latitude</th>
			<th>Longtitude</th>
			<th>Rescued</th>
			<th>Remarks</th>
			<th>IP</th>
		</tr>
	</thead>

<?php foreach($latest_alert as $latestalert) : ?>
<tr>
	<td><?php echo $latestalert["user_id"]; ?></td>
	<td><?php echo $latestalert["timestamp"]; ?></td>
	<td><?php echo $latestalert["latitude"]; ?></td>
    <td><?php echo $latestalert["longitude"]; ?></td>
	<td><?php echo $latestalert["isRescued"]; ?></td>
    <td><?php echo $latestalert["remarks"]; ?></td>
	<td><?php echo $latestalert["ip"]; ?></td>
	
</tr>
<?php endforeach; ?>
	</table>