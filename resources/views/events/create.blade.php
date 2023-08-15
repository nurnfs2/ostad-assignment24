@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Create Event</div>

                <div class="card-body">

                    <div class="container">
                        <form method="POST" action="{{ route('events.store') }}">
                            @csrf
                            <div class="mb-3 row">
                                <label for="inputName" class="col-4 col-form-label">Title</label>
                                <div class="col-8">
                                    <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" id="title" value="{{ old('title') }}" placeholder="Title">
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
                                    <textarea name="description" class="form-control @error('description') is-invalid @enderror" rows="4" value="{{ old('description') }}" placeholder="Description"></textarea>
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
                                    <input type="text" class="form-control @error('location') is-invalid @enderror" name="location" id="location" value="{{ old('location') }}" placeholder="Location">
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
                                    <input type="date" class="form-control" name="event_date" value="{{ old('event_date') }}">
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
                                    <input type="time" class="form-control" name="event_time" value="{{ old('event_time') }}">
                                    @error('event_time')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <div class="offset-sm-4 col-sm-8">
                                    <button type="submit" class="btn btn-primary">Create Event</button>
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
