table 50103 Classroom
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Short Description"; code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Short Description';

        }

        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';

        }





    }

    keys
    {
        key(PK3; "Short Description")
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