codeunit 50101 FileProcessingMgt
{
    procedure ProcessFile()
    var
        InS: InStream;
        OutS: OutStream;
        TempBlob: Codeunit "Temp Blob";
        FileName: Text;
        Line: Text;
    begin
        FileName := 'output.txt';
        UploadIntoStream('Select file', '', '', FileName, InS);

        TempBlob.CreateOutStream(OutS);

        while not InS.EOS do begin
            InS.ReadText(Line);
            OutS.WriteText('Processed: ' + Line);
        end;

        TempBlob.CreateInStream(InS);
        DownloadFromStream(InS, '', '', '', FileName);

        Message('File processed successfully!');
    end;
}