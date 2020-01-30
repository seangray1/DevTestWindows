/**
 * @File Name          : newJobLWC.js
 * @Description        : 
 * @Author             : Sean Gray
 * @Group              : 
 * @Last Modified By   : Sean Gray
 * @Last Modified On   : 1/30/2020, 9:00:20 AM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/23/2020   Sean Gray     Initial Version
**/
import { LightningElement, track } from 'lwc';
//import SearchAccountRoles from '@salesforce/apex/NewJobController.GetAccountRoles';
import SearchProperties from '@salesforce/apex/NewJobController.GetProperties';
import checkId from '@salesforce/apex/NewJobController.CheckId';

const DELAY = 900;
export default class NewJobLWC extends LightningElement {
@track testingProperty;
    @track Properties; 
@track searchKey;
@track NewCaller = false;
@track NewAccount = false;
@track NewProperty = false;
@track PropertyID;
@track PropertyPicked = false;
@track AccountRoles = [{}];
@track AccountRolesSelected = false;
@track AccountRolesRecieved ='';
@track inputDisabled = true;
@track PropertySelected = false;
@track PropertySelectedField;
@track PropertyValue;

// connectedCallback(){
//     this.AccountRoles.push({Name : '',})
// }
ToggleNewCaller(){
    this.NewAccount = false;
    if(!this.NewCaller){
        this.NewCaller = true;
    }else{
        this.NewCaller = false;
    }
}
ToggleNewAccount(){
    if(!this.NewAccount){
        this.NewAccount = true;
    }else{
        this.NewAccount = false;
    }
}
ToggleNewProperty(){
    if(!this.NewProperty){
        this.NewProperty = true;
    }else{
        this.NewProperty = false;
    }
}
AddNewRow(){
    //this.AccountRoleNew(Name ='test');
    this.AccountRoles.push({Name : '', Type : '', Contact : ''});
}
// PropertyChange(event){
//     this.PropertyID = event.detail.value;
//     console.log(this.PropertyID.length);
//     if(this.PropertyID.length > 17){
//     this.PropertyPicked = true;
    
//     var PropertyJSON = {'PropertyId': this.PropertyID};
//     var PackagedJSON = JSON.stringify(PropertyJSON);
    
//     SearchAccountRoles({PropertyId:PackagedJSON})
//     .then(result => {
//         this.AccountRolesRecieved = result;
//         for (var i = 0; i < this.AccountRolesRecieved.length; i++){
//                 this.AccountRoles.push({name: this.AccountRolesRecieved[i],}) 
//             }
//         console.log('records' + this.records);
//         this.error = undefined;
//         //console.log(' records ', this.records);
//     })
//     .catch(error => {
//         this.error = error;
//         this.records = undefined;
//     });

// }
// }
populatePropertyField(event){
    
   // console.log('Property Id first is + ' + this.Property.Id);
    //console.log('Property Id first is + ' + this.testingProperty);
    //this.PropertyID = event.detail.value;
    this.Properties = '';
    this.PropertySelected = true;
    this.testingProperty = event.target.value;
    this.PropertySelectedField = event.target.value;
    this.PropertyValue = this.PropertySelectedField.Name;
    console.log('Testing name alert ' + this.PropertySelectedField.name);
    console.log('PropertyID ' + this.testingProperty);

    checkId({propId:this.testingProperty.Id}).then(result => {
        this.AccountRoles = result;
        this.AccountRolesSelected = true;
        console.log('Account Roles is ' + this.AccountRoles);
        console.log('Account Roles Name ' + this.AccountRoles.Name);
        console.log('Account Roles Contact ' + this.AccountRoles.Contact_ID__c);
    })
}
PropertyChanged(event){
    
    // window.clearTimeout(this.delayTimeout);
    console.log('testing ');
    window.clearTimeout(this.delayTimeout);
       this.searchKey = event.target.value;
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        //this.delayTimeout = setTimeout(() => {
            // eslint-disable-next-line @lwc/lwc/no-async-operation
            this.delayTimeout = setTimeout(() => {
                SearchProperties({searchKey : this.searchKey})
                .then(result => {
                    this.Properties = result;
                    console.log('Properties ' + this.Properties);
                })
                
                .catch(error => {
                    this.error = error;
                });
            }, DELAY);
        // });

}

getAllAccountRoleObjects() {
    var AccountRoless = [];

    //Get Value from HTML 
    let TblRow =  Array.from(this.template.querySelectorAll('table.PMTbl tbody tr'));
    let RowCount = TblRow.length;
    for(let k=0; k<RowCount; k++){
        let Name = TblRow[k].querySelector('.PMName').value;
        let TblReg = TblRow[k].querySelectorAll('.PM_Reg');
        let TblOt = TblRow[k].querySelectorAll('.PM_OT');
        let TblDbl = TblRow[k].querySelectorAll('.PM_DBL');
        
        

        let LaborCode = TblRow[k].querySelector('.PMLaborCode').value;
        //let CWPw = TblRow[k].querySelector('.CWPw').checked;
        
        
        AccountRoless.push({
            Name: Name,PW: false,LaborCode: LaborCode,MondayDBLHours: MondayDBLHours, MondayOTHours: MondayOTHours, MondayRegHours: MondayRegHours,
            TuesdayDBLHours: TuesdayDBLHours,TuesdayOTHours: TuesdayOTHours, TuesdayRegHours: TuesdayRegHours,
            WednesdayDBLHours: WednesdayDBLHours,WednesdayOTHours: WednesdayOTHours, WednesdayRegHours: WednesdayRegHours,
            ThursdayDBLHours:ThursdayDBLHours,ThursdayOTHours:ThursdayOTHours , ThursdayRegHours:ThursdayRegHours,
            FridayDBLHours:FridayDBLHours ,FridayOTHours:FridayOTHours , FridayRegHours:FridayRegHours,
            SaturdayDBLHours:SaturdayDBLHours ,SaturdayOTHours: SaturdayOTHours , SaturdayRegHours:SaturdayRegHours ,
            SundayDBLHours:SundayDBLHours ,SundayOTHours:SundayOTHours , SundayRegHours:SundayRegHours
        });

    }
    return AccountRoless;
}


DeletePDRow(e){
    this.AccountRolesToDelete = this.getAllAccountRoleObjects();
    let DeleteRowIndex = e.target.parentNode.parentNode.rowIndex;
    this.AccountRolesToDelete.splice(DeleteRowIndex-1,1);

    // this.Supervisors = this.getAllSupervisorObjects();
    // this.CrewMembers = this.getAllCrewMembersObjects();
}





}