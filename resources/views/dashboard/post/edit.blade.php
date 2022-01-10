@extends('dashboard.layouts.main')

@section('content')
<!-- ============================================================== -->
<!-- RECENT SALES -->
<!-- ============================================================== -->
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12 col-lg-12 col-sm-12">
            @if (session()->has('success'))
                <div class="alert alert-success" role="alert">
                    {{ session('success') }}
                </div>
            @endif
            @if (session()->has('destroy'))
                <div class="alert alert-danger" role="alert">
                    {{ session('destroy') }}
                </div>
            @endif
            <div class="white-box">
                <div class="d-md-flex mb-4">
                    <h3 class="box-title mb-0">Edit Postingan</h3>
                    <hr>
                </div>
                <form action="/post/{{ $post->id }}" method="POST">
                    @method('put')
                    @csrf
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="fw-bold">Judul Postingan</label>
                                <input type="text" value="{{ $post->judul }}" name="judul" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="" class="fw-bold">Body Postingan</label>
                                <input id="body" value="{{ $post->body }}" type="hidden" name="body">
                                <input value="{{ $post->id }}" type="hidden" name="id">
                                <trix-editor input="body"></trix-editor>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary"><i class="far fa-save"></i>&nbsp; Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ============================================================== -->
@endsection

@push('script')
    
@endpush