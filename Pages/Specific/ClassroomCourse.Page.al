page 50106 "Classroom/Course"
{
    PageType = List;

    SourceTable = "Teacher Entites";
    Caption = 'Classroom/Course';

    layout
    {
        area(Content)
        {
            repeater(general)
            {

                field(id_Classroom; Rec.id_Classroom)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;

                }
                field("Classroom Description"; Rec."Classroom Description")
                {
                    ApplicationArea = All;


                }
                field(id_Cours; Rec.id_Cours)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;

                }

                field("Cours description"; Rec."Cours description")
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Mark")
            {
                ApplicationArea = All;
                Caption = 'Mark';
                Promoted = true;
                PromotedCategory = Process;
                Image = AddWatch;



                trigger OnAction();
                var
                    StudentMark: Page "Students Marks";
                    Student: Record Student;
                begin
                    StudentMark.StCoursId(Rec.id_Cours);
                    Student.SetRange(Classroom, Rec.id_Classroom);
                    StudentMark.SetTableView(Student);
                    StudentMark.Run();

                end;
            }
        }
    }
}