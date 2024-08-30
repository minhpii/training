@if (Session::has('import_errors'))
  <script>
    Swal.fire({
      title: 'Warning!',
      html: `
        <ul>
         @foreach (Session::get('import_errors') as $err)
          <li>{{ $err }}</li>
         @endforeach
        </ul>
      `,
      icon: 'warning',
      confirmButtonText: 'OK'
    });
  </script>
@endif
