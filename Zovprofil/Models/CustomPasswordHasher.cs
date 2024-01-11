using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace Zovprofil.Models
{
    public class CustomPasswordHasher : IPasswordHasher
    {
        public string HashPassword(string password)
        {
            return GetMD5(password);
        }

        public PasswordVerificationResult VerifyHashedPassword(string hashedPassword, string providedPassword)
        {
            var hashedProvidedPassword = GetMD5(providedPassword);

            if (hashedPassword == hashedProvidedPassword)
            {
                return PasswordVerificationResult.Success;
            }
            else
            {
                return PasswordVerificationResult.Failed;
            }
        }

        private string GetMD5(string text)
        {
            MD5 Hasher = MD5.Create();

            byte[] data = Hasher.ComputeHash(Encoding.Default.GetBytes(text));

            StringBuilder sBuilder = new StringBuilder();

            //преобразование в HEX
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            return sBuilder.ToString();
        }
    }
}