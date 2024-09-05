# ActiveTimeSlotsUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Mode** | [**TimeSlotModes**](TimeSlotModes.md) |  | [optional] 
**TimeSlots** | **Boolean[]** |  TimeSlots  Each element in the array corresponds to a specific time slot, with each slot representing a duration 15 minutes.  True indicates that the time slot is active and the Test should be enabled for its duration  It can represent time slots for either a week or a day.  If representing time slots for a week, the array should contain 7 * 24 * 4 &#x3D; 672 values.  If representing time slots for a day, the array should contain 24 * 4 &#x3D; 96 values. | [optional] 

## Examples

- Prepare the resource
```powershell
$ActiveTimeSlotsUpdate = Initialize-LEPSLoginEnterpriseActiveTimeSlotsUpdate  -Mode null `
 -TimeSlots null
```

- Convert the resource to JSON
```powershell
$ActiveTimeSlotsUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

