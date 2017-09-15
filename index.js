$(document).ready(function () {
            $("#myBtn").click(function (e) {
                //$("#myModal").modal();
                //alert("Fuck Tony");
                $.ajax({
                    url: "cart.php",
                    success: function (data) {
                        $('#myCart').html(data);
                        $("#myCart").modal();
                    }
                });
            });
			
			$("#home").click(function (e) {
                $.ajax({
                    url: "homepage.php",
                    success: function (data) {
                        $('.content').html(data).hide().fadeIn();
                    }
                });
            });

            $('.dropdown-toggle').dropdown();			
			$("#home").trigger("click");

            $('.dropdown-menu li').click(function (e) {
				$('.dropdown-toggle').html('<span class="glyphicon glyphicon-th-list"> '+$(this).text()+' <span class="caret"></span>');
                $.ajax({
                    type: "POST",
                    url: "games.php",
                    data: {categories: $(this).text()},
                    success: function (data) {
                        $('.content').html(data).hide().fadeIn();
                    }
                });
            });
        });

        $(document).on('click', '#buy', function (e) {
            e.preventDefault();
            //alert($(this).val());
			$(this).attr("disabled", true);
            $.ajax({
                type: "POST",
                url: "session.php",
                data: {cart: $(this).val()}
            });
        });
		
		$(document).on('click', '#bill', function (e) {
			/*alert($('#email').val());
			alert($('#address').val());
            alert($('.total').text());*/
			$.ajax({
                type: "POST",
                url: "bill.php",
                data: {email:$('#email').val(), address:$('#address').val(), phonenumber:$('#phonenumber').val()},
				success:function(){
					$("#home").trigger("click");
				}
            });
        });