<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	

	  <div class="container mt-4">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
		  <li class="nav-item">
			<a class="nav-link active" id="user-edition-tab" data-toggle="tab" href="#user-edition" role="tab" aria-controls="user-edition" aria-selected="true">User Edition</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" id="user-list-tab" data-toggle="tab" href="#user-list" role="tab" aria-controls="user-list" aria-selected="false">User List</a>
		  </li>
		</ul>
		<div class="tab-content" id="myTabContent">
		  <!-- User Edition Tab Panel -->
		  <div class="tab-pane fade show active" id="user-edition" role="tabpanel" aria-labelledby="user-edition-tab">
			<h2>User Edition</h2>
			<div class="form-group user-input">
			  <label for="username">Username</label>
			  <input type="text" class="form-control" id="username">
			</div>
			<div class="form-group user-input">
			  <label for="password">Password</label>
			  <input type="password" class="form-control" id="password">
			</div>
			<div class="form-group user-input">
			  <label for="fullname">Fullname</label>
			  <input type="text" class="form-control" id="fullname">
			</div>
			<div class="form-group user-input">
			  <label for="email">Email</label>
			  <input type="email" class="form-control" id="email">
			</div>
			<button type="button" class="btn btn-primary">Update</button>
			<button type="button" class="btn btn-danger">Delete</button>
		  </div>
	  
		  <!-- User List Tab Panel -->
		  <div class="tab-pane fade" id="user-list" role="tabpanel" aria-labelledby="user-list-tab">
			<h2>User List</h2>
			<!-- User list content goes here -->
			<table class="table">
			  <thead>
				<tr>
				  <th scope="col">Username</th>
				  <th scope="col">Fullname</th>
				  <th scope="col">Email</th>
				  <th scope="col">Actions</th>
				</tr>
			  </thead>
			  <tbody>
				<!-- User data rows will be populated here -->
			  </tbody>
			</table>
		  </div>
		</div>
	  </div>