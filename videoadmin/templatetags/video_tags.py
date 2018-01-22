from django import template
register = template.Library()
import hashlib
import datetime

@register.filter(name='md5')
def md5_string(value):
    now = datetime.datetime.now()
    date_1 = (now.strftime("%Y-%m-%d"))
    return hashlib.md5(("%s--%s" % (date_1, value)).encode('utf-8')).hexdigest()