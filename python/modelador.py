#Run this file to create a model to be used in Rust

import tensorflow as tf
from math import e as euler
from tensorflow.keras.layers import Dense

#Define a custom keras model
class custom_model(tf.keras.Model):
    def __init__(self, *args, **kwargs):
         super(custom_model, self).__init__(*args, **kwargs)
         custom_activation = lambda x: 1 / (1 + euler ** (-1.0 * x))
         self.dense_1 = Dense(3, name="test_in", input_dim=2, activation=custom_activation)
         self.dense_2 = Dense(30, name="oculta1", activation=custom_activation)
         self.dense_3 = Dense(5, name="test_out", activation=custom_activation)
    #Call function used to make predictions from Rust
    @tf.function
    def call(self, inputs):
        x = self.dense_1(inputs)
        y = self.dense_2(x)
        return self.dense_3(y)
    #Train function called from Rust which uses the keras model innate train_step function
    @tf.function
    def training(self, train_data):
        loss = self.train_step(train_data)['loss']
        return loss

#Create model
test_model = custom_model()

#Compile model
test_model.compile(optimizer ='sgd', loss='mse', metrics = ['mae'])

#Fit on some data using the keras fit method
test_model.fit([[1.0, 0.0, 0.0], [0.0,0.0, 0.0], [0.0, 1.0, 0.0], [1.0, 1.0, 0.0]], [[0.0,0.0,1.0,0.0,0.0], [0.0,0.0,1.0,0.0,0.0], [0.0,0.0,1.0,0.0,0.0], [0.0,0.0,1.0,0.0,0.0]], batch_size=1, epochs=100, verbose=0)

#Predict a value using the keras predict function
print(f"Test-Prediction: {test_model.predict([[1.0, 0.0, 0.0]])}")

#Get concrete function for the call method
pred_output = test_model.call.get_concrete_function(tf.TensorSpec(shape=[1, 3], dtype=tf.float32, 
name='inputs'))

#Get concrete function for the training method
train_output = test_model.training.get_concrete_function((tf.TensorSpec(shape=[1,3], dtype=tf.float32, name="training_input"), tf.TensorSpec(shape=[1,1], dtype=tf.float32, name="training_target")))

#Saving the model, explictly adding the concrete functions as signatures
test_model.save('custom_model', save_format='tf', signatures={'train': train_output, 'pred': pred_output})
