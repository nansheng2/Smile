
using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Mvc;
using NFine.Code;

namespace NFine.Web.Areas.UIManage.Controllers
{
    #region 测试获取患者信息
    /// <summary>
    /// 测试获取患者信息
    /// </summary>
    public class UserController : Controller
    {
        #region 获取患者信息
        /// <summary>
        /// 获取患者信息
        /// </summary>
        /// <returns>参数</returns>
        [HttpPost]
        // GET: UIManage/User
        public ActionResult GetUserInfo(GetUserInfoParameter parameter)
        {
            Response<List<GetUserInfoResult>> response = new Response<List<GetUserInfoResult>>();
            List<GetUserInfoResult> result = new List<GetUserInfoResult>();
            response.Result = result;
            string isTest = Configs.GetValue("IsTest");
            if (isTest == "1")
            {
                #region 测试环境
                response.IsSuccessfull = true;
                response.TotalCount = 10;
                int identificationType = parameter.IdentificationType;
                string identificationNumber = parameter.IdentificationNumber;

                Random ran = new Random();
                for (int i = 0; i < 10; i++)
                {

                    int radom = ran.Next(100, 999);
                    GetUserInfoResult getUserInfoResult = new GetUserInfoResult();
                    getUserInfoResult.IdentificationNumber = identificationNumber;
                    getUserInfoResult.IdentificationType = identificationType;
                    getUserInfoResult.Name = "Tom" + radom;
                    getUserInfoResult.Tel = "18700001" + radom;
                    getUserInfoResult.Gender = 1;
                    getUserInfoResult.Birthday = DateTime.Now.AddDays(-radom);
                    getUserInfoResult.CardNumber = DateTime.Now.ToString("yyyyMMdd") + radom;
                    result.Add(getUserInfoResult);
                }
                return Content(response.ToJson());
                #endregion
            }
            else
            {
                #region 正试环境
                string url = Configs.GetValue("HisUrl");
                var webClinet = new APITestor(url);
                GetUserInfoParameter param = new GetUserInfoParameter();
                param.IdentificationType = parameter.IdentificationType;
                param.IdentificationNumber = parameter.IdentificationNumber;
                var queryResponse = webClinet.Query<List<GetUserInfoResult>, GetUserInfoParameter>("dyw/GetUserInfo", param);

                //验证成功
                if (queryResponse.Result)
                {
                    response.IsSuccessfull = queryResponse.Result;
                    response.Reason = queryResponse.Message;
                    response.Result = queryResponse.Data;
                }
                else
                {
                    response.IsSuccessfull = queryResponse.Result;
                    response.Reason = queryResponse.Message;
                }
                #endregion
            }
            return Content(response.ToJson());
        }
        #endregion
    }
    #endregion

    #region 请求和返回值
    /// <summary>
    /// 获取用户信息参数
    /// </summary>
    public class GetUserInfoParameter
    {
        /// <summary>
        /// 证件类型
        /// </summary>
        public int IdentificationType
        {
            get;
            set;
        }

        /// <summary>
        /// 证件号码
        /// </summary>
        public string IdentificationNumber
        {
            get;
            set;
        }
    }

    public class Response<T>
    {

        /// <summary>
        /// 是否成功
        /// </summary>
        public bool IsSuccessfull
        {
            get;
            set;
        }

        /// <summary>
        /// 失败为原因
        /// </summary>
        public string Reason
        {
            get;
            set;
        }


        /// <summary>
        /// 数据列表
        /// </summary>
        public T Result
        {
            get;
            set;
        }


        /// <summary>
        /// 当前查询总条数
        /// </summary>
        public int TotalCount
        {
            get;
            set;
        }
    }

    public class GetUserInfoResult
    {
        /// <summary>
        /// 证件类型
        /// 1：护照
        /// 2：身体证
        /// </summary>
        public int IdentificationType
        {
            get;
            set;
        }

        /// <summary>
        /// 证件号码
        /// </summary>
        public string IdentificationNumber
        {
            get;
            set;
        }

        /// <summary>
        /// 患者姓名
        /// </summary>
        public string Name
        {
            get;
            set;
        }


        /// <summary>
        /// 电话
        /// </summary>
        public string Tel
        {
            get;
            set;
        }


        /// <summary>
        /// 性别
        /// 1:男
        /// 2:女
        /// </summary>
        public int Gender
        {
            get;
            set;
        }

        /// <summary>
        /// 出生年月(yyyy-MM-dd)
        /// </summary>
        public DateTime Birthday
        {
            get;
            set;
        }

        /// <summary>
        /// 就诊卡号
        /// </summary>
        public string CardNumber
        {
            get;
            set;
        }
    }
    #endregion

    #region 加密算法
    public class APITestor
    {
        private string ServerUri;
        public APITestor(string uri)
        {
            ServerUri = uri;
        }
        private bool E(object data, out string t, out string s)
        {
            //Console.WriteLine("执行验证函数=>");
            //Console.WriteLine("密匙:hbjk");

            var Encryption = MD5("hbjk");
            Console.WriteLine("Encryption = MD5(\"hbjk\")");
            //Console.WriteLine("Encryption = MD5(\"hbjk\")");
            Console.WriteLine("Encryption = " + Encryption);
            //Console.WriteLine("随机数 t:" + (t = System.Guid.NewGuid().ToString()));
            t = System.Guid.NewGuid().ToString();
            var datastr = S(data);
            //Console.WriteLine(string.Format(" s = MD5(Encryption+t+请求源对象)"));
            //Console.WriteLine(string.Format(" s = MD5({0}{1}{2})", Encryption, t, datastr));
            string.Format(" s = MD5({0}{1}{2})", Encryption, t, datastr);
            s = MD5(string.Format("{0}{1}{2}", Encryption, t, datastr));
            //Console.WriteLine("s = " + s);
            return true;
        }
        private string S(object data)
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(data);
        }

        #region API
        public class ApiRequest<DT>
        {
            public string T { get; set; }
            public string S { get; set; }
            public DT Data { get; set; }

        }

        public class ApiResponse<T>
        {
            public ApiResponse()
            {
                Result = false;
                Error = null;
                Message = null;
                Debug = null;
                Data = default(T);
                Version = 0;
            }
            public bool Result { get; set; }
            public string Error { get; set; }
            public string Message { get; set; }
            public string Debug { get; set; }
            public int Version { get; set; }
            public T Data { get; set; }
        }


        public ApiResponse<T> Query<T, R>(string path, R data)
        {
            //Console.WriteLine();
            //Console.WriteLine("--------------------------");
            //Console.WriteLine("请求地址:" + ServerUri + path);
            Console.WriteLine("请求源对象:" + Newtonsoft.Json.JsonConvert.SerializeObject(data));
            System.Net.WebClient client = null;
            ApiResponse<T> result = null;
            try
            {
                client = new System.Net.WebClient();
                client.Encoding = Encoding.UTF8;
                if (path.Substring(0, 1) != "/")
                {
                    path = "/" + path;
                }
                string t;
                string s;
                if (E(data, out t, out s))
                {
                    var request = new ApiRequest<R>();
                    request.S = s;
                    request.T = t;
                    request.Data = data;

                    //Console.WriteLine("请求数据:" + S(request));
                    var paramData = System.Web.HttpUtility.UrlEncode(S(request));
                    //Console.WriteLine("请求数据UrlEncode编码:" + paramData);
                    var uri = ServerUri + path + "?Data=" + paramData;
                    var temp = client.UploadString(uri, "");
                    Console.WriteLine("请求结果:" + temp);
                    result = Newtonsoft.Json.JsonConvert.DeserializeObject<ApiResponse<T>>(temp);

                }
                else
                {
                    result = new ApiResponse<T>();
                    result.Error = "加密失败!";
                }

                // Console.WriteLine("请求结束\n");
                return result;
            }
            catch (Exception e)
            {
                result = new ApiResponse<T>();
                result.Error = e.Message;
                // Console.WriteLine("请求异常:" + e.Message);
            }
            finally
            {
                client.Dispose();
            }
            return result;
        }
        #endregion

        public string LastError { get { return m_error; } }
        private string m_error = "";

        #region MD5加密
        public static string MD5(string data)
        {
            var md5 = System.Security.Cryptography.MD5.Create();
            var buff = ASCIIEncoding.UTF8.GetBytes(data);
            var md5resultbytes = md5.ComputeHash(buff);
            var md5result = new StringBuilder();
            foreach (var b in md5resultbytes)
            {
                md5result.Append(b.ToString("X2"));
            }
            return md5result.ToString();
        }
        #endregion
    }
    #endregion
}