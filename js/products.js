$(document).ready(function(){

	var productList;

	function getProducts(){
		$.ajax({
			url : './classes/Products.php',
			method : 'POST',
			data : {GET_PRODUCT:1},
			success : function(response){
				//console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {

					var productHTML = '';

					productList = resp.message.products; 

					//console.log(productList);

					if (productList) {
						$.each(resp.message.products, function(index, value){

							productHTML += '<tr>'+
							                  '<td><img width="60" height="60" src="./big_store/web/images/'+value.product_image+'"></td>'+
								              '<td>'+ value.product_price +'</td>'+				             
								              '<td>'+ value.product_qty +'</td>'+
								              '<td>'+ value.cat_title +'</td>'+
								              '<td>'+ value.brand_title +'</td>'+
								              '<td>'+ value.item_type +'</td>'+
											  '<td>'+ value.color +'</td>'+
											  '<td>'+ value.product_size +'</td>'+
											  '<td>'+ value.new_fashion +'</td>'+ 
											  '<td>'+ value.special_offer +'</td>'+
											  '<td>'+ value.on_sale +'</td>'+
											  '<td>'+ value.clearance +'</td>'+
								              '<td><a class="btn btn-sm btn-info edit-product" style="color:#fff;"><span style="display:none;">'+JSON.stringify(value)+'</span><i class="fas fa-pencil-alt"></i></a>&nbsp;<a pid="'+value.product_id+'" class="btn btn-sm btn-danger delete-product" style="color:#fff;"><i class="fas fa-trash-alt"></i></a></td>'+
								            '</tr>';

						});

						$("#product_list").html(productHTML);
					}

					


					var catSelectHTML = '<option value="">Select Category</option>';
					$.each(resp.message.categories, function(index, value){

						catSelectHTML += '<option value="'+ value.cat_id +'">'+ value.cat_title +'</option>';

					});

					$(".category_list").html(catSelectHTML);

					var brandSelectHTML = '<option value="">Select Brand</option>';
					$.each(resp.message.brands, function(index, value){

						brandSelectHTML += '<option value="'+ value.brand_id +'">'+ value.brand_title +'</option>';

					});

					$(".brand_list").html(brandSelectHTML);

				}
			}

		});
	}

	getProducts();

	$(".add-product").on("click", function(){

		$.ajax({

			url : './classes/Products.php',
			method : 'POST',
			data : new FormData($("#add-product-form")[0]),
			contentType : false,
			cache : false,
			processData : false,
			success : function(response){
				//console.log(response);
				var resp = $.parseJSON(JSON.stringify(response));
				if (resp.status == 202) {
					$("#add-product-form").trigger("reset");
					$("#add_product_modal").modal('hide');
					getProducts();
				}else if(resp.status == 303){
					alert(resp.message);
				}
			}

		});

	});


	$(document.body).on('click', '.edit-product', function(){

		console.log($(this).find('span').text());

		var product = $.parseJSON($.trim($(this).find('span').text()));

		console.log(product);

		$("input[name='e_product_name']").val(product.product_title);
		$("select[name='e_brand_id']").val(product.brand_id);
		$("select[name='e_category_id']").val(product.cat_id);
		$("textarea[name='e_product_desc']").val(product.product_desc);
		$("input[name='e_product_qty']").val(product.product_qty);
		$("input[name='e_product_price']").val(product.product_price);
        $("input[name='e_item_type']").val(product.item_type);
        $("input[name='e_clearance']").val(product.clearance);
        $("input[name='e_on_sale']").val(product.on_sale);
        $("input[name='e_new_fashion']").val(product.new_fashion);
        $("input[name='e_product_size']").val(product.product_size);
        $("input[name='e_color']").val(product.color);
		$("input[name='e_product_image']").siblings("img").attr("src", "./big_store/web/images/images/"+product.product_image);
		$("input[name='pid']").val(product.product_id);
		$("#edit_product_modal").modal('show');
	});

	$(".submit-edit-product").on('click', function(){

		$.ajax({

			url : './classes/Products.php',
			method : 'POST',
			data : new FormData($("#edit-product-form")[0]),
			contentType : false,
			cache : false,
			processData : false,
			success : function(response){
				console.log(response);
				var resp = $.parseJSON(response);
				if (resp.status == 202) {
					$("#edit-product-form").trigger("reset");
					$("#edit_product_modal").modal('hide');
					getProducts();
					alert(resp.message);
				}else if(resp.status == 303){
					alert(resp.message);
				}
			}

		});


	});

	$(document.body).on('click', '.delete-product', function(){

		var pid = $(this).attr('pid');
		if (confirm("Are you sure to delete this item ?")) {
			$.ajax({

				url : './classes/Products.php',
				method : 'POST',
				data : {DELETE_PRODUCT: 1, pid:pid},
				success : function(response){
					console.log(response);
					var resp = $.parseJSON(response);
					if (resp.status == 202) {
						alert(resp.message);
						getProducts();
						location.reload(true);
					}else if (resp.status == 303) {
						alert(resp.message);
					}
				}

			});
		}else{
			
		}
		

	});

});