<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<br>
<div class="card">
  <div class="card-header">
    Form
    <lable>${message}</lable>
  </div>
  <div class="card-body">
    	<form action="/nhutnhpc05876_asm2/video" method="post" enctype="multipart/form-data">
    		<div class="mb-3">
			  	<label for="exampleFormControlInput1" class="form-label">Id</label>
			  	<input type="text" class="form-control" id="exampleFormControlInput1" name="id" value="${video.id}">
			</div>
			<div class="mb-3">
			  	<label for="exampleFormControlInput1" class="form-label">Title</label>
			  	<input type="text" class="form-control" id="exampleFormControlInput1" name="title" value="${video.title}">
			</div>
			<div class="mb-3">
			  	<label for="exampleFormControlInput1" class="form-label">Poster</label>
			  	<input type="file" class="form-control" id="exampleFormControlInput1" name="poster">
			</div>
			<div class="mb-3">
			  	<label for="exampleFormControlInput1" class="form-label">link</label>
			  	<input type="text" class="form-control" id="exampleFormControlInput1" name="link" value="${video.link}">
			</div>
			<div class="mb-3">
			  	<label for="exampleFormControlInput1" class="form-label">description</label>
			  	<input type="text" class="form-control" id="exampleFormControlInput1" name="description" value="${video.description}">
			</div>
			<div class="mb-3">
			  	<label for="exampleFormControlInput1" class="form-label">Views</label>
			  	<input type="text" class="form-control" id="exampleFormControlInput1" name="views" value="0" value="${video.views}">
			</div>
			<button formaction="/nhutnhpc05876_asm2/insert" class="btn btn-primary">Create</button>
			<button formaction="/nhutnhpc05876_asm2/update"  class="btn btn-success">Update</button>
			<button formaction="/nhutnhpc05876_asm2/delete"  class="btn btn-danger">Delete</button>
    	</form>
  </div>
</div>       
<hr>    
<div class="card">
  <div class="card-header">
    Danh sách
  </div>
  <div class="card-body">
    <table class="table">
	  <thead>
	    <tr>
	      <th scope="col">Id</th>
	      <th scope="col">Title</th>
	      <th scope="col">Poster</th>
	      <th scope="col">Link</th>
	      <th scope="col">Description</th>
	      <th scope="col">Views</th>
	      <th scope="col">Hành động</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach var="video" items="${videos }">
	  		<tr>
		      <th scope="row">${video.id }</th>
		      <td>${video.title }</td>
		      <td>${video.poster }</td>
		      <td>${video.link }</td>
		      <td>${video.description }</td>
		      <td>${video.views }</td>
		      <td><a href="/nhutnhpc05876_asm2/edit?id=${video.id}">edit</a></td>
		    </tr>
	  	</c:forEach>
	    
	    
	  </tbody>
	</table>
  </div>
</div>   