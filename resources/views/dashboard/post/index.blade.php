@extends('dashboard.layouts.main')

@section('content')
<!-- ============================================================== -->
<!-- RECENT SALES -->
<!-- ============================================================== -->
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
                    <h3 class="box-title mb-0">Daftar Postingan Ridwan Network</h3>
                    <div class="col-md-3 col-sm-4 col-xs-6 ms-auto text-end">
                        <button class="btn btn-primary"><a href="/post/create" class="text-decoration-none text-light"><i class="fas fa-plus"></i> Tambah Post</a></button>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table no-wrap">
                        <thead>
                            <tr>
                                <th class="border-top-0">#</th>
                                <th class="border-top-0">Judul</th>
                                <th class="border-top-0">Penulis</th>
                                <th class="border-top-0">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($posts as $post)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $post->judul }}</td>
                                <td>riidwanef</td>
                                <td>
                                    <a href="/view_post/{{ $post->id }}" class="btn btn-info text-white" title="Lihat Detail"><i class="fas fa-search"></i></a>
                                    <a href="/post/{{ $post->id }}/edit" class="btn btn-warning text-white" title="Edit Data"><i class="fas fa-edit"></i></a>
                                    <form action="/post/{{ $post->id }}" method="post" class="d-inline">
                                        @csrf
                                        @method('delete')
                                        <button type="submit" class="btn btn-danger text-white" title="Hapus Data" onclick="return confirm('Data ini akan dihapus! Anda yakin untuk menghapus data ini?')"><i class="fas fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ============================================================== -->
@endsection

@push('script')
    
@endpush