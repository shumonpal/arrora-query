<div class="col-md-3">
    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
        <div class="list-group list-group-flush">
            <a href="{{ url('/') }}" 
                class="list-group-item list-group-item-action bg-light {{ Request::segment(1) == '' ? 'active' : ''}}">All Questions</a>
            <a href="{{ route('questions.index', ['qus' => 'favorites']) }}" 
                class="list-group-item list-group-item-action bg-light {{ Request::query('qus') == 'favorites' ? 'active' : ''}}">Popular Questions</a>
            <a href="{{ route('questions.index', ['qus' => 'views']) }}"
                class="list-group-item list-group-item-action bg-light {{ Request::query('qus') == 'views' ? 'active' : ''}}">Most views</a>
            <a href="{{ route('questions.create') }}" 
                class="list-group-item list-group-item-action bg-light {{  Request::segment(1) == 'questions' &&  Request::segment(2) == 'create' ? 'active' : ''}}">Ask Question</a>
            <a href="#" class="list-group-item list-group-item-action bg-light">Users</a>
        </div>
    </div>
    <!-- /#sidebar-wrapper -->
</div>


