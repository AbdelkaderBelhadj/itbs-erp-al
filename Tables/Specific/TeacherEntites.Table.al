table 50104 "Teacher Entites"
{
    DataClassification = CustomerContent;

    fields
    {

        field(1; id_Teacher; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = Teacher;

        }
        field(2; id_Classroom; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = Classroom;

        }
        field(3; id_Cours; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = Course;

        }
        field(4; "Classroom Description"; Text[100])
        {

            FieldClass = FlowField;
            CalcFormula = lookup(Classroom.Description where("Short Description" = field(id_Classroom)));

        }
        field(5; "Cours description"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Course.Description where(Id = field(id_Cours)));

        }
    }

    keys
    {
        key(PK; id_Teacher, id_Classroom, id_Cours)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}