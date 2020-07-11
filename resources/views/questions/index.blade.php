@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">

    @include('shared._sidebar')

        <div class="col-md-9">
            <div class="d-flex align-items-center">
                <h2>Ask Question</h2>
            </div>
            @include ('layouts._messages')

            @forelse ($questions as $question)
                <questions :question="{{$question}}"></questions>
            @empty
                <div class="alert alert-warning">
                    <strong>Sorry</strong> There are no questions available.
                </div>
            @endforelse

            @if($questions instanceof \Illuminate\Pagination\AbstractPaginator)
            {{ $questions->links() }}
            @endif
        </div>
    </div>
</div>
@endsection
