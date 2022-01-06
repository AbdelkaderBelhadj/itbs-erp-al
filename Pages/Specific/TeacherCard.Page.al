page 50103 "Teacher Card"
{
    PageType = Card;
    SourceTable = Teacher;
    Caption = 'Teacher Card';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;

                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;

                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;

                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;

                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;

                }
                field(Phone; Rec.Phone)
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
            action("Courses/Classroom")
            {
                ApplicationArea = All;
                Caption = 'Courses/Classroom';
                Promoted = true;
                PromotedCategory = Process;
                Image = ListPage;

                //  end button
                RunObject = page "Classroom/Course";
                RunPageLink = id_Teacher = field(ID);

                trigger OnAction();
                begin

                end;
            }
        }
    }



    var
        myInt: Integer;
}