"""
    This module store all the useful filters to process data
"""

import re


def city_filter(tmp_city, tmp_zip_code):
    """Filter cities data"""
    city = tmp_city.strip().capitalize().replace("-", " ")
    zip_code = tmp_zip_code.lower()
    return city[:50], zip_code[:5]

def contact_filter(tmp_first_name, tmp_last_name, tmp_phone_number, tmp_birthdate):
    """Filter contact_details data"""
    first_name = tmp_first_name.capitalize()[:30]
    last_name = tmp_last_name.capitalize()[:30]
    
    if len(tmp_phone_number) == 10:
        phone_number = tmp_phone_number
    else:
        phone_number = "0000000000"
    
    if re.search("[0-9]{2}[-/.]([0-9]){2}[-/.][0-9]{4}", tmp_birthdate):
        
        if tmp_birthdate.find("/"):
            birthdate = tmp_birthdate.replace("-", " ")
        elif tmp_birthdate.find("."):
            birthdate = tmp_birthdate.replace("-", " ")
        else:
            birthdate = tmp_birthdate
    else:
        birthdate = "00-00-0000"
    
    return first_name, last_name, phone_number, birthdate


def address_filter(tmp_address1, tmp_address2, tmp_digicode):
    """Filter address data"""
    address1 = tmp_address1[:100]
    address2 = tmp_address2[:100]
    digicode = tmp_digicode[:10]
    return address1, address2, digicode