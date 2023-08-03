import {View, StyleSheet, Button, NativeModules} from 'react-native';
import React from 'react';

const {FoodDelivery} = NativeModules;

const App = () => {
  const onStartActivity = () => {
    FoodDelivery.startActivity();
  };

  const onEndActivity = () => {
    FoodDelivery.endActivity();
  };

  const updateActivity = () => {
    FoodDelivery.updateActivity('Updated Activity');
  };

  return (
    <View style={styles.container}>
      <Button title="Start Activity" onPress={onStartActivity} />
      <Button title="Update Activity" onPress={updateActivity} />
      <Button title="End Activity" onPress={onEndActivity} />
    </View>
  );
};

export default App;

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});
