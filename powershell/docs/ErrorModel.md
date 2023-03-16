# ErrorModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusCode** | [**HttpStatusCode**](HttpStatusCode.md) | * &#x60;Continue&#x60; &#x3D; 100  * &#x60;SwitchingProtocols&#x60; &#x3D; 101  * &#x60;Processing&#x60; &#x3D; 102  * &#x60;EarlyHints&#x60; &#x3D; 103  * &#x60;OK&#x60; &#x3D; 200  * &#x60;Created&#x60; &#x3D; 201  * &#x60;Accepted&#x60; &#x3D; 202  * &#x60;NonAuthoritativeInformation&#x60; &#x3D; 203  * &#x60;NoContent&#x60; &#x3D; 204  * &#x60;ResetContent&#x60; &#x3D; 205  * &#x60;PartialContent&#x60; &#x3D; 206  * &#x60;MultiStatus&#x60; &#x3D; 207  * &#x60;AlreadyReported&#x60; &#x3D; 208  * &#x60;IMUsed&#x60; &#x3D; 226  * &#x60;Ambiguous&#x60; &#x3D; 300  * &#x60;Ambiguous&#x60; &#x3D; 300  * &#x60;Moved&#x60; &#x3D; 301  * &#x60;Moved&#x60; &#x3D; 301  * &#x60;Redirect&#x60; &#x3D; 302  * &#x60;Redirect&#x60; &#x3D; 302  * &#x60;RedirectMethod&#x60; &#x3D; 303  * &#x60;RedirectMethod&#x60; &#x3D; 303  * &#x60;NotModified&#x60; &#x3D; 304  * &#x60;UseProxy&#x60; &#x3D; 305  * &#x60;Unused&#x60; &#x3D; 306  * &#x60;TemporaryRedirect&#x60; &#x3D; 307  * &#x60;TemporaryRedirect&#x60; &#x3D; 307  * &#x60;PermanentRedirect&#x60; &#x3D; 308  * &#x60;BadRequest&#x60; &#x3D; 400  * &#x60;Unauthorized&#x60; &#x3D; 401  * &#x60;PaymentRequired&#x60; &#x3D; 402  * &#x60;Forbidden&#x60; &#x3D; 403  * &#x60;NotFound&#x60; &#x3D; 404  * &#x60;MethodNotAllowed&#x60; &#x3D; 405  * &#x60;NotAcceptable&#x60; &#x3D; 406  * &#x60;ProxyAuthenticationRequired&#x60; &#x3D; 407  * &#x60;RequestTimeout&#x60; &#x3D; 408  * &#x60;Conflict&#x60; &#x3D; 409  * &#x60;Gone&#x60; &#x3D; 410  * &#x60;LengthRequired&#x60; &#x3D; 411  * &#x60;PreconditionFailed&#x60; &#x3D; 412  * &#x60;RequestEntityTooLarge&#x60; &#x3D; 413  * &#x60;RequestUriTooLong&#x60; &#x3D; 414  * &#x60;UnsupportedMediaType&#x60; &#x3D; 415  * &#x60;RequestedRangeNotSatisfiable&#x60; &#x3D; 416  * &#x60;ExpectationFailed&#x60; &#x3D; 417  * &#x60;MisdirectedRequest&#x60; &#x3D; 421  * &#x60;UnprocessableEntity&#x60; &#x3D; 422  * &#x60;Locked&#x60; &#x3D; 423  * &#x60;FailedDependency&#x60; &#x3D; 424  * &#x60;UpgradeRequired&#x60; &#x3D; 426  * &#x60;PreconditionRequired&#x60; &#x3D; 428  * &#x60;TooManyRequests&#x60; &#x3D; 429  * &#x60;RequestHeaderFieldsTooLarge&#x60; &#x3D; 431  * &#x60;UnavailableForLegalReasons&#x60; &#x3D; 451  * &#x60;InternalServerError&#x60; &#x3D; 500  * &#x60;NotImplemented&#x60; &#x3D; 501  * &#x60;BadGateway&#x60; &#x3D; 502  * &#x60;ServiceUnavailable&#x60; &#x3D; 503  * &#x60;GatewayTimeout&#x60; &#x3D; 504  * &#x60;HttpVersionNotSupported&#x60; &#x3D; 505  * &#x60;VariantAlsoNegotiates&#x60; &#x3D; 506  * &#x60;InsufficientStorage&#x60; &#x3D; 507  * &#x60;LoopDetected&#x60; &#x3D; 508  * &#x60;NotExtended&#x60; &#x3D; 510  * &#x60;NetworkAuthenticationRequired&#x60; &#x3D; 511   | [optional] 
**ErrorCode** | **String** | The error code of current exception | [optional] 
**ErrorMessage** | **String** | The error message of current exception | [optional] 
**RequestId** | **String** | the request id of response | [optional] 
**Timestamp** | **System.DateTime** | The timestamp of current response | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorModel = Initialize-Fly.ClientErrorModel  -StatusCode null `
 -ErrorCode null `
 -ErrorMessage null `
 -RequestId null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$ErrorModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
