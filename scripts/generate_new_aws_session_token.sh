_PROFILE_NAME=$1
_TOEKN_CODE=$2

_MFA_SERIAL=<mfa-serial>
_authenticationOutput=`aws --profile ${_PROFILE_NAME} sts get-session-token --serial-number ${_MFA_SERIAL} --token-code ${_TOKEN_CODE}`

echo ${_authenticationOutput}