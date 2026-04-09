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
        // Upload file
        FileName := 'output.txt';
        UploadIntoStream('Select file', '', '', FileName, InS);

        // Prepare output
        TempBlob.CreateOutStream(OutS);

        // Read + process
        while not InS.EOS do begin
            InS.ReadText(Line);
            OutS.WriteText('Processed: ' + Line);
        end;

        // Download result
        TempBlob.CreateInStream(InS);
        DownloadFromStream(InS, '', '', '', FileName);

        Message('File processed successfully!');
    end;
}