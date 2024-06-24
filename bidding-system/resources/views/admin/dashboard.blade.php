@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <div class="jumbotron">
        <h1>Admin Dashboard</h1>
        <p>Welcome, {{ Auth::guard('admin')->user()->name }}</p>
        <a href="{{ route('admin.logout') }}" class="btn btn-danger">Logout</a>
    </div>
</div>
@endsection
