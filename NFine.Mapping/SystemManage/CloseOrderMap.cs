using NFine.Domain.Entity.SystemManage;
using System.Data.Entity.ModelConfiguration;

namespace NFine.Mapping.SystemManage
{
    /// <summary>
    /// 停诊表
    /// </summary>
    public class CloseOrderMap : EntityTypeConfiguration<CloseOrderEntity>
    {
        public CloseOrderMap()
        {
            this.ToTable("CloseOrder");
            this.HasKey(t => t.CloseOrderId);
        }
    }
}