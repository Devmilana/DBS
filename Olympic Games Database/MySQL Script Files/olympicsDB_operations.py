# Python script file to demonstrate connecting to a MySQL database and running queries



import os
import mysql.connector
from mysql.connector import errorcode

def get_db_connection():
    """
    Establishes connection to the MySQL database using environment variables.
    """
    try:
        connection = mysql.connector.connect(
            host=os.getenv('MYSQL_HOST', 'localhost'),
            port=int(os.getenv('MYSQL_PORT', 3306)),
            user=os.getenv('MYSQL_USER'),
            password=os.getenv('MYSQL_PASSWORD'),
            database=os.getenv('MYSQL_DATABASE')
        )
        if connection.is_connected():
            print("Successfully connected to MySQL database!")
            return connection
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Error: Access was denied. Enter the correct username and password")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Error: The database requested does not exist")
        else:
            print(f"Error: {err}")
    return None


def add_new_athlete_and_medal():
    """
    Adds a new athlete, records their participation, and assigns a Bronze medal
    """
    connection = get_db_connection()
    if not connection:
        return
    
    try:
        cursor = connection.cursor()
        
        # Insert into Person table
        insert_person_query = """
            INSERT INTO Person (First_Name, Last_Name, DOB, Gender)
            VALUES (%s, %s, %s, %s)
        """
        person_data = ('Melissa', 'Hudgens', '1999-01-01', 'F')
        cursor.execute(insert_person_query, person_data)
        new_person_id = cursor.lastrowid
        print(f"Inserted a new person with Person_ID: {new_person_id}")
        
        # Insert into Athlete table
        insert_athlete_query = """
            INSERT INTO Athlete (Person_ID, Country_ID, Sport)
            VALUES (%s, %s, %s)
        """
        athlete_data = (new_person_id, 1, "Athletics - Women's 500m Sprint")
        cursor.execute(insert_athlete_query, athlete_data)
        print(f"Inserted an athlete with Person_ID: {new_person_id}")
        
        # Insert into Participation table
        insert_participation_query = """
            INSERT INTO Participation (Person_ID, Team_ID, Country_ID, Event_ID, Result, Result_Type, Ranking)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
        """
        participation_data = (new_person_id, None, 1, 4, '1:06.50', 'Time', 3)
        cursor.execute(insert_participation_query, participation_data)
        print(f"Recorded participation for Person_ID: {new_person_id} in Event_ID: 4")
        
        # Call AddNewMedal stored procedure
        add_medal_query = "CALL AddNewMedal(%s, %s, %s, %s, %s)"
        medal_params = (4, new_person_id, None, 1, 'Bronze')  # Event_ID=4, Person_ID=new_person_id
        cursor.execute(add_medal_query, medal_params)
        print(f"Assigned Bronze medal to Person_ID: {new_person_id} for Event_ID: 4")
        
        # Commit transaction
        connection.commit()
        print("Transaction committed successfully")
        
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        connection.rollback()
        print("Transaction rolled back because of an error")
        
    finally:
        cursor.close()
        connection.close()
        print("Database connection was closed")
        

def get_country_medal_tally(country_id):
    """
    Find and prints the medal tally for the specified country
    """
    connection = get_db_connection()
    if not connection:
        return
    
    try:
        cursor = connection.cursor()
        
        # Call the stored procedure
        cursor.callproc('GetCountryMedalTally', [country_id])
        
        for result in cursor.stored_results():
            tally = result.fetchone()
            if tally:
                country_name, gold, silver, bronze, total = tally
                print(f"Medal Tally for {country_name}:")
                print(f"Gold Medals: {gold}")
                print(f"Silver Medals: {silver}")
                print(f"Bronze Medals: {bronze}")
                print(f"Total Medals: {total}")
            else:
                print("No data found for procedure")
        
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        
    finally:
        cursor.close()
        connection.close()
        print("Database connection was closed")
        

def add_new_venue(venue_name, location):
    """
    Adds a new venue to the Venue table
    """
    connection = get_db_connection()
    if not connection:
        return
    
    try:
        cursor = connection.cursor()
        insert_venue_query = """
            INSERT INTO Venue (Venue_Name, Location)
            VALUES (%s, %s)
        """
        venue_data = (venue_name, location)
        cursor.execute(insert_venue_query, venue_data)
        new_venue_id = cursor.lastrowid
        connection.commit()
        print(f"Inserted new venue '{venue_name}' with Venue_ID: {new_venue_id}")
        
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        connection.rollback()
        
    finally:
        cursor.close()
        connection.close()
        print("Database connection was closed")
        

def delete_medal(medal_id):
    """
    Deletes the specified medal from the Medal table
    """
    connection = get_db_connection()
    if not connection:
        return
    
    try:
        cursor = connection.cursor()
        delete_medal_query = """
            DELETE FROM Medal
            WHERE Medal_ID = %s
        """
        cursor.execute(delete_medal_query, (medal_id,))
        connection.commit()
        print(f"Deleted Medal with Medal_ID: {medal_id}")
        
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        connection.rollback()
        
    finally:
        cursor.close()
        connection.close()
        print("Database connection was closed")


def update_athlete_sport(person_id, new_sport):
    """
    Updates the sport of a specified athlete
    """
    connection = get_db_connection()
    if not connection:
        return
    
    try:
        cursor = connection.cursor()
        update_sport_query = """
            UPDATE Athlete
            SET Sport = %s
            WHERE Person_ID = %s
        """
        update_data = (new_sport, person_id)
        cursor.execute(update_sport_query, update_data)
        connection.commit()
        print(f"Updated Sport for Person_ID: {person_id} to '{new_sport}'")
        
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        connection.rollback()
        
    finally:
        cursor.close()
        connection.close()
        print("Database connection was closed")


def main():
    """
    Main function to run demo functions
    """
    print("\n--- Adding a New Athlete and Assigning a Bronze Medal ---")
    add_new_athlete_and_medal()
    
    print("\n--- Retrieving Medal Tally for United States (Country_ID=1) ---")
    get_country_medal_tally(1)
    
    print("\n--- Adding a New Venue ---")
    add_new_venue('La Concorde', 'Paris')
    
    print("\n--- Updating Athlete's Sport ---")
    update_athlete_sport(1, 'Athletics - Men\'s 200m Sprint') # Updating Michael Johnson's sport
    
    print("\n--- Deleting a Medal ---") 
    delete_medal(43) # Deleting Medal_ID=43 (USA Men's Basketball Team Gold)
    
    print("\n--- Retrieving Medal Tally for United States After Deletion (Country_ID=1) ---")
    get_country_medal_tally(1)

if __name__ == "__main__":
    main()


