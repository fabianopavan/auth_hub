module AuthHub
    class ClientiCliente < ClientiRecord
        self.table_name = 'clienti__cliente'
        self.primary_key = :ID
        
        has_many :clienti_installazioni, class_name: 'AuthHub::ClientiInstallazione', :foreign_key => "ID_ANAGRAFICA"
        has_many :clienti_attivazioni, class_name: 'AuthHub::ClientiAttivazione', :foreign_key => "ID_CLIENTE"
        
        #tabella per relazione N a N con gli user
        has_many :enti_gestiti, class_name: 'AuthHub::EnteGestito', inverse_of: 'clienti_cliente'
        has_many :users, class_name: 'AuthHub::User', through: :enti_gestiti
        #ha le info per le login spid/cie/eidas
        has_one :info_login_cliente
    end
end