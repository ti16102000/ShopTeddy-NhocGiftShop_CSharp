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
    
    public partial class ProductImage
    {
        public int idPI { get; set; }
        public int idPro { get; set; }
        public string imgPro { get; set; }
        public Nullable<bool> imgMain { get; set; }
    
        public virtual Product Product { get; set; }
    }
}
