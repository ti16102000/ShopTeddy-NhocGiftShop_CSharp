//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NhocGiftShop.Models.EntitiesModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderDetail
    {
        public int idOD { get; set; }
        public int idOP { get; set; }
        public int idPF { get; set; }
        public int priceOD { get; set; }
        public int quantity { get; set; }
        public int amount { get; set; }
    
        public virtual OrderProduct OrderProduct { get; set; }
        public virtual ProductFormat ProductFormat { get; set; }
    }
}