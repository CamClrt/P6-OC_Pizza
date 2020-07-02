"""
    This module manage all operations with the job table
"""


class JobManager:
    """Represent the manager of the job table"""

    def __init__(self, cnx):
        self.cnx = cnx
    
    def create(self, job_object):
        """insert object in DB"""

        SQL_INSERT_JOB = "INSERT IGNORE INTO Job (label) VALUES (%(job_name)s);"

        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_JOB, job_object.data)
        self.cnx.commit()
        
        cursor.close()


class Job:
    """Represent job table"""

    def __init__(self, data):
        self.label = data.get('job_name')
        self.data = data

    def __repr__(self):
        """Represent job object"""
        return f"{self.label}"
