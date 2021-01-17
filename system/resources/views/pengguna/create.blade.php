@extends('template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Tambah Data User
				</div>
				<div class="card-body">
					<form action="{{url('user')}}" method="post">
						@csrf
						
						<div class="form-group">
							<label for="" class="control-label">Nama</label>
							<input type="text" class="form-control" name="nama" value="nama">
						</div>
						<div class="form-group">
							<label for="" class="control-label">Username</label>
							<input type="text" class="form-control" name="username" value="username">
						</div>
						<div class="form-group">
						    <label for="" class="control-label">Email</label>
						    <input type="text" class="form-control" name="email" value="email">
						</div>
						<div class="form-group">
					        <label for="" class="control-label">Password</label>
					        <input type="password" class="form-control" name="password">
					    </div>
					    <div class="form-group">
				            <label for="" class="control-label">NO HP</label>
				            <input type="text" class="form-control" name="no_handphone">
				        </div>
				    </div>
				</div>
				<button class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
			</form>
		</div>
	</div>
</div>
</div>
</div>
@endsection