/*************************************************************************************
Class Name     :  UtilityCls
Purpose        :  Utility Class
History:                                                            
-------                                                            
VERSION  AUTHOR                 DATE                DETAIL           
1.       Sidhant Agarwal        10/15/2018          Original Version 
2.       Sidhant Agarwal        10/15/2018          Added isOnOrBefore method
3.       Sidhant Agarwal        10/15/2018          Added recordTypeIdOf method
4.       Sidhant Agarwal        10/15/2018          Updated recordTypeIdOf method for return type
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
	
	/**
	* This method is used to determine record type id for a given sObject and record type name
	* @param objectName, input parameter to the declare the sObject name
	* @param recordTypeName, developer name of the record type
	* @return recordType Id, null if incorrect params or 
	*/
    public Id recordTypeIdOf(String objectName, String recordTypeName) {
        if (objectName == '' || recordTypeName = '')
			return null;
		return Schema.getGlobalDescribe().get(objectName).getDescribe().getRecordTypeInfosByName().get(recordTypeName).getRecordTypeId();
    }
	
    public String returnSingleQuotedStringFor(String inputString)  {
        return '\'' + inputString + '\'';
    }
}