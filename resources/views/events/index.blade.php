@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">All Events</div>



                <div class="card-body">

                    <a class="btn btn-danger" href="/home">Dashboard</a>
                    <a class="btn btn-primary" href="/events/create">Create New Event</a>

                    <div class="row mt-3">


                        <div class="table-responsive">
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">SL</th>
                                        <th scope="col">TITLE</th>
                                        <th scope="col">DESCRIPTION</th>
                                        <th scope="col">LOCATION</th>
                                        <th scope="col">DATE</th>
                                        <th scope="col">TIME</th>
                                        <th scope="col">ACTION</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @foreach ($events as $key => $event)
                                    <tr class="">
                                        <td scope="row">{{ $key+1 }}</td>
                                        <td>{{ $event->title }}</td>
                                        <td>{!! Str::words($event->description, 10, ' ...') !!}</td>
                                        <td>{{ $event->location }}</td>
                                        <td>{{ $event->event_date }}</td>
                                        <td>{{ $event->event_time }}</td>
                                        <td>
                                            <a class="btn btn-success" href="{{ route('events.show', $event->id) }}">View</a>
                                            <a class="btn btn-primary" href="{{ route('events.edit', $event->id) }}">Edit</a>
                                            <a class="btn btn-danger" href="{{ route('events.destroy', $event->id) }}">Delete</a>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>

                            <div class="d-flex">
                                {!! $events->links() !!}
                            </div>
                        </div>



                      </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
