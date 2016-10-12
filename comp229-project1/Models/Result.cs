namespace comp229_project1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Result
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int GameID { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int WeekNumber { get; set; }

        public int TeamID1 { get; set; }

        public int TeamScore1 { get; set; }

        public int TeamID2 { get; set; }

        public int TeamScore2 { get; set; }

        public int Spectator { get; set; }
    }
}
