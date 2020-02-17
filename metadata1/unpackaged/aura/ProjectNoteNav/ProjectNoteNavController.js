({
    doInit:function(component,event,helper){
        var avt = $A.get("e.force:navigateToComponent"); 
        
        avt.setParams({
        componentDef:"c:ProjectNoteAura",
            componentAttributes: {
                    recordId : component.get("v.recordId")  
                }
        });
            //$A.enqueueAction(avt);
    
    avt.fire();
           
    
    }
})