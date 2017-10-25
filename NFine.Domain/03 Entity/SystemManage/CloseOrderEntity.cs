using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NFine.Domain.Entity.SystemManage
{
    /// <summary>
    /// 停诊表
    /// </summary>
    public partial class CloseOrderEntity :IEntity<CloseOrderEntity>
    {
        /// <summary>
        /// Id
        /// </summary>
        public int CloseOrderId
        {
            get;
            set;
        }  
    
        /// <summary>
        /// 停诊时间
        /// </summary>
        public DateTime CloseDate
        {
            get;
            set;
        }  
    
        /// <summary>
        /// 医生
        /// </summary>
        public int DoctorId
        {
            get;
            set;
        }  
    
        /// <summary>
        /// 预约时间类型:1:上午2:下午3:晚上
        /// </summary>
        public int OrderTimeType
        {
            get;
            set;
        }  
    
    }
}