page 50100 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    Caption = 'Student List';
    CardPageId = "Student Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(CIN; Rec.CIN)
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
            }
        }
    }

}