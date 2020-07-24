import Scenario from './Scenario'
import { NativeModules } from 'react-native'

export class MetadataNativeUnhandledScenario extends Scenario {
  constructor(configuration, extraData, jsConfig) {
    super()
    configuration.configMetaData = {
      "some_data": "set via config",
      "cleared_data": "clear me"
    }
  }

  run() {
    Bugsnag.clearMetadata('nativedata', 'cleared_data')
    setTimeout(() => {
      NativeModules.BugsnagTestInterface.runScenario('MetadataNativeUnhandledScenario', () => {})
    }, 500)
  }
}
