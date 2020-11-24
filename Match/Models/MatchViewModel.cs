using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace CricketMatchProject.Models
{
    public class MatchViewModel
    {
        public Match _match = new Match();

        public int Id { get { return _match.Id; } set { _match.Id = value; } }
        [DisplayName("Match Name")] [Required(ErrorMessage = "This field is mandatory")]
        public string Match_Name { get { return _match.Match_Name; } set { _match.Match_Name = value; } }

        [DisplayName("Match Date")] [Required(ErrorMessage = "This field is mandatory")]
        public string Match_Date { get { return _match.Match_Date; } set { _match.Match_Date = value; } }

        [DisplayName("Team One")]
        [Required(ErrorMessage = "This field is mandatory")]
        public Nullable<int> Team_One { get { return _match.Team_One; } set { _match.Team_One = value; } }

        [DisplayName("Team Two")]
        [Required(ErrorMessage = "This field is mandatory")]
        public Nullable<int> Team_Two { get { return _match.Team_Two; } set { _match.Team_Two = value; } }

        [DisplayName("Start Time")]
        [Required(ErrorMessage = "This field is mandatory")]
        public string Start_Time { get { return _match.Start_Time; } set { _match.Start_Time = value; } }
        public string Address { get { return _match.Address; } set { _match.Address = value; } }


        public List<Team> _teamlist = new List<Team>();
        public List<Team> teams { get { return _teamlist; } set { _teamlist = value; } }

        
        public List<Player> _playerList = new List<Player>();
        public List<Player> players { get { return _playerList; } set { _playerList = value; } }

        public List<PlayerType> _playerTypeList = new List<PlayerType>();
        public List<PlayerType> playerType { get { return _playerTypeList; } set { _playerTypeList = value; } }

        public Player_Match_Mapping _player_Match_Mapping = new Player_Match_Mapping();
        //public int id { get; set; }
        //public Nullable<int> MatchId { get; set; }
        public Nullable<int> TeamId { get { return _player_Match_Mapping.TeamId; } set { _player_Match_Mapping.TeamId = value; } }
        public Nullable<int> PlayerId {  get { return _player_Match_Mapping.PlayerId; } set { _player_Match_Mapping.PlayerId = value; } }
        public Nullable<int> PlayerTypeId { get { return _player_Match_Mapping.PlayerTypeId; } set { _player_Match_Mapping.PlayerTypeId = value; } }
        public Nullable<int> Position { get { return _player_Match_Mapping.Position; } set { _player_Match_Mapping.Position = value; } }
    }
}