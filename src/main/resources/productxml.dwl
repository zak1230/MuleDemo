%dw 2.0
output application/xml
---
product @(pid:payload.productId):{
	pname:payload.productId,
	description:payload.description,
	offer:{
		discountPercentage:payload.offer.discountPercentage,
		offerValidUntil:payload.offer.offerValidUntil
		
	} ,
	image1:payload.images[0]
	
}