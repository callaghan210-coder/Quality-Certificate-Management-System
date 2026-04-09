codeunit 50102 Yastream
{
    trigger OnRun()
    begin
        WriteToaFile();
    end;

    procedure WriteToaFile()
    var
        OutS: OutStream;
        TempBlob: Codeunit "Temp Blob";
        FileName: Text;
        Instr: InStream;
    begin
        TempBlob.CreateOutStream(OutS);
        OutS.WriteText('<HTML>');
        OutS.WriteText();
        OutS.WriteText('<Head>');
        OutS.WriteText('<Title>');
        OutS.WriteText('Yastream Test');
        OutS.WriteText('</Title>');
        OutS.WriteText('</Head>');
        OutS.WriteText('<Body>');
        OutS.WriteText('<h1>Yastream Test</h1>');
        OutS.WriteText('<p>This is a simple test page.</p>');
        OutS.WriteText('</Body>');
        OutS.WriteText('</HTML>');
        FileName := 'YastreamTest.html';
        TempBlob.CreateInStream(Instr);
        DownloadFromStream(Instr, '', '', '', FileName);
        Message('Yastream file generated successfully!');
    end;
}
