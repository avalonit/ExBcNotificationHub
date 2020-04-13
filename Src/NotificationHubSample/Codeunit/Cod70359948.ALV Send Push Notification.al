codeunit 70359948 "ALV Send Push Notification"
{

    procedure SendPush(message: Text)
    var
        url: Text;
        httpClient: HttpClient;
        httpContent: HttpContent;
        httpResponse: HttpResponseMessage;
        httpHeader: HttpHeaders;

    begin

        url := 'https://{your_azurefunction_url}.azurewebsites.net/api/AzurePush?message=' + message;

        httpClient.Get(Url, httpResponse);

        If not httpResponse.IsSuccessStatusCode() then
            Error('Azure function service returned error:\\' +
                'Status code: %1\' +
                'Description: %2',
                httpResponse.HttpStatusCode(),
                httpResponse.ReasonPhrase());

    end;


}