require 'faraday'
require 'dotenv/load'
require_relative 'helpers/crm.rb'
require_relative 'helpers/zoho.rb'

$logger = Logger.new($stdout)
$crm_api = CRM.new
def main()
  has_more = true
  page = 1
  while has_more == true and page < 2 do
    retrieve_contacts_resp = $crm_api.search('Contacts',"Boolean:equals:false&per_page=100&fields=Boolean")
    contacts = retrieve_contacts_resp['data']

    contacts_to_update = Array.new
    contacts.each do |contact|
      contacts_to_update.push({'id'=>contact['id'],'Field_Name'=>'Value'})
    end
    has_more = retrieve_contacts_resp['info']['more_records']
    updated_contacts = $crm_api.zoho_crm_post('Contacts','put',contacts_to_update)
    $logger.info(updated_contacts)
    page += 1
  end

end

main()
