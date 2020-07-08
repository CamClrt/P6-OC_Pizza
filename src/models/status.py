"""This module manage all operations with the status table."""


class StatusManager:
    """Represent the manager of the status table."""

    def __init__(self, cnx):
        self.cnx = cnx

    def create(self, status_object):
        """insert object in DB."""

        SQL_INSERT_STATUS = "INSERT IGNORE INTO Status (label) VALUES (%s);"
        cursor = self.cnx.cursor()
        cursor.execute(SQL_INSERT_STATUS, (status_object.label,))
        self.cnx.commit()

        cursor.close()


class Status:
    """Represent status table."""

    def __init__(self, label):
        self.label = label

    def __repr__(self):
        """Represent status object."""
        return f"{self.label}"
