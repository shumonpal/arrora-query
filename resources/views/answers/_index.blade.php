@if ($answersCount > 0)
<div class="row">
    <div class="col-md-12">
        <div class="mt-4" v-cloak>
            <h2>{{ $answersCount . " " . str_plural('Answer', $answersCount) }}</h2>

            <hr>
            @include ('layouts._messages')

            @foreach ($answers as $answer)
                <answer :answer="{{ $answer }}"></answer>                  
            @endforeach    
            
        </div>
    </div>
</div>
@endif