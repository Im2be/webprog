﻿using System;
using System.Collections.Generic;
using webprog.Domain;
using webprog.DAO;
using System.Linq;

namespace webprog.BLL
{
    public class MatchService
    {
        MatchDAO dao = new MatchDAO();

        public MatchService()
        {
        }

        public Match getMatch(int id)
        {
            return dao.getMatch(id);
        }

        public List<Match> getAllComing()
        {
            return dao.getAllComing();
        }

        public List<Match> getAllComingMatchesOfTeam(int id)
        {
            return dao.getAllComingOfTeam(id);
        }

        public List<Match> getAllMatches()
        {
            return dao.getAll();
        }

        public List<Match> getAllMatchesOfTeam(int id)
        {
            return dao.getAllOfTeam(id);
        }
        
        public List<int[]> getTicketsAvailable(Match m)
        {
            List<int[]> retVal = new List<int[]>();

            Ticket_teamDAO ticket_teamDAO = new Ticket_teamDAO();
            List<Ticket_team> ticket_team = ticket_teamDAO.getAllOfTeam(m.homeTeam.id);

            TicketDAO ticketDAO = new TicketDAO();
            List<Ticket> tickets = ticketDAO.getAllOfMatch(m);

            for (int i = 0; i < ticket_team.Count; i++)
            {
                int total = ticket_team.ElementAt(i).amount;
                int sold = 0;
                for (int j = 0; j < tickets.Count; j++)
                {
                    if (tickets.ElementAt(j) == null)
                    {
                        break;
                    }
                    else if (tickets.ElementAt(j).ticket_type == ticket_team.ElementAt(i).ticket_type)
                    {
                        sold++;
                        break;
                    }
                }
                int[] a = { ticket_team.ElementAt(i).ticket_type.id, sold, total };
                retVal.Add(a);
            }
            return retVal;
        }
    }
}
