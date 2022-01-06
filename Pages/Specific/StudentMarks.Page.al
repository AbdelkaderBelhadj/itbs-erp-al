page 50108 "Students Marks"
{
    PageType = List;

    SourceTable = Student;

    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("First Name"; rec."First Name")
                {
                    ApplicationArea = All;

                }
                field("Last Name"; rec."Last Name")
                {
                    ApplicationArea = All;

                }
                field(Mark; Note)
                {
                    Caption = 'Mark';
                    ApplicationArea = all;

                    trigger OnValidate()
                    var
                        Difference: Decimal;
                    begin
                        StudentEntry.Reset();
                        StudentEntry.SetRange(id_student, Rec.CIN);
                        StudentEntry.SetRange(id_classroom, Rec.Classroom);
                        StudentEntry.SetRange(id_cours, IDCours);
                        if Not StudentEntry.IsEmpty() then begin
                            StudentEntry.CalcSums(Mark);
                            Difference := Note - StudentEntry.Mark;
                            StudentEntry.Init();
                            StudentEntry.Validate(id_student, Rec.CIN);
                            StudentEntry.Validate(id_classroom, rec.Classroom);
                            StudentEntry.Validate(id_cours, IDCours);
                            StudentEntry.Validate(Mark, Difference);
                            StudentEntry.Insert();

                        end else begin
                            StudentEntry.Init();
                            StudentEntry.Validate(id_student, Rec.CIN);
                            StudentEntry.Validate(id_classroom, rec.Classroom);
                            StudentEntry.Validate(id_cours, IDCours);
                            StudentEntry.Validate(Mark, Note);
                            StudentEntry.Insert();
                        end;
                    end;

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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
    var
        Note: Decimal;
        IDCours: Code[20];
        StudentEntry: Record "Student Entires";

    trigger OnAfterGetRecord()
    var

    begin
        StudentEntry.Reset();
        StudentEntry.SetRange(id_student, Rec.CIN);
        StudentEntry.SetRange(id_classroom, Rec.Classroom);
        StudentEntry.SetRange(id_cours, IDCours);
        if StudentEntry.FindSet() then begin
            StudentEntry.CalcSums(Mark);
            Note := StudentEntry.Mark;
        end;
    end;

    procedure StCoursId(CoursID: Code[20])

    begin
        IDCours := CoursID;
    end;
}