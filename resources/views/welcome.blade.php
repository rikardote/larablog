@extends('admin.template.main')

@section('title')
    Home
@endsection

@section('content')
    <h1>Hola esto es bootstrap</h1>
   
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eget diam eu odio iaculis rhoncus non eget diam. In hac habitasse platea dictumst. Ut vitae augue facilisis, condimentum nisi et, tempor nisl. Sed condimentum at dolor sit amet viverra. Pellentesque vel tincidunt velit, et commodo lorem. Aenean id mattis felis. 
    <br>
    {!!	link_to_route('admin.auth.login', 'Log in', ['class'=>'btn btn-success'])!!}
   
@endsection
