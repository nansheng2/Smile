﻿using NFine.Code;
using NFine.Domain.Entity.Enums;
using NFine.Domain.Entity.SystemManage;
using NFine.Domain.IRepository.SystemManage;
using NFine.Domain.ViewModel;
using NFine.IRepository.SystemManage;
using NFine.Repository.SystemManage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;

namespace NFine.Application.SystemManage
{
    public class DoctorApp
    {
        private IDoctorRepository service = new DoctorRepository();
        private ModuleApp moduleApp = new ModuleApp();
        private ModuleButtonApp moduleButtonApp = new ModuleButtonApp();

        private IVisitRepository visit = new VisitRepository();
        private ISegmentationOrderRepository segmentationOrder = new SegmentationOrderRepository();
        private IOrderRepository order = new OrderRepository();
        /// <summary>
        /// 保存事件
        /// </summary>
        /// <param name="entity"></param>
        /// <param name="permissionIds"></param>
        /// <param name="keyValue"></param>
        public void SubmitForm(DoctorViewModel entity, string keyValue)
        {
            service.SubmitForm(entity, keyValue);
        }

        public List<DoctorEntity> GetList(Pagination pagination, string keyword)
        {
            var expression = ExtLinq.True<DoctorEntity>();
            if (!string.IsNullOrEmpty(keyword))
            {
                expression = expression.And(t => t.DoctorName.Contains(keyword));
            }
            return service.FindList(expression, pagination);
        }

        public IQueryable<DoctorEntity> GetList(Expression<Func<DoctorEntity, bool>> predicate)
        {
            return service.IQueryable(predicate);
        }

        /// <summary>
        /// 删除医生
        /// </summary>
        /// <param name="doctorId">医生Id</param>
        public void DeleteForm(int doctorId)
        {

            service.DeleteForm(doctorId);
          
        }
    }
}
