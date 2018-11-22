<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Hesap Makinesi</title>
<link href="<c:url value='/webjars/bootstrap/css/bootstrap.min.css' />"
	rel="stylesheet"></link>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/resources/js/calculator.js"></script>

<style>
body {
	background: url('/resources/image/blueone.jpg') no-repeat center center
		fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong class="">Hesap Makinesi</strong>

					</div>
					<div class="panel-body">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="firstNumber" class="col-sm-3 control-label">Sayı
									1</label>
								<div class="col-sm-9">
									<input type="number" class="form-control" id="firstNumber"
										placeholder="Bir sayı giriniz..." required>
								</div>
							</div>
							<div class="form-group">
								<label for="secondNumber" class="col-sm-3 control-label">Sayı
									2</label>
								<div class="col-sm-9">
									<input type="number" class="form-control" id="secondNumber"
										placeholder="Bir sayı giriniz..." required>
								</div>
							</div>
							<div class="form-group">
								<label for="operator" class="col-sm-3 control-label">Operasyon</label>
								<div class="col-sm-9">
									<select id="operator" class="form-control">
										<option value="" selected>Bir operasyon seçiniz</option>
										<option value="ADD">+</option>
										<option value="SUBSTRACT">-</option>
										<option value="MULTIPLY">*</option>
										<option value="DIVIDE">/</option>
									</select>
								</div>
							</div>
						</form>
					</div>
					<div class="panel-footer">
						<div id="calculationResult"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>