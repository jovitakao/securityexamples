using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hashing
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenHash_Click(object sender, EventArgs e)
        {
            var data = Encoding.UTF8.GetBytes(txtPwd.Text);
            var hasher = new SHA1CryptoServiceProvider();
            var hashData = hasher.ComputeHash(data);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hashData.Length; i++)
            {
                sb.Append(hashData[i].ToString("x2"));
            }
            txtPwdHash.Text = sb.ToString();
            var dataAndSalt = Encoding.UTF8.GetBytes(txtPwd.Text + txtSalt.Text);
            hashData = hasher.ComputeHash(dataAndSalt);
            sb = new StringBuilder();
            for (int i = 0; i < hashData.Length; i++)
            {
                sb.Append(hashData[i].ToString("x2"));
            }
            txtPwdHashSalt.Text = sb.ToString();

        }
    }
}