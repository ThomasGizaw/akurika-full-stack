{{-- @php
    $setting = App\Models\Setting::first();
    $user = Auth::guard('web')->user();
@endphp --}}

<div class="modal fade" tabindex="-1" role="dialog" id="deleteModal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">{{__('admin.Item Delete Confirmation')}}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <p>{{__('admin.Are You sure want to delete this item ?')}}</p>
        </div>
        <div class="modal-footer bg-whitesmoke br">
            <form id="deleteForm" action="" method="POST">
                @csrf
                @method("DELETE")
                <button type="button" class="btn btn-danger" data-dismiss="modal">{{__('admin.Close')}}</button>
                <button type="submit" class="btn btn-primary">{{__('admin.Yes, Delete')}}</button>
            </form>

        </div>
      </div>
    </div>
  </div>




  <script src="{{ asset('backend/js/popper.min.js') }}"></script>
  <script src="{{ asset('backend/js/bootstrap.min.js') }}"></script>
  <script src="{{ asset('backend/datatables/jquery.dataTables.min.js') }}"></script>
  <script src="{{ asset('backend/datatables/dataTables.bootstrap4.min.js') }}"></script>
  <script src="{{ asset('backend/js/jquery.nicescroll.min.js') }}"></script>
  <script src="{{ asset('backend/js/moment.min.js') }}"></script>
  <script src="{{ asset('backend/js/stisla.js') }}"></script>
  <script src="{{ asset('backend/js/scripts.js') }}"></script>
  <script src="{{ asset('backend/js/custom.js') }}"></script>
  <script src="{{ asset('backend/js/select2.min.js') }}"></script>
  <script src="{{ asset('backend/js/tagify.js') }}"></script>
  <script src="{{ asset('toastr/toastr.min.js') }}"></script>
  <script src="{{ asset('backend/js/bootstrap4-toggle.min.js') }}"></script>
  <script src="{{ asset('backend/js/fontawesome-iconpicker.min.js') }}"></script>
  <script src="{{ asset('backend/js/bootstrap-datepicker.min.js') }}"></script>
  <script src="{{ asset('backend/summernote/summernote.min.js') }}"></script>
  <script src="{{ asset('backend/clockpicker/dist/bootstrap-clockpicker.js') }}"></script>

    <script>
        @if(Session::has('messege'))
        var type="{{Session::get('alert-type','info')}}"
        switch(type){
            case 'info':
                toastr.info("{{ Session::get('messege') }}");
                break;
            case 'success':
                toastr.success("{{ Session::get('messege') }}");
                break;
            case 'warning':
                toastr.warning("{{ Session::get('messege') }}");
                break;
            case 'error':
                toastr.error("{{ Session::get('messege') }}");
                break;
        }
        @endif
    </script>

    @if ($errors->any())
        @foreach ($errors->all() as $error)
            <script>
                toastr.error('{{ $error }}');
            </script>
        @endforeach
    @endif


<script>
    $('#dataTable').DataTable();
</script>

</body>
</html>
