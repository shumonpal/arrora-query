

@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">

        @include('shared._sidebar')

        <div class="col-md-9">
            <div class="card">
                <div class="card-header">
                    <div class="d-flex align-items-center">
                        <h2>Create Question</h2>
                        <div class="ml-auto">
                            <a href="{{ route('questions.index') }}" class="btn btn-outline-secondary">Back to all Questions</a>
                        </div>
                    </div>
                    
                </div>

                <div class="card-body">
                   <form action="{{ route('questions.store') }}" method="post">
                        @include ("questions._form", ['buttonText' => "Create Question"])
                   </form>
                </div>
            </div>
            <!-- <create-question></create-question> -->
        </div>
    </div>
</div>
@endsection

