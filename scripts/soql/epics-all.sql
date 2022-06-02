SELECT Id,
  Description__c,
  Title__c,
  Phase__c,
  Phase__r.Name,
  Phase__r.StartDate__c,
  Phase__r.EndDate__c,
  (
    SELECT Id,
      AcceptanceCriteria__c,
      AcceptedDate__c,
      Description__c,
      Epic__c,
      LOE__c,
      Priority__c,
      Status__c,
      Title__c,
      Type__c,
      Sprint__c,
      Sprint__r.Name,
      Sprint__r.StartDate__c,
      Sprint__r.EndDate__c
    FROM UserStories__r)
FROM Epic__c