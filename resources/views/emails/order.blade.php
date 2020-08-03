<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Confirmación de Pedido | Bitel</title>
</head>
<style>
	@import url('http://fonts.googleapis.com/css?family=Open+Sans');
	html,
	body{
		margin: 0;
		padding: 0;
		color: #575756;
		font-size: 14px;
		font-family:'Open Sans';
	}
</style>
<body>
	<table style="width:100%;max-width:600px;margin:0px auto;border-collapse:collapse">
		<thead style="background: #ffe60d; ">
			<tr>
				<th width="8%"><img src="{{config('app.url')}}/images/email/bg-header.png" alt="lo  gotipo"></th>
				<th style="height: 40px;color: #008c95; font-size: 19px;padding-top: 20px; padding-bottom: 15px; text-align: right; padding-right: 30px;"><strong>Tu pedido esta siendo evaluado</strong></th>
			</tr>
		</thead>
		<tbody style="background-color: #f1f8f8; width: 100%;text-align: center;border-top: 10px solid #ffffff;border-bottom: 10px solid #ffffff;">
			<tr style="height: 30px">
				<td colspan="2" style="padding-top: 15px">Estimado(a):</td>
			</tr>
			<tr style="height: 30px">
				<td colspan="2"><strong>{{$order_detail['first_name']}} {{$order_detail['last_name']}}</strong></td>
			</tr>
			<tr style="height: 30px">
				<td colspan="2" style="color: #008c95; font-size: 20px;"><strong>¡ Gracias por comprar en Bitel!</strong></td>
			</tr>
			<tr style="height: 30px">
				<td colspan="2" style="color: #008c95; font-size: 20px;"><strong>Te estaremos llamando del 930123123</strong></td>
			</tr>
			<tr style="height: 30px">
				<td colspan="2" style=" font-size: 14px;padding-bottom: 15px">Hemos recibido tu pedido satisfactoriamente con el Nº de orden: <b>{{$order_id}}</b></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2" style="padding-top: 15px ;padding-left: 30px;"><strong><i>Te informamos que el pago del pedido se realizará en el delivery.</i></strong></td>
			</tr>
			<tr>
				<td colspan="2" style="padding-bottom: 20px ;padding-left: 30px">A continuación encontrarás los detalles de tu orden:</td>
			</tr>
			
		</tfoot>
	</table>
	<table style="width:100%;max-width:600px;margin:0px auto;border-collapse:collapse;color:#008c95;">
		<thead style="background-color: #f1f8f8">
			<tr style="height: 40px;">
				<th style="border-left: 1px solid white;border-right: 1px solid white;width: 25%;">Producto</th><!--
				<th style="border-left: 1px solid white;border-right: 1px solid white;width: 40%;">Tiempo Estimado de Entrega</th>-->
				<th style="border-left: 1px solid white;border-right: 1px solid white;width: 10%;">Cantidad</th>
				<th style="border-left: 1px solid white;border-right: 1px solid white;width: 25%;">Precio</th>
			</tr>
		</thead>
		<tbody style="text-align: center;font-size: 13px;">
			@foreach($order_items as $i => $item)
			<?php 
			$equipo=0;
			$plan_price=0;
			if($products[$i]->category_id<=3){
				$equipo=1;
			}
			if(isset($products[$i]->plan_price)){
				$plan_price=$products[$i]->plan_price;
			}
			?>
			<tr style="height: 45px;">
				<td style="border: 1px solid #008c95">	
				<!--we replaced Bitel Planes Control by the actual name of the ordered plan-->				
				@if($equipo==0)
					<?php if($order_detail['service_type']=="Postpago") echo "Plan "; ?>
					 {{$products[$i]->plan_name}}
				@else
				<!--if it's a product and not a plan-->
					{{$products[$i]->brand_name}} {{$products[$i]->product_model}}
				@endif		
				<!--we added renta adelantada only for postpaid orders-->		
				@if($order_detail['service_type']=="Postpago")
					@if($equipo==0)
						(Incluye Renta Adelantada)
						<?php $item['subtotal_igv']=$order_detail['total_igv']=$plan_price; ?>
					@endif
				@endif
				</td>
				<td style="border: 1px solid #008c95">{{$item['quantity']}}</td>
				@if(isset($item['promo_id']))
				<td style="border: 1px solid #008c95">
					<span>S/{{$products[$i]->promo_price}}</span>
					<span style="text-decoration: line-through; font-size: 12px; color: #a2a2a2; margin-left: 5px;">S/{{$products[$i]->product_price * $item['quantity']}}</span>
				</td>
				@else
				<td style="border: 1px solid #008c95">S/{{$item['subtotal_igv']}}</td>
				@endif
			</tr>
			@endforeach
		</tbody>
		<tfoot>
			<!--there s an additional row for the plan if you ordered a postpago cellphone-->
			@if($order_detail['service_type']=="Postpago")
				@if($equipo==1)
					<tr style="height: 45px;">
						<td colspan="2" style=" border: 1px solid #008c95;text-align: center">Plan {{$order_detail['plan_name']}} (Renta Adelantada)</td>
						<td style=" border: 1px solid #008c95;text-align: center">S/{{$plan_price}}</td>
					</tr>
				@endif
			@endif
			<tr style="height: 45px;">
				<td colspan="2" style=" border: 1px solid #008c95;text-align: center">Total (IGV incluido)</td>
				<td style=" border: 1px solid #008c95;text-align: center">S/
					<?php 
						$total_con_igv=$order_detail['total_igv']; 
						if($order_detail['service_type']=="Postpago" && $equipo==1)
							$total_con_igv+=$plan_price;
						echo number_format($total_con_igv, 2, '.', '');
					?>						
				</td>
			</tr>
			<tr style="height: 45px;">
				<td colspan="2" style=" border: 1px solid #008c95;text-align: center">Costo de envío</td>
				<td style=" border: 1px solid #008c95;text-align: center">GRATIS</td>
			</tr>
			<tr style="height: 45px;">
				<td colspan="2" style="height: 35px;text-align: right"><strong>Total compra:</strong></td>
				<th style="height: 35px;text-align: center"><strong>S/{{number_format($total_con_igv, 2, '.', '')}}</strong></th>
			</tr>
		</tfoot>
	</table>
	<table style="width:100%;max-width:550px;margin:0px auto;border-collapse:collapse;">
		<thead>
			<tr><td><strong>Fecha y Hora:</strong></td></tr>
			<tr><td>{{$order_detail['fecha']}}</td></tr>
			<tr><td><br></td></tr>
		</thead>
		<tbody>
			<tr><td>Podrás dar seguimiento a tu pedido ingresando al siguiente link:</td></tr>
			<tr><td><strong>{{config('app.url')}}/trackeo/{{$order_id}}</strong></td></tr>
		</tbody>
	</table>
	<table style="width:100%;max-width:550px;margin:20px auto;border-collapse:collapse;">
		<tbody>
			<tr>
				<td style="vertical-align: top;"><img src="{{config('app.url')}}/images/email/icon-email.png" width="8px" alt="icon" style="margin-right: 9px"></td>
				<td>Dependiendo de la evaluación del asesor telefónico se pagarán rentas adelantadas.</td>
			</tr>
			<tr>
				<td style="vertical-align: top;"><img src="{{config('app.url')}}/images/email/icon-email.png" width="8px" alt="icon" style="margin-right: 9px"></td>
				<td>Un representante se comunicará contigo para confirmar tu pedido.</td>
			</tr>
			<tr>
				<td style="vertical-align: top;"><img src="{{config('app.url')}}/images/email/icon-email.png" width="8px" alt="icon" style="margin-right: 9px"></td>
				<td>El costo de envío es gratis.</td>
			</tr>
			<tr>
				<td style="vertical-align: top;"><img src="{{config('app.url')}}/images/email/icon-email.png" width="8px" alt="icon" style="margin-right: 9px">
				<td>Para poder ver los términos y condiciones de uso de la tienda virtual Bitel.</td>
			</tr>
			<tr>
				<td style="vertical-align: top;"><img src="{{config('app.url')}}/images/email/icon-email.png" width="8px" alt="icon" style="margin-right: 9px"></td>
				<td>Ingresa al siguiente link: {{config('app.url')}}/files/terminos</td>
			</tr>
			<tr>
				<td style="vertical-align: top;"><img src="{{config('app.url')}}/images/email/icon-email.png" width="8px" alt="icon" style="margin-right: 9px"></td>
				<td>Para cualquier consulta llamar al 123, al 930-123-123, al 0800-79-123, enviar un correo a servicioalcliente@viettelperu.com.pe ó escribir al WhatsApp 929-955-300.</td>
			</tr>
		</tbody>
	</table>
	<table style="width:100%;max-width:600px;margin:0px auto;border-collapse:collapse;background-color: #ffe60d;">
		<tbody>
			<tr style="height: 65px;">
				<td style="text-align: center; font-size: 13px;padding-top: 10px; padding-bottom: 10px;">Este correo es informativo, por favor no responder a esta dirección de correo, ya que no se encuentra habilitada para recibir mensajes.</td>
			</tr>
		</tbody>
	</table>	
</body>
</html>