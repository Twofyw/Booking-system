<table class="table table-striped">

	<thead>
		<tr>
			<th>Transaction</th>
			<th>Date/Time</th>
			<th>Symbol</th>
			<th>Shares</th>
			<th>Price</th>
		</tr>
	</thead>
    
	<tbody>
    	<?php if (!empty($historys)): ?>
		<?php foreach ($historys as $history): ?>
		<tr><td><?= $history["type"] ?></td><td><?= $history["date"] ?></td><td><?= $history["symbol"] ?></td><td><?= $history["shares"] ?></td><td>$<?= $history["price"] ?></td></tr>
		<?php endforeach ?><?php endif?>
	</tbody>
    
</table>