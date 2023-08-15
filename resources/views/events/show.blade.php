@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><h2>{{ $event->title }}</h2></div>

                <div class="card-body">

                    <p>{{ $event->description }}</p>

                    <hr>

                    <p class="p-0 m-0">Location: {{ $event->location }}</p>
                    <p class="p-0 m-0">Date: {{ $event->event_date }}</p>
                    <p class="p-0 m-0">Time: {{ $event->event_time }}</p>

                </div>

                <div class="card-footer">
                    <div class="row">
                        <div class="col-md-10">
                            <a class="btn btn-primary text-start" href="{{ route('events.edit', $event->id) }}">Edit This Event</a>
                            <a class="btn btn-success text-start" href="/events">Back</a>
                        </div>
                        <div class="col-md-2">
                            <form action="{{ route('events.destroy', $event->id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger text-end" type="submit">Delete</button>
                            </form>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
