using AutoFixture;
using DatabaseModels.Models;
using FluentAssertions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata;
using Moq;
using PatientInformationPortal_Backend.Controllers;
using Repositories.Interfaces;

namespace UnitTestProject.ControllerTests
{
    public class PatientControllerTests
    {
        private readonly IFixture fixture;
        private readonly Mock<IUnitOfWork> unitOfWorkMock;
        private readonly PatientController sut;

        private readonly IUnitOfWork unitOfWork;
        private readonly IGenericRepo<Patient> repo;

        public PatientControllerTests(IUnitOfWork unitOfWork)
        {
            fixture = new Fixture();
            unitOfWorkMock = fixture.Freeze<Mock<IUnitOfWork>>();
            sut = new PatientController(unitOfWorkMock.Object);
            this.unitOfWork = unitOfWork;
            repo = this.unitOfWork.GetRepo<Patient>();
        }

        [Fact]
        public async Task GetAllPatientData_ShouldReturnOkResponse_WhenDataFound()
        {
            //---------------Arrange------------------

            var patientMock = fixture.Create<IEnumerable<Patient>>();
            unitOfWorkMock.Setup(x => x.GetRepo<Patient>().GetAllData()).ReturnsAsync(patientMock);

            //-----------------Act---------------------

            var result = await sut.GetAllPatientData().ConfigureAwait(false);

            //---------------Assert-----------------

            result.Should().NotBeNull();
            result.Should().BeAssignableTo<ActionResult<IEnumerable<Patient>>>();
            result.Should().BeAssignableTo<OkObjectResult>();
            result.As<OkObjectResult>().Value.Should().NotBeNull().And.BeOfType(patientMock.GetType());

            unitOfWorkMock.Verify(x => x.GetRepo<Patient>().GetAllData(), Times.Once);
        }

    }
}