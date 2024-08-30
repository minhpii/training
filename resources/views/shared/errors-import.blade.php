@if (Session::has('import_errors'))
  <script>
    Swal.fire({
      title: 'Errors!',
      html: `
        <ul>
         @foreach (Session::get('import_errors') as $err)
          <li>{{ $err }}</li>
         @endforeach
        </ul>
      `,
      icon: 'error',
      confirmButtonText: 'OK'
    });
  </script>
@endif
