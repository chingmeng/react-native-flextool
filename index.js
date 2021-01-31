
import { NativeModules } from 'react-native';

const { RNFlipboardFlex } = NativeModules;
const RNFlipboardFlexFallback = require('./default').default;

export default RNFlipboardFlex || RNFlipboardFlexFallback;