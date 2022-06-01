defmodule Yardi.Request.GetUnitInformation do
  use Yardi.Request,
    container: "GetUnitInformation_Login",
    xmlns: "http://tempuri.org/YSI.Interfaces.WebServices/ItfResidentTransactions20",
    soap_action:
      "http://tempuri.org/YSI.Interfaces.WebServices/ItfResidentTransactions20/GetUnitInformation_Login",
    action: "itfresidenttransactions20.asmx"

  def request_body(options) do
    credentials = options[:credentials]

    [
      element("UserName", credentials.username),
      element("Password", credentials.password),
      element("ServerName", credentials.server_name),
      element("Database", credentials.db),
      element("Platform", credentials.platform),
      element("YardiPropertyId", options[:property_id]),
      element("InterfaceEntity", credentials.entity),
      element("InterfaceLicense", credentials.interface)
    ]
  end
end
