"""This module manage all operations with the employee table."""

from src.models.job import Job, JobManager


class EmployeeManager:
    """Represent the manager of the employee table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, employee_object):
        """insert object in DB."""

        # add the job
        job_mng = JobManager(self.cnx)
        job_mng.create(employee_object.job)

        # add employee data + foreign key
        SQL_INSERT_EMPLOYEE = """
        INSERT IGNORE INTO Employee (
            first_name,
            last_name,
            phone_number,
            email,
            password,
            restaurant_id,
            job_id) VALUES (
                %(first_name)s,
                %(last_name)s,
                %(phone_number)s,
                %(email)s,
                %(password)s, (
                    SELECT id FROM Restaurant
                    WHERE name=%(restaurant_name)s), (
                        SELECT id FROM Job
                        WHERE label=%(job_name)s)
                        );
                        """
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_EMPLOYEE, employee_object.data)
        self.cnx.commit()

        cursor.close()


class Employee:
    """Represent employee table."""

    def __init__(self, data):
        self.data = data
        self.first_name = data.get("first_name")
        self.last_name = data.get("last_name")
        self.phone_number = data.get("phone_number")
        self.email = data.get("email")
        self.password = data.get("password")
        self.job = Job(data)
