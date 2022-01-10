@extends('dashboard.layouts.main')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12">
                <div class="white-box">
                    <div class="d-md-flex mb-3">
                        <div class="d-grid gap-2 d-md-block">
                            <button class="btn btn-danger"><a href="/contact" class="text-decoration-none text-light"><i class="fas fa-arrow-circle-left"></i>&nbsp;Kembali</a></button>
                        </div>
                    </div>
                    <div class="row mt-4">
                        <div class="col-md-6">
                            <h5 class="fw-bold">Nama Pengirim</h5>
                            <p>{{ $item->name }}</p>
                        </div>
                        <div class="col-md-6">
                            <h5 class="fw-bold">Email/Nomor Pengirim</h5>
                            <p><a href="{{ $item->email }}">{{ $item->email }}</a> | {{ $item->phone_number }}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h5 class="fw-bold">Isi Pesan</h5>
                            <p>{{ $item->message }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection