table 50105 "Student Entires"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; id_student; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = Student;

        }
        field(2; id_cours; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = Course;

        }
        field(3; "Cours Desription"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Course.Description where(Id = field(id_Cours)));

        }
        field(4; id_classroom; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = Classroom;

        }
        field(5; Mark; Decimal)
        {
            MinValue = 0;
            MaxValue = 20;
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(PK; id_cours, id_student, id_classroom, Mark)
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