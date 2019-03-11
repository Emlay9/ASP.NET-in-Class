using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.Practice.Classes;

namespace WebApp.Practice
{
    public partial class MovieLibrary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private static List<Movie> movies = new List<Movie>();

        protected void AddToLibrary_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                Movie movie = new Movie();
                movie.Title = MovieTitle.Text;
                movie.Year = int.Parse(Year.Text);
                movie.Media = Media.Text;
                movie.Rating = Rating.Text;
                movie.Review = Review.Text;

                movies.Add(movie);

                MovieGrid.DataSource = movies;
                MovieGrid.DataBind();
            }
        }
    }
}