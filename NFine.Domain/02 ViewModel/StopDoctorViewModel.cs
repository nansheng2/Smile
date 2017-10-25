using NFine.Domain.Entity.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NFine.Domain.ViewModel
{
    /// <summary>
    /// 医生停诊
    /// </summary>
    public class StopDoctorViewModel
    {
        /// <summary>
        /// 停诊时间
        /// </summary>
        public DateTime CloseDate
        {
            get;
            set;
        }

        /// <summary>
        /// 医生Id
        /// </summary>
        public int DoctorId
        {
            get;
            set;
        }

        /// <summary>
        /// 上午
        /// </summary>
        public bool Morning
        {
            get;
            set;
        }

        /// <summary>
        /// 下午
        /// </summary>
        public bool Afternoon
        {
            get;
            set;
        }

        /// <summary>
        /// 晚上
        /// </summary>
        public bool Night
        {
            get;
            set;
        }

    }
}
