# import hmac, base64, struct, hashlib, time
# import pyotp
# #
# # def get_hotp_token(secret, intervals_no):
# #     key = base64.b32decode(secret, True)
# #     msg = struct.pack(">Q", intervals_no)
# #     h = hmac.new(key, msg, hashlib.sha1).digest()
# #     o = ord(h[19]) & 15
# #     h = (struct.unpack(">I", h[o:o+4])[0] & 0x7fffffff) % 1000000
# #     return h
# #
# # def get_totp_token(secret):
# #     return get_hotp_token(secret, intervals_no=int(time.time())//30)
#
# totp = pyotp.TOTP('base32secret3232')
# totp.now() # => '492039'
#
# # OTP verified for current time
# totp.verify('492039') # => True
# time.sleep(30)
# totp.verify('492039') # => False
#
# pyotp.random_base32() # returns a 16 character base32 secret. Compatible with Google Authenticator and other OTP apps
#
#
# pyotp.totp.TOTP('JBSWY3DPEHPK3PXP').provisioning_uri("alice@google.com", issuer_name="Secure App")results
#
# >>> 'otpauth://totp/Secure%20App:alice%40google.com?secret=JBSWY3DPEHPK3PXP&issuer=Secure%20App'
#
# pyotp.hotp.HOTP('JBSWY3DPEHPK3PXP').provisioning_uri("alice@google.com", initial_count=0, issuer_name="Secure App")
#
# >>> 'otpauth://hotp/Secure%20App:alice%40google.com?secret=JBSWY3DPEHPK3PXP&issuer=Secure%20App&counter=0'


import pyotp
totp = pyotp.TOTP("d5zc7srnexdo667p")
print("Current OTP:", totp.now())
a = str(totp.now())


# pyotp.random_base32() # returns a 16 character base32 secret. Compatible with Google Authenticator and other OTP apps
