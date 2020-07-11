<template>
    <div class="col-md-3">
        <!-- Sidebar -->
        <div class="bg-light border-right" id="sidebar-wrapper">
            <div class="list-group list-group-flush">
                <a href="/questions" class="list-group-item list-group-item-action bg-light active">All Questions</a>
                <a href="/questions?qus=favorites" class="list-group-item list-group-item-action bg-light">Popular Questions</a>
                <a href="/questions?qus=views" class="list-group-item list-group-item-action bg-light">Most views</a>
                <a href="/questions/create" class="list-group-item list-group-item-action bg-light">Ask Question</a>
                <a href="#" class="list-group-item list-group-item-action bg-light">Users</a>
            </div>
        </div>
        <!-- /#sidebar-wrapper -->
    </div>
</template>

<style>
    .active{
        background-color: #dae0e5  !important;
        color: #495057 !important;
    }
</style>