@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    <a href="/events" class="btn btn-primary">Show All Events</a>



                    <div class="row mt-3">
                      @foreach ($events as $event)
                        <div class="col-4 mb-3">
                            <div class="card">
                            <div class="card-body">
                                <h3 class="card-title">{{ $event->title }}</h3>
                                <p class="card-text">{!! Str::words($event->description, 20, ' ...') !!}</p>
                                <a class="btn btn-danger" href="{{ route('events.show', $event->id) }}">View Details</a>
                            </div>
                            </div>
                        </div>
                      @endforeach
                    </div>


                </div>



                </div>
            </div>
        </div>
    </div>
</div>
@endsection
