using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using PatientInformationPortal_Frontend.Helpers;
using PatientInformationPortal_Frontend.Models;
using PatientInformationPortal_Frontend.ViewModels;

namespace PatientInformationPortal_Frontend.Controllers
{
    public class PatientController : Controller
    {
        
        WebApi api = new WebApi();

        public async Task<IActionResult> AllPatientsData()
        {
            List<Patient> patientList = new List<Patient>();
            HttpClient client = api.Initial();
            HttpResponseMessage response = await client.GetAsync("http://localhost:5031/api/Patient/GetAllPatientData");
            if (response.IsSuccessStatusCode)
            {
                var result = response.Content.ReadAsStringAsync().Result;
                patientList = JsonConvert.DeserializeObject<List<Patient>>(result);
            }
            return View(patientList);

        }

        public async Task<IEnumerable<Disease>> GetAllDisease()
        {
            List<Disease> diseaselist = new List<Disease>();
            HttpClient client = api.Initial();
            HttpResponseMessage response = await client.GetAsync("http://localhost:5031/api/Disease");
            if (response.IsSuccessStatusCode)
            {
                var result = response.Content.ReadAsStringAsync().Result;
                diseaselist = JsonConvert.DeserializeObject<List<Disease>>(result);
            }
            return diseaselist;
        }

        public async Task<IEnumerable<NCD>> GetAllNCDs()
        {
            List<NCD> ncdList = new List<NCD>();
            HttpClient client = api.Initial();
            HttpResponseMessage response = await client.GetAsync("http://localhost:5031/api/NCD");
            if (response.IsSuccessStatusCode)
            {
                var result = response.Content.ReadAsStringAsync().Result;
                ncdList = JsonConvert.DeserializeObject<List<NCD>>(result);
            }
            return ncdList;
        }

        public async Task<IEnumerable<Allergy>> GetAllAllergies()
        {
            List<Allergy> allergyList = new List<Allergy>();
            HttpClient client = api.Initial();
            HttpResponseMessage response = await client.GetAsync("http://localhost:5031/api/Allergies");
            if (response.IsSuccessStatusCode)
            {
                var result = response.Content.ReadAsStringAsync().Result;
                allergyList = JsonConvert.DeserializeObject<List<Allergy>>(result);
            }
            return allergyList;
        }

        public async Task<IActionResult> InsertPatientData()
        {
            var diseaseList = await GetAllDisease();
            ViewBag.diseases = new SelectList(diseaseList, "DiseaseId", "DiseaseName");

            var epilepsy = Enum.GetValues(typeof(Epilepsy)).Cast<Epilepsy>();
            ViewBag.epilepsy = new SelectList(epilepsy);

            var ncdList = await GetAllNCDs();
            ViewBag.ncds = ncdList;

            var allergyList = await GetAllAllergies();
            ViewBag.allergies = allergyList;    

            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> InsertPatientData(PatientInputModel modelData, [FromForm] List<int> NCD_Ids) 
        {
            HttpClient client = api.Initial();

            var postData = client.PostAsJsonAsync<PatientInputModel>("http://localhost:5031/api/Patient/InsertPatientData", modelData);

            postData.Wait();

            var result = postData.Result;
            if(result.IsSuccessStatusCode)
            {
                return RedirectToAction("AllPatientsData");
            }

            return View();
        }

        public async Task<IActionResult> DeletePatientData(int id)
        {
            var patient = new Patient();
            HttpClient client = api.Initial();
            HttpResponseMessage response = await client.DeleteAsync($"http://localhost:5031/api/Patient/DeletePatientData/{id}");

            return RedirectToAction("AllPatientsData");
        }
    }
}
