page 50107 "Student Notes"
{
    PageType = ListPart;
    SourceTable = "Student Entires";
    Caption = 'Students Notes';

    layout
    {
        area(Content)
        {
            repeater(General)
            {



                field("Cours Desription"; rec."Cours Desription")
                {
                    ApplicationArea = All;

                }
                field(Mark; rec.Mark)
                {
                    ApplicationArea = All;

                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}