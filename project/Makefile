
help:           ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'


common:

	@sh components/common.sh

cart:    common  ##intsall cart

	@sh components/cart.sh


cataloge: common ##intsall cataloge
	@sh components/cataloge.sh


frontend: common  ##intsall frontend
	@sh components/frontend.sh



