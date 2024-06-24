@extends('layouts.app')

@section('content')
<div class="container mt-5">
       <!-- Slider -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="{{ asset('images/slide1.jpg') }}" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>First Slide</h5>
                    <p>Some description for the first slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="{{ asset('images/slide2.jpg') }}" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Second Slide</h5>
                    <p>Some description for the second slide.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="{{ asset('images/slide3.jpg') }}" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Third Slide</h5>
                    <p>Some description for the third slide.</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="jumbotron" style="background-color: #900C3F; color: white;">
        <h1 class="display-4">Welcome to the Bidding System</h1>
        <p class="lead">A platform to participate in auctions and place your bids.</p>
        <hr class="my-4" style="border-color: white;">
        <p>Click the button below to get started.</p>
        <a class="btn btn-light btn-lg" href="{{ route('auctions.index') }}" role="button">View Auctions</a>
    </div>

    <div class="row mt-4">
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="{{ asset('images/card1.png') }}" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Active Auctions</h5>
                    <p class="card-text">Browse and bid on active auctions happening right now.</p>
                    <a href="{{ route('auctions.index') }}" class="btn btn-custom">Explore Auctions</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="{{ asset('images/card2.png') }}" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Your Bids</h5>
                    <p class="card-text">Track your bids and see if you are winning.</p>
                    <a href="{{ route('bids.index') }}" class="btn btn-custom">View Your Bids</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="{{ asset('images/card3.png') }}" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Items</h5>
                    <p class="card-text">Discover a variety of items available for auction.</p>
                    <a href="{{ route('items.index') }}" class="btn btn-custom">Browse Items</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
