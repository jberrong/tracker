namespace Tracker.Logic.BL
{
    public class LoginValidation
    {
        public bool TestValidate(string userName, string password)
        {
            if(userName == "JBerrong" && password == "Test")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
