@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Detail Data Produk
				</div>
				<div class="card-body">
					<table class="table">
						<tbody>
							<h3>{{$produk->nama_produk}}</h3>
							<hr>
							<p>
							{{$produk->harga}} |
							Stok : {{$produk->stok}} |
							Berat : {{$produk->berat}} kg |
							Seller : {{$produk->seller->username}} |
							Tanggal produk : {{$produk->created_at->diffForHumans()}}
							</p>
							<p>
								{!! nl2br($produk->deskripsi) !!}
							</p>

							<p>
								<img src="{{url("system/public/$produk->foto")}}" alt="">
							</p>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection