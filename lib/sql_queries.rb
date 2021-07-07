# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  %q(
    SELECT pr.title, 
           SUM(pl.amount) AS pledge_amount
    FROM projects pr
    JOIN pledges pl ON pr.id = pl.project_id
    GROUP BY 1
    ORDER BY 1;
  )
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  %q(
    SELECT u.name,
           u.age, 
           SUM(pl.amount)
    FROM users u
    JOIN pledges pl ON u.id = pl.user_id
    GROUP BY 1, 2
    ORDER BY 1;
  )
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  %q(
    SELECT projects.title,
           foo.funds_raised - projects.funding_goal AS amount_over_goal
    FROM projects
    JOIN (SELECT pr.id AS project_id,
                 SUM(pl.amount) AS funds_raised
          FROM projects pr
          JOIN pledges pl ON pr.id = pl.project_id
          GROUP BY 1) foo ON foo.project_id = projects.id
    WHERE foo.funds_raised - projects.funding_goal >= 0;
  )
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  %q(
    SELECT u.name,
           SUM(pl.amount) AS total_pledged_amount
    FROM users u
    JOIN pledges pl ON u.id = pl.user_id
    GROUP BY 1
    ORDER BY 2;
  )
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  %q(
    SELECT pr.category,
           pl.amount
    FROM projects pr
    JOIN pledges pl ON pr.id = pl.project_id
    WHERE pr.category = 'music';
  )
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  %q(
    SELECT pr.category,
           SUM(pl.amount) AS total_pledged_amount
    FROM projects pr
    JOIN pledges pl ON pr.id = pl.project_id
    WHERE pr.category = 'books';
  )
end
