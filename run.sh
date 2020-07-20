sudo gem install bundler
sudo bundle install

inspec exec inspec-code -t winrm://Administrator@54.81.107.52 --password "SB=SRhZ*;ZDZKZ2" --format html >> report/results.html  
inspec exec inspec-code -t winrm://Administrator@54.81.107.52 --password "SB=SRhZ*;ZDZKZ2" --format html >> report/results.json

#inspec exec inspec-code -t winrm://${SPEC_USER}@${SPEC_HOST_NAME} --password "${SPEC_PASSWORD}" --format html >> report/results.html
#inspec exec inspec-code -t winrm://${SPEC_USER}@${SPEC_HOST_NAME} --password "${SPEC_PASSWORD}" --format json-rspec >> report/results.json
#inspec exec inspec-code -t winrm://${SPEC_USER}@${SPEC_HOST_NAME} --password "${SPEC_PASSWORD}" --format json >> report/results.json

