/*************************************************************************************
Class Name     :  UtilityCls
Purpose        :  Utility Class
History:                                                            
-------                                                            
VERSION  AUTHOR                 DATE                DETAIL           
1.       Sidhant Agarwal        10/15/2018          Original Version 
***************************************************************************************/

public virtual without sharing class UtilityCls {
	
	/**
	* This method is used to determine if input is a valid
	* @param obj, input parameter to the method
	* @return Boolean if the input parameter is valid string
	*/
    public Boolean isValidStr(String obj) {
        return obj != null && obj.length ()> 0;
    }
	
}