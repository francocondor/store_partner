<div class="box-contrato">

    <p>
        @if (config('app.catalog_contract_id') == $smartphone->contract_id)
            <span>{{ $smartphone->contract_name }}</span>
        @else
            <span>Con contrato de {{ $smartphone->contract_name }}</span>
        @endif
    </p>
</div>