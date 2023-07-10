namespace PatientInformationPortal_Frontend.Helpers
{
    public class WebApi
    {
        public HttpClient Initial()
        {
            var client = new HttpClient();
            client.BaseAddress = new Uri("https://localhost:5031/");
            return client;
        }
    }
}
