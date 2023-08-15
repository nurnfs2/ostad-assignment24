@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Edit Event</div>

                <div class="card-body">

                    <div class="container">
                        <form method="POST" action="{{ route('events.update', $event->id) }}">
                            @csrf
                            @method('PATCH')
                            <div class="mb-3 row">
                                <label for="inputName" class="col-4 col-form-label">Title</label>
                                <div class="col-8">
                                    <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" id="title" value="{{ $event->title }}" placeholder="Title">
                                    @error('title')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputName" class="col-4 col-form-label">Description</label>
                                <div class="col-8">
                                    <textarea name="description" class="form-control @error('description') is-invalid @enderror" rows="4" placeholder="Description">{{ $event->description }}</textarea>
                                    @error('description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputName" class="col-4 col-form-label">Location</label>
                                <div class="col-8">
                                    <input type="text" class="form-control @error('location') is-invalid @enderror" name="location" value="{{ $event->location }}" id="location" placeholder="Location">
                                    @error('location')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputName" class="col-4 col-form-label">Event Date</label>
                                <div class="col-3">
                                    <input type="date" class="form-control" value="{{ $event->event_date }}" name="event_date">
                                    @error('event_date')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputName" class="col-4 col-form-label">Event Time</label>
                                <div class="col-3">
                                    <input type="time" class="form-control" value="{{ $event->event_time }}" name="event_time">
                                    @error('event_time')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <div class="offset-sm-4 col-sm-8">
                                    <button type="submit" class="btn btn-primary">Update Event</button>
                                    <a href="/events" class="btn btn-danger">Cancel</a>
                                </div>
                            </div>
                        </form>
                    </div>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
