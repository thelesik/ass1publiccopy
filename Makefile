run:
	@kubectl apply -f ps.yaml
	@kubectl apply -f secret.yaml
	@kubectl apply -f back.yaml
	@kubectl apply -f data.yaml
	@kubectl apply -f front.yaml

fill-db:
	@kubectl apply -f data-script.yaml
stop:
	@kubectl delete -f secret.yaml
	@kubectl delete -f back.yaml
	@kubectl delete -f data.yaml
	@kubectl delete -f front.yaml
	@kubectl delete -f data-script.yaml


clean: stop
	@kubectl delete -f ps.yaml
