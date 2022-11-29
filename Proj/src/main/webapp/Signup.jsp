<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="UTF-8">



<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link href="https://fonts.googleapis.com/css?family=Assistant:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="./profile/Sigup.css">
</head>
<body>


	<div class="form">
		<div class="tab-content">
			<div id="signup">
				<h1>Sign Up</h1>
				<form action="Checksigup" method="get">
					<div class="top-row">
						<div class="field-wrap">
							<label> First Name<span class="req">*</span>
							</label> <input type="text" name="fname">
						</div>

						<div class="field-wrap">
							<label> Last Name<span class="req">*</span>
							</label> <input type="text" name="lname">
						</div>
					</div>
					<div class="field-wrap">
						<label>Email<span class="req">*</span>
						</label> <input type="email" name="email">
					</div>

					<div class="field-wrap">
						<label>Account<span class="req">*</span>
						</label> <input type="text" name="User">
					</div>
					<div class="field-wrap">
						<label> Password<span class="req">*</span>
						</label> <input type="password" name="pass">
					</div>
					<div class="field-wrap">
						<label>Check_Pass<span class="req">*</span>
						</label> <input type="password" name="check">
					</div>

					<button type="submit" class="button button-block">Accept</button>
				</form>

			</div>
		</div>
	</div>
</body>
</html>