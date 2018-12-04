codeunit 50004 TTTDBOLAdHocCopyJobTasks
{
    // <TTT001>
    //   Created.
    // </TTT001>

    trigger OnRun()
    begin
        SelectAction();
    end;

    local procedure SelectAction()
    var
        locintAction: Integer;
        loctextSelectActionTxt: Label 'Select action';
        loctextActionsTxt: Label 'CopyJobTask,Unknown';
        loctxtAction: Text;
    begin
        locintAction := StrMenu(loctextActionsTxt, 0, loctextSelectActionTxt);
        locTxtAction := SelectStr(locintaction, loctextactionsTxt);
        case loctxtAction of
            'CopyJobTask':
                CopyJobTasks;
            else
                Error('N/A');
        end;
    end;

    local procedure CopyJobTasks()
    var
        locrecFromJob: Record Job;
        locrecToJob: Record Job;
        locrecFromJobTask: Record "Job Task";
        locrecToJobTask: Record "Job Task";
        loctextSelectFromJobTxt: Label 'Select Job to copy from';
        loctextSelectToJobTxt: Label 'Select Job to copy to';
    begin
        if not Confirm(loctextSelectFromJobTxt) then
            Error('');
        //if Page.RunModal()
        //if not Confirm((loctextSelectToJobTxt) then
        //    Error('');

    end;

    var
        myInt: Integer;
}