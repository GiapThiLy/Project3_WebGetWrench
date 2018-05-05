@extends('layouts.index')
@section('title')
dichvu
@endsection
@section('content')
<link rel="stylesheet" type="text/css" href="{{asset('css/Page_DichVu.css')}}">
<form action="{{route('PostEditDichVu')}}" method="post" >
  {{csrf_field()}}
  <div class="background">
  <div class="pop-up">
    <div class="heading">
      <h3>Update Thông Tin Dịch Vụ</h3>
    </div>
    
    <div class="container">
      <table class="service" >
        <thead>
          <th >Id</th>
          <th >Dịch Vụ</th>
          <th >Giá</th>
          <th >Loại xe</th>
        </thead>
        <tbody>
          <tr>
            <td>
              <input type="text" name="id" value="{{$infor->id}}" readonly="readonly">
            </td>
            <td>
              <input type="text" name="tendichvu" value="{{$infor->TenDichVu}}">
            </td>
            <td>
              <input type="text" name="gia" value="{{$infor->Gia}}">
            </td>
            <td>
              <input type="text" name="loaixe" value="{{$infor1->TenPhuongTien}}" readonly="readonly">
            </td>            
          </tr>
        </tbody>
        <tbody>
          <th colspan="4">
            <input type="submit" name="save" value="Update" >
          </th>
        </tbody>
    </table>
    </div>
  </div>
</div>  
</form>
@endsection 