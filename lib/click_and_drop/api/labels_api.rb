=begin
#ChannelShipper & Royal Mail Public API

#Import your orders, retrieve your orders and generate labels.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module ClickAndDrop
  class LabelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return a single PDF file with generated label and/or associated document(s)
    # <b>Reserved for OBA customers only</b>  The account \"Label format\" settings page will control the page format settings used to print the postage label  and associated documents. Certain combinations of these settings may prevent associated documents from being  printed together with the postage label within a single document. If this occurs the documentType option can be  used in a separate call to print missing documents. 
    # @param order_identifiers [String] One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks.
    # @param document_type [String] Document generation mode. When documentType is set to \&quot;postageLabel\&quot; the additional parameters below must be used. These additional parameters will be ignored when documentType is not set to \&quot;postageLabel\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_returns_label Include returns label. Required when documentType is set to &#39;postageLabel&#39;
    # @option opts [Boolean] :include_cn Include CN22/CN23 with label. Optional parameter. If this parameter is used the setting will override the default account behaviour specified in the \&quot;Label format\&quot; setting \&quot;Generate customs declarations with orders\&quot;
    # @return [File]
    def get_orders_label_async(order_identifiers, document_type, opts = {})
      data, _status_code, _headers = get_orders_label_async_with_http_info(order_identifiers, document_type, opts)
      data
    end

    # Return a single PDF file with generated label and/or associated document(s)
    # &lt;b&gt;Reserved for OBA customers only&lt;/b&gt;  The account \&quot;Label format\&quot; settings page will control the page format settings used to print the postage label  and associated documents. Certain combinations of these settings may prevent associated documents from being  printed together with the postage label within a single document. If this occurs the documentType option can be  used in a separate call to print missing documents. 
    # @param order_identifiers [String] One or several Order Identifiers or Order References separated by semicolon. Order Identifiers are integer numbers. Order References are strings - each must be percent-encoded and surrounded by double quotation marks.
    # @param document_type [String] Document generation mode. When documentType is set to \&quot;postageLabel\&quot; the additional parameters below must be used. These additional parameters will be ignored when documentType is not set to \&quot;postageLabel\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_returns_label Include returns label. Required when documentType is set to &#39;postageLabel&#39;
    # @option opts [Boolean] :include_cn Include CN22/CN23 with label. Optional parameter. If this parameter is used the setting will override the default account behaviour specified in the \&quot;Label format\&quot; setting \&quot;Generate customs declarations with orders\&quot;
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_orders_label_async_with_http_info(order_identifiers, document_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LabelsApi.get_orders_label_async ...'
      end
      # verify the required parameter 'order_identifiers' is set
      if @api_client.config.client_side_validation && order_identifiers.nil?
        fail ArgumentError, "Missing the required parameter 'order_identifiers' when calling LabelsApi.get_orders_label_async"
      end
      # verify the required parameter 'document_type' is set
      if @api_client.config.client_side_validation && document_type.nil?
        fail ArgumentError, "Missing the required parameter 'document_type' when calling LabelsApi.get_orders_label_async"
      end
      # verify enum value
      allowable_values = ["postageLabel", "despatchNote", "CN22", "CN23"]
      if @api_client.config.client_side_validation && !allowable_values.include?(document_type)
        fail ArgumentError, "invalid value for \"document_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/orders/{orderIdentifiers}/label'.sub('{' + 'orderIdentifiers' + '}', CGI.escape(order_identifiers.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'documentType'] = document_type
      query_params[:'includeReturnsLabel'] = opts[:'include_returns_label'] if !opts[:'include_returns_label'].nil?
      query_params[:'includeCN'] = opts[:'include_cn'] if !opts[:'include_cn'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Bearer']

      new_options = opts.merge(
        :operation => :"LabelsApi.get_orders_label_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LabelsApi#get_orders_label_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
