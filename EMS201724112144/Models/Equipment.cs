//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace EMS201724112144.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Equipment
    {
        public string Eqpld { get; set; }
        public string EqpName { get; set; }
        public string EqpSpecification { get; set; }
        public string EqpImg { get; set; }
        public Nullable<double> EqpPrice { get; set; }
        public Nullable<System.DateTime> DateOfPurchase { get; set; }
        public string Position { get; set; }
        public string EmpId { get; set; }
    
        public virtual Employee Employee { get; set; }
    }
}
