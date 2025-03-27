Following Packages are included for Deployment
----------------------------------------------
1. CustomMessageRouter
2. ORBISTransformOut
3. ORBISLorenzoConnectionIn
4. ORBISTransformIn

Step 1: 	(i)  Take the Backup of the Webservice URL mentioned in the following connectors from ORBISTransformOut process
				 For Example: http://NHSAPPCHNE6240.CSCIDP.NET/AppServer/ManageClinicalnoting.asmx
							  http://NHSAPPCHNE6240.CSCIDP.NET/AppServer/ManageFHIRMessages.asmx
			
			(ii) Take the Backup of the Webservice URL mentioned in the following connectors from ORBISLorenzoConnectionIn process
				 For Example: http://nhsappchne6071.cscidp.net/MessagingServer/InboundMessagingHL7MessageReciever.asmx
				 
Step 2: Execute the Undeploy.bat after making the necessary changes (JMX port)

Step 3: Execute the Deploy.bat after making the necessary changes (JMX port)

Step 4: Replace the Webservice URL which are backedup in the following connectors. 
		  * ORBISTransformOut
		  * ORBISLorenzoConnectionIn
		  
Step 5: Start the Listeners of the following processes
		* CustomMessageRouter
		* ORBISTransformOut
		* ORBISLorenzoConnectionIn
		* ORBISTransformIn

Step 6: Restart the service and Studio once the above steps are done.
		  
Note: Please do all the above mentioned steps in the vMHS combined server only.


                         ---------------------------------------x-------------------------------------------------		  