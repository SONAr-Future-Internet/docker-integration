#!/bin/bash
 
case ${1,,} in
	nem)  target="network-event-manager" ;;
	nsb)  target="network-service-bus" ;;
	asce) target="alarms-self-collector-entity" ;;
	msce) target="metrics-self-collector-entity" ;;
	ssce) target="samples-self-collector-entity" ;;
	msce) target="topology-self-collector-entity" ;;
	asle) target="analysis-self-learning-entity" ;;
	csle) target="configuration-self-learning-entity" ;;
	psle) target="prediction-self-learning-entity" ;;
	sce)  target="self-configuration-entity" ;;
	she)  target="self-healing-entity" ;;
	sme)  target="self-management-entity" ;;
	soe)  target="self-optimization-entity" ;;
	spe)  target="self-planning-entity" ;;
	sse)  target="self-protection-entity" ;;
	sd)   target="sonar-dashboard" ;;

	network-event-manager)              target="network-event-manager" ;;
	network-service-bus)                target="network-service-bus" ;;
	alarms-self-collector-entity)       target="alarms-self-collector-entity" ;;
	metrics-self-collector-entity)      target="metrics-self-collector-entity" ;;
	samples-self-collector-entity)      target="samples-self-collector-entity" ;;
	topology-self-collector-entity)     target="topology-self-collector-entity" ;;
	analysis-self-learning-entity)      target="analysis-self-learning-entity" ;;
	configuration-self-learning-entity) target="configuration-self-learning-entity" ;;
	prediction-self-learning-entity)    target="prediction-self-learning-entity" ;;
	self-configuration-entity)          target="self-configuration-entity" ;;
	self-healing-entity)                target="self-healing-entity" ;;
	self-management-entity)             target="self-management-entity" ;;
	self-optimization-entity)           target="self-optimization-entity" ;;
	self-planning-entity)               target="self-planning-entity" ;;
	self-protection-entity)             target="self-protection-entity" ;;
	sonar-dashboard)                    target="sonar-dashboard" ;;

	event-manager)          target="network-event-manager" ;;
	service-bus)            target="network-service-bus" ;;
	alarms-collector)       target="alarms-self-collector-entity" ;;
	metrics-collector)      target="metrics-self-collector-entity" ;;
	samples-collector)      target="samples-self-collector-entity" ;;
	topology-collector)     target="topology-self-collector-entity" ;;
	analysis-learning)      target="analysis-self-learning-entity" ;;
	configuration-learning) target="configuration-self-learning-entity" ;;
	prediction-learning)    target="prediction-self-learning-entity" ;;
	configuration-entity)   target="self-configuration-entity" ;;
	healing-entity)         target="self-healing-entity" ;;
	management-entity)      target="self-management-entity" ;;
	optimization-entity)    target="self-optimization-entity" ;;
	planning-entity)        target="self-planning-entity" ;;
	protection-entity)      target="self-protection-entity" ;;
	dashboard)              target="sonar-dashboard" ;;

	configuration) target="self-configuration-entity" ;;
	healing)       target="self-healing-entity" ;;
	management)    target="self-management-entity" ;;
	optimization)  target="self-optimization-entity" ;;
	planning)      target="self-planning-entity" ;;
	protection)    target="self-protection-entity" ;;

	h) ;;
	help) ;;

	*) echo "Invalid Option!" ;;
esac

if [ 	-z "$target" ]
  then
     echo -e "Usage:"
     echo -e "\t./run.sh nem|event-manager|network-event-manager -------------------------- runs 'Network-Event-Manager' application as a Docker container."
     echo -e "\t./run.sh nsb|service-bus|network-service-bus ------------------------------ runs 'Network-Service-Manager' application as a Docker container."
     echo -e "\t./run.sh asce|alarms-collector|alarms-self-collector-entity --------------- runs 'Alarms Self-Collector Entity' application as a Docker container."
     echo -e "\t./run.sh msce|metrics-collector|metrics-self-collector-entity ------------- runs 'Metrics Self-Collector Entity' application as a Docker container."
     echo -e "\t./run.sh ssce|samples-collector|samples-self-collector-entity ------------- runs 'Samples Self-Collector Entity' application as a Docker container."
     echo -e "\t./run.sh tsce|topology-collector|topology-self-collector-entity ----------- runs 'Topology Self-Collector Entity' application as a Docker container."
     echo -e "\t./run.sh asle|analysis-learning|analysis-self-learning-entity ------------- runs 'Analysis Self-Learning Entity' application as a Docker container."
     echo -e "\t./run.sh csle|configuration-learning|configuration-self-learning-entity --- runs 'Configuration Self-Learning Entity' application as a Docker container."
     echo -e "\t./run.sh psle|prediction-learning|prediction-self-learning-entity --------- runs 'Prediction Self-Learning Entity' application as a Docker container."
     echo -e "\t./run.sh sce|configuration|configuration-entity|self-configuration-entity - runs 'Self-Configuration Entity' application as a Docker container."
     echo -e "\t./run.sh she|healing|healing-entity|self-healing-entity ------------------- runs 'Self-Healing Entity' application as a Docker container."
     echo -e "\t./run.sh sme|management|management-entity|self-management-entity ---------- runs 'Self-Management Entity' application as a Docker container."
     echo -e "\t./run.sh soe|optimization|optimization-entity|self-optimization-entity ---- runs 'Self-Optimization Entity' application as a Docker container."
     echo -e "\t./run.sh spe|planning|planning-entity|self-planning-entity ---------------- runs 'Self-Planning Entity' application as a Docker container."
     echo -e "\t./run.sh sse|protection|protection-entity|self-protection-entity ---------- runs 'Self-Protection Entity' application as a Docker container."
     echo -e "\t./run.sh h|help ----------------------------------------------------------- shows the information above."
else
     docker run -i -t --rm meharsonar/$target
fi
