/*************************************************************************************
Class Name     :  UtilityCls
Purpose        :  Utility Class
History:                                                            
-------                                                            
VERSION  AUTHOR                 DATE                DETAIL           
1.       Sidhant Agarwal        10/15/2018          Original Version 
2.       Sidhant Agarwal        10/15/2018          Added isOnOrBefore method
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
	
	/**
	* This method is used to determine if first input is before second input
	* @param date1, first date input param
	* @param date2, second date input param
	* @return Boolean if the first date is before second date
	*/
    public Boolean isOnOrBefore(Date date1, Date date2) {
        return date1.daysBetween(date2) >= 0;
    }
}