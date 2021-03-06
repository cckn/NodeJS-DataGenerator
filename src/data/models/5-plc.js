import action from '../action'
import actionTypes from '../actionTypes'

const tableInfo = {
  tableName: 'plc_5_ro',
  dateTimeColmnName: 'w_dt',
}

const dataActions = [
  {
    name: 'AIRCON_MAX_VALUE',
    modbusAddress: 122,
    action: () => action(actionTypes.FIXED_VALUE, 30, null),
  },
  {
    name: 'AIRCON_MIN_VALUE',
    modbusAddress: 121,
    action: () => action(actionTypes.FIXED_VALUE, 20, null),
  },
  {
    name: 'AIRCON_STATUS',
    modbusAddress: 120,
    action: () => action(actionTypes.FIXED_VALUE, 0, null),
  },
  {
    name: 'EMERGENCY',
    modbusAddress: 42,
    action: () => action(actionTypes.FIXED_VALUE, 0, null),
  },
  {
    name: 'HUMIDITY',
    modbusAddress: 41,
    action: () =>
      action(actionTypes.RANDOM_VALUE, 43, { delta: 0.01, range: 20 }),
  },
  {
    name: 'TEMP',
    modbusAddress: 40,
    action: () =>
      action(actionTypes.RANDOM_VALUE, 20, { delta: 0.01, range: 2 }),
  },
]

export { tableInfo, dataActions }
