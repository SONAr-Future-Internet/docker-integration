#!/bin/bash
 
case ${1,,} in
	all)  buildAll=true ;;

	ascoe) 	target="self-collector-entities/alarms-self-collector-entity" ;;
	mscoe) 	target="self-collector-entities/metrics-self-collector-entity" ;;
	sscoe) 	target="self-collector-entities/samples-self-collector-entity" ;;
	tscoe) 	target="self-collector-entities/topology-self-collector-entity" ;;
	lscoe) 	target="self-collector-entities/logs-self-collector-entity" ;;
	dsle) 	target="self-learning-entities/diagnosis-self-learning-entity" ;;
	rsle) 	target="self-learning-entities/rating-self-learning-entity" ;;
	isle) 	target="self-learning-entities/intent-self-learning-entity" ;;
	tsle) 	target="self-learning-entities/tunning-self-learning-entity" ;;
	psle) 	target="self-learning-entities/prediction-self-learning-entity" ;;
	sce)  	target="self-organizing-entities/self-configuration-entity" ;;
	she)  	target="self-organizing-entities/self-healing-entity" ;;
	sme)  	target="self-organizing-entities/self-management-entity" ;;
	soe)  	target="self-organizing-entities/self-optimization-entity" ;;
	sple)  	target="self-organizing-entities/self-planning-entity" ;;
	spe)  	target="self-organizing-entities/self-protection-entity" ;;
	asb)  	target="sonar-service-broker/administration-service-broker" ;;
	csb)  	target="sonar-service-broker/customer-service-broker" ;;
	cpi)	target="custom-components/sonar-controller-interceptor" ;;
	cim)	target="custom-components/sonar-containerized-infrastructure-manager" ;;
	dhcp)	target="custom-components/sonar-dhcp-server" ;;
	abm)  	target="auto-boot-manager" ;;
	sd)   	target="sonar-dashboard" ;;

	alarms-self-collector-entity) 				target="self-collector-entities/alarms-self-collector-entity" ;;
	metrics-self-collector-entity) 				target="self-collector-entities/metrics-self-collector-entity" ;;
	samples-self-collector-entity) 				target="self-collector-entities/samples-self-collector-entity" ;;
	topology-self-collector-entity) 			target="self-collector-entities/topology-self-collector-entity" ;;
	logs-self-collector-entity) 				target="self-collector-entities/logs-self-collector-entity" ;;
	diagnosis-self-learning-entity) 			target="self-learning-entities/diagnosis-self-learning-entity" ;;
	rating-self-learning-entity) 				target="self-learning-entities/rating-self-learning-entity" ;;
	intent-self-learning-entity) 				target="self-learning-entities/intent-self-learning-entity" ;;
	tunning-self-learning-entity) 				target="self-learning-entities/tunning-self-learning-entity" ;;
	prediction-self-learning-entity) 			target="self-learning-entities/prediction-self-learning-entity" ;;
	self-configuration-entity)  				target="self-organizing-entities/self-configuration-entity" ;;
	self-healing-entity)  						target="self-organizing-entities/self-healing-entity" ;;
	self-management-entity)  					target="self-organizing-entities/self-management-entity" ;;
	self-optimization-entity)  					target="self-organizing-entities/self-optimization-entity" ;;
	self-planning-entity)  						target="self-organizing-entities/self-planning-entity" ;;
	self-protection-entity)  					target="self-organizing-entities/self-protection-entity" ;;
	administration-service-broker)  			target="sonar-service-broker/administration-service-broker" ;;
	customer-service-broker)  					target="sonar-service-broker/customer-service-broker" ;;
	control-plance-interceptor)					target="custom-components/sonar-controller-interceptor" ;;
	containerized-infrastructure-manager)		target="custom-components/sonar-containerized-infrastructure-manager" ;;
	dhcp-server)								target="custom-components/sonar-dhcp-server" ;;
	auto-boot-manager)  						target="auto-boot-manager" ;;
	sonar-dashboard)   							target="sonar-dashboard" ;;

	alarms-collector) 		target="self-collector-entities/alarms-self-collector-entity" ;;
	metrics-collector) 		target="self-collector-entities/metrics-self-collector-entity" ;;
	samples-collector) 		target="self-collector-entities/samples-self-collector-entity" ;;
	topology-collector) 	target="self-collector-entities/topology-self-collector-entity" ;;
	logs-collector) 		target="self-collector-entities/logs-self-collector-entity" ;;
	diagnosis-learning) 	target="self-learning-entities/diagnosis-self-learning-entity" ;;
	rating-learning) 		target="self-learning-entities/rating-self-learning-entity" ;;
	intent-learning) 		target="self-learning-entities/intent-self-learning-entity" ;;
	tunning-learning) 		target="self-learning-entities/tunning-self-learning-entity" ;;
	prediction-learning) 	target="self-learning-entities/prediction-self-learning-entity" ;;
	configuration-entity) 	target="self-organizing-entities/self-configuration-entity" ;;
	healing-entity)  		target="self-organizing-entities/self-healing-entity" ;;
	management-entity)  	target="self-organizing-entities/self-management-entity" ;;
	optimization-entity)  	target="self-organizing-entities/self-optimization-entity" ;;
	planning-entity)  		target="self-organizing-entities/self-planning-entity" ;;
	protection-entity)  	target="self-organizing-entities/self-protection-entity" ;;
	administration-broker)  target="sonar-service-broker/administration-service-broker" ;;
	customer-broker)  		target="sonar-service-broker/customer-service-broker" ;;
	interceptor)			target="custom-components/sonar-controller-interceptor" ;;
	container-manager)		target="custom-components/sonar-containerized-infrastructure-manager" ;;
	boot-manager)  			target="auto-boot-manager" ;;
	dashboard)   			target="sonar-dashboard" ;;

	alarms) 		target="self-collector-entities/alarms-self-collector-entity" ;;
	metrics) 		target="self-collector-entities/metrics-self-collector-entity" ;;
	samples) 		target="self-collector-entities/samples-self-collector-entity" ;;
	topology) 		target="self-collector-entities/topology-self-collector-entity" ;;
	logs) 			target="self-collector-entities/logs-self-collector-entity" ;;
	diagnosis) 		target="self-learning-entities/diagnosis-self-learning-entity" ;;
	rating) 		target="self-learning-entities/rating-self-learning-entity" ;;
	intent) 		target="self-learning-entities/intent-self-learning-entity" ;;
	tunning) 		target="self-learning-entities/tunning-self-learning-entity" ;;
	prediction) 	target="self-learning-entities/prediction-self-learning-entity" ;;
	configuration) 	target="self-organizing-entities/self-configuration-entity" ;;
	healing)       	target="self-organizing-entities/self-healing-entity" ;;
	management)    	target="self-organizing-entities/self-management-entity" ;;
	optimization)  	target="self-organizing-entities/self-optimization-entity" ;;
	planning)      	target="self-organizing-entities/self-planning-entity" ;;
	protection)    	target="self-organizing-entities/self-protection-entity" ;;

	h) ;;
	help) ;;

	*) echo "Invalid Option!" ;;
esac

if [ ! -z "$buildAll" ]
  then		
	#Build SONAr Dashboard Docker Image
	cp template/Dockerfile ../../sonar/sonar-dashboard
	mvn clean package dockerfile:build -pl sonar-dashboard -f ../../sonar/pom.xml
	rm ../../sonar/sonar-dashboard/Dockerfile

	#Clean Unused Images and Containers
	docker system prune -f
else
	if [ -z "$target" ]
	  then
	     echo -e "Usage:"
  	     echo -e "\t./build.sh all------------------------------------------------------------------ builds images for all module."
	     echo -e "\t./build.sh ascoe|alarms|alarms-collector|alarms-self-collector-entity ---------- builds 'Alarms Self-Collector Entity' image."
	     echo -e "\t./build.sh mscoe|metrics|metrics-collector|metrics-self-collector-entity ------- builds 'Metrics Self-Collector Entity' image."
	     echo -e "\t./build.sh sscoe|samples|samples-collector|samples-self-collector-entity ------- builds 'Samples Self-Collector Entity' image."
	     echo -e "\t./build.sh tscoe|toplogy|topology-collector|topology-self-collector-entity ----- builds 'Topology Self-Collector Entity' image."
	     echo -e "\t./build.sh lscoe|logs|logs-collector|logs-self-collector-entity ---------------- builds 'Logs Self-Collector Entity' image."
	     echo -e "\t./build.sh dsle|diagnosis|diagnosis-learning|diagnosis-self-learning-entity ---- builds 'Diagnosis Self-Learning Entity' image."
	     echo -e "\t./build.sh tsle|tunning|tunning-learning|tunning-self-learning-entity ---------- builds 'Tunning Self-Learning Entity' image."
	     echo -e "\t./build.sh psle|prediction|prediction-learning|prediction-self-learning-entity - builds 'Prediction Self-Learning Entity' image."
	     echo -e "\t./build.sh rsle|rating|rating-learning|rating-self-learning-entity ------------- builds 'Rating Self-Learning Entity' image."
	     echo -e "\t./build.sh isle|intent|intent-learning|intent-self-learning-entity ------------- builds 'Intent Self-Learning Entity' image."
	     echo -e "\t./build.sh sce|configuration|configuration-entity|self-configuration-entity ---- builds 'Self-Configuration Entity' image."
	     echo -e "\t./build.sh she|healing|healing-entity|self-healing-entity ---------------------- builds 'Self-Healing Entity' image."
	     echo -e "\t./build.sh sme|management|management-entity|self-management-entity ------------- builds 'Self-Management Entity' image."
	     echo -e "\t./build.sh soe|optimization|optimization-entity|self-optimization-entity ------- builds 'Self-Optimization Entity' image."
	     echo -e "\t./build.sh sple|planning|planning-entity|self-planning-entity ------------------ builds 'Self-Planning Entity' image."
	     echo -e "\t./build.sh spe|protection|protection-entity|self-protection-entity ------------- builds 'Self-Protection Entity' image."
	     echo -e "\t./build.sh asb|administration-bus|administration-service-bus ------------------- builds 'Administration-Service-Broker' image."
	     echo -e "\t./build.sh csb|customer-roker|customer-service-broker -------------------------- builds 'Customer-Service-Broker' image."
	     echo -e "\t./build.sh abm|boot-manager|auto-boot-manager ---------------------------------- builds 'Auto-Boot-Manager' image."
	     echo -e "\t./build.sh cpi|interceptor|control-plane-interceptor --------------------------- builds 'Control-Plane-Interceptor' image."
	     echo -e "\t./build.sh cim|containerized-infrastructure-manager|container-manager ---------- builds 'SONAr-Containerized-Infrastructure-Manager' image."
	     echo -e "\t./build.sh dhcp|dhcp-server ---------------------------------------------------- builds 'SONAr-DHCP-Server' image."
	     echo -e "\t./build.sh h|help -------------------------------------------------------------- shows the information above."
	else
		#Build $target Docker Image
		cp template/Dockerfile ../../sources/$target
		mvn clean package dockerfile:build -pl $target -f ../../sources/pom.xml
		rm ../../sources/$target/Dockerfile

		#Clean Unused Images and Containers
		#docker system prune -f
	fi
fi
