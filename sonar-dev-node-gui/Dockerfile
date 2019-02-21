FROM meharsonar/dev-node-gui:latest

#Support
MAINTAINER Mauricio Amaral Gonçalves <mauricioamaralg@ufu.br>

#Copy build generated files
ADD files/sonar-source.tar.gz /root/
ADD files/maven-data.tar.gz /root/

#Copy 'workspace'. Create a workspace as root, import all SONAr projects and compress the workspace as workspace-config.tar.gz. Skip this if needed.
ADD files/workspace-config.tar.gz /root/

#Configure Eclipse
RUN mkdir /opt/eclipse/configuration/.settings && \
echo -e "MAX_RECENT_WORKSPACES=10\n\
RECENT_WORKSPACES=/root/workspace\n\
RECENT_WORKSPACES_PROTOCOL=3\n\
SHOW_RECENT_WORKSPACES=false\n\
SHOW_WORKSPACE_SELECTION_DIALOG=false\n\
eclipse.preferences.version=1\n" > /opt/eclipse/configuration/.settings/org.eclipse.ui.ide.prefs