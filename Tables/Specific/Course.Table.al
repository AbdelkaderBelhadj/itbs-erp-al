table 50102 Course
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Id; code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'ID';

        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';

        }

        field(3; Classroom; Code[12])
        {
            DataClassification = CustomerContent;
            Caption = 'Classroom';
            TableRelation = Classroom."Short Description";

        }

        field(4; "Classroom Description"; Text[100])
        {

            Caption = 'Classroom';
            Editable = false;
            TableRelation = Classroom.Description;
            FieldClass = FlowField;
            CalcFormula = lookup(Classroom.Description where("Short Description" = field(Classroom)));

        }

    }

    keys
    {
        key(PK2; Id)
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