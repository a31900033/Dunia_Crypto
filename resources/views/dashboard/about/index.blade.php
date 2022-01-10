@extends('dashboard.layouts.main')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-sm-12">
                @if (session()->has('success-edit'))
                    <div class="alert alert-success" role="alert">
                        {{ session('success-edit') }}
                    </div>
                @endif
                @if (session()->has('destroy'))
                    <div class="alert alert-danger" role="alert">
                        {{ session('destroy') }}
                    </div>
                @endif
                <div class="white-box">
                    <div class="d-md-flex mb-3">
                        <h3 class="box-title mb-0">Edit About Me</h3>
                    </div>
                    <form action="/about_admin/{{ $about->id }}" method="POST">
                        @method('put')
                        @csrf
                        <input type="hidden" name="id" value="{{ $about->id }}">
                        <div class="mb-3">
                            <input id="body" value="{{ $about->about_me }}" type="hidden" name="about_me">
                            <trix-editor input="body"></trix-editor>
                        </div>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <button class="btn btn-primary" type="submit"><i class="far fa-save"></i>&nbsp; Simpan</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection