<table class="table table-striped">

	<thead>
		<tr>
			<th>Symbol</th>
			<th>Name</th>
			<th>Shares</th>
			<th>Price</th>
			<th>TOTAL</th>
		</tr>
	</thead>
    
	<tbody>
<?php foreach ($positions as $position): ?>

	<tr><td><?= $position["symbol"] ?></td><td><?= $position["name"] ?></td><td><?= $position["shares"] ?></td><td>$<?= $position["price"] ?></td><td>$<?= number_format($position["price"] * $position["shares"], 2) ?></td></tr><?php endforeach ?>
	
	<?php extract($cash) ?>
<tr>
		<td colspan="4">CASH</td>
		<td>$<?= number_format($cash, 2) ?></td>
	</tr>
    
	</tbody>
    
</table>
