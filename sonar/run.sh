#!/bin/bash
 
case ${1,,} in
	ascoe) 	target="alarms-self-collector-entity" ;;
	mscoe) 	target="metrics-self-collector-entity" ;;
	sscoe) 	target="samples-self-collector-entity" ;;
	mscoe) 	target="topology-self-collector-entity" ;;
	lscoe) 	target="logs-self-collector-entity" ;;
	dsle) 	target="diagnosis-self-learning-entity" ;;
	rsle) 	target="rating-self-learning-entity" ;;
	isle) 	target="intent-self-learning-entity" ;;
	tsle) 	target="tunning-self-learning-entity" ;;
	psle) 	target="prediction-self-learning-entity" ;;
	sce)  	target="self-configuration-entity" ;;
	she)  	target="self-healing-entity" ;;
	sme)  	target="self-management-entity" ;;
	soe)  	target="self-optimization-entity" ;;
	sple)  	target="self-planning-entity" ;;
	spe)  	target="self-protection-entity" ;;
	asb)  	target="administration-service-broker" ;;
	csb)  	target="customer-service-broker" ;;
	cpi)	target="control-plane-interceptor" ;;
	cim)	target="sonar-containerized-infrastructure-manager" ;;
	dhcp)	target="sonar-dhcp-server" ;;
	abm)  	target="auto-boot-manager" ;;
	sd)   	target="sonar-dashboard" ;;

	alarms-self-collector-entity) 		target="alarms-self-collector-entity" ;;
	metrics-self-collector-entity) 		target="metrics-self-collector-entity" ;;
	samples-self-collector-entity) 		target="samples-self-collector-entity" ;;
	topology-self-collector-entity) 	target="topology-self-collector-entity" ;;
	logs-self-collector-entity) 		target="logs-self-collector-entity" ;;
	diagnosis-self-learning-entity) 	target="diagnosis-self-learning-entity" ;;
	rating-self-learning-entity) 		target="rating-self-learning-entity" ;;
	intent-self-learning-entity) 		target="intent-self-learning-entity" ;;
	tunning-self-learning-entity) 		target="tunning-self-learning-entity" ;;
	prediction-self-learning-entity) 	target="prediction-self-learning-entity" ;;
	self-configuration-entity)  		target="self-configuration-entity" ;;
	self-healing-entity)  			target="self-healing-entity" ;;
	self-management-entity)  		target="self-management-entity" ;;
	self-optimization-entity)  		target="self-optimization-entity" ;;
	self-planning-entity)  			target="self-planning-entity" ;;
	self-protection-entity)  		target="self-protection-entity" ;;
	administration-service-broker)  	target="administration-service-broker" ;;
	customer-service-broker)  		target="customer-service-broker" ;;
	control-plance-interceptor)		target="control-plane-interceptor" ;;
	containerized-infrastructure-manager)	target="sonar-containerized-infrastructure-manager" ;;
	dhcp-server)				target="sonar-dhcp-server" ;;
	auto-boot-manager)  			target="auto-boot-manager" ;;
	sonar-dashboard)   			target="sonar-dashboard" ;;

	alarms-collector) 	target="alarms-self-collector-entity" ;;
	metrics-collector) 	target="metrics-self-collector-entity" ;;
	samples-collector) 	target="samples-self-collector-entity" ;;
	topology-collector) 	target="topology-self-collector-entity" ;;
	logs-collector) 	target="logs-self-collector-entity" ;;
	diagnosis-learning) 	target="diagnosis-self-learning-entity" ;;
	rating-learning) 	target="rating-self-learning-entity" ;;
	intent-learning) 	target="intent-self-learning-entity" ;;
	tunning-learning) 	target="tunning-self-learning-entity" ;;
	prediction-learning) 	target="prediction-self-learning-entity" ;;
	configuration-entity) 	target="self-configuration-entity" ;;
	healing-entity)  	target="self-healing-entity" ;;
	management-entity)  	target="self-management-entity" ;;
	optimization-entity)  	target="self-optimization-entity" ;;
	planning-entity)  	target="self-planning-entity" ;;
	protection-entity)  	target="self-protection-entity" ;;
	administration-broker)  target="administration-service-broker" ;;
	customer-broker)  	target="customer-service-broker" ;;
	interceptor)		target="control-plane-interceptor" ;;
	container-manager)	target="sonar-containerized-infrastructure-manager" ;;
	boot-manager)  		target="auto-boot-manager" ;;
	dashboard)   		target="sonar-dashboard" ;;

	alarms) 	target="alarms-self-collector-entity" ;;
	metrics) 	target="metrics-self-collector-entity" ;;
	samples) 	target="samples-self-collector-entity" ;;
	topology) 	target="topology-self-collector-entity" ;;
	logs) 		target="logs-self-collector-entity" ;;
	diagnosis) 	target="diagnosis-self-learning-entity" ;;
	rating) 	target="rating-self-learning-entity" ;;
	intent) 	target="intent-self-learning-entity" ;;
	tunning) 	target="tunning-self-learning-entity" ;;
	prediction) 	target="prediction-self-learning-entity" ;;
	configuration) 	target="self-configuration-entity" ;;
	healing)       	target="self-healing-entity" ;;
	management)    	target="self-management-entity" ;;
	optimization)  	target="self-optimization-entity" ;;
	planning)      	target="self-planning-entity" ;;
	protection)    	target="self-protection-entity" ;;

	h) ;;
	help) ;;

	*) echo "Invalid Option!" ;;
esac

if [ 	-z "$target" ]
  then
     echo -e "Usage:"
     echo -e "\t./build.sh ascoe|alarms|alarms-collector|alarms-self-collector-entity --------------- runs 'Alarms Self-Collector Entity' application as a Docker Container."
     echo -e "\t./build.sh mscoe|metrics|metrics-collector|metrics-self-collector-entity ------------ runs 'Metrics Self-Collector Entity' application as a Docker Container."
     echo -e "\t./build.sh sscoe|samples|samples-collector|samples-self-collector-entity ------------ runs 'Samples Self-Collector Entity' application as a Docker Container."
     echo -e "\t./build.sh tscoe|toplogy|topology-collector|topology-self-collector-entity ---------- runs 'Topology Self-Collector Entity' application as a Docker Container."
     echo -e "\t./build.sh lscoe|logs|logs-collector|logs-self-collector-entity --------------------- runs 'Logs Self-Collector Entity' application as a Docker Container."
     echo -e "\t./build.sh dsle|diagnosis|diagnosis-learning|diagnosis-self-learning-entity --------- runs 'Diagnosis Self-Learning Entity' application as a Docker Container."
     echo -e "\t./build.sh tsle|tunning|tunning-learning|tunning-self-learning-entity --------------- runs 'Tunning Self-Learning Entity' application as a Docker Container."
     echo -e "\t./build.sh psle|prediction|prediction-learning|prediction-self-learning-entity ------ runs 'Prediction Self-Learning Entity' application as a Docker Container."
     echo -e "\t./build.sh rsle|rating|rating-learning|rating-self-learning-entity ------------------ runs 'Rating Self-Learning Entity' application as a Docker Container."
     echo -e "\t./build.sh isle|intent|intent-learning|intent-self-learning-entity ------------------ runs 'Intent Self-Learning Entity' application as a Docker Container."
     echo -e "\t./build.sh sce|configuration|configuration-entity|self-configuration-entity --------- runs 'Self-Configuration Entity' application as a Docker Container."
     echo -e "\t./build.sh she|healing|healing-entity|self-healing-entity --------------------------- runs 'Self-Healing Entity' application as a Docker Container."
     echo -e "\t./build.sh sme|management|management-entity|self-management-entity ------------------ runs 'Self-Management Entity' application as a Docker Container."
     echo -e "\t./build.sh soe|optimization|optimization-entity|self-optimization-entity ------------ runs 'Self-Optimization Entity' application as a Docker Container."
     echo -e "\t./build.sh sple|planning|planning-entity|self-planning-entity ----------------------- runs 'Self-Planning Entity' application as a Docker Container."
     echo -e "\t./build.sh spe|protection|protection-entity|self-protection-entity ------------------ runs 'Self-Protection Entity' application as a Docker Container."
     echo -e "\t./build.sh asb|administration-bus|administration-service-bus ------------------------ runs 'Administration-Service-Manager' application as a Docker Container."
     echo -e "\t./build.sh csb|customer-bus|customer-service-bus ------------------------------------ runs 'Customer-Service-Manager' application as a Docker Container."
     echo -e "\t./build.sh isb|integration-bus|integration-service-bus ------------------------------ runs 'Integration-Service-Manager' application as a Docker Container."
     echo -e "\t./build.sh nem|event-manager|network-event-manager ---------------------------------- runs 'Network-Event-Manager' application as a Docker Container."
     echo -e "\t./build.sh dhcp|dhcp-server --------------------------------------------------------- runs 'SONAr-DHCP-Server' application as a Docker Container."
     echo -e "\t./build.sh abm|boot-manager|auto-boot-manager --------------------------------------- runs 'Auto-Boot-Manager' application as a Docker Container."
     echo -e "\t./build.sh cpi|interceptor|control-plane-interceptor -------------------------------- runs 'Control-Plane-Interceptor' application as a Docker Container."
     echo -e "\t./build.sh h|help ------------------------------------------------------------------- shows the information above."
else
     #docker run -i -t --rm -e "NDB_SEEDS=192.168.0.1:9042" -e "NEM_SEEDS=192.168.0.1:5671" meharsonar/$target
     case $target in
        sonar-dhcp-server)  docker run -i -t --rm -e "NDB_STRATEGY=cassandra" -e "NDB_SEEDS=192.168.0.1:9042" -e "NEM_STRATEGY=rabbitmq" -e "NEM_SEEDS=192.168.0.1:5672" -e "SONAR_SERVER_LOCAL_IP_ADDRESS=192.168.0.1" -e "SONAR_SERVER_LOCAL_IP_BROADCAST=192.168.0.255" -e "SONAR_SERVER_LOCAL_IP_MASK=255.255.255.0" --network "host"  meharsonar/$target ;;
     esac
fi
