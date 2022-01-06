page 50105 "Classroom List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Classroom;
    Caption = 'Classroom List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Short Description"; Rec."Short Description")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }


}