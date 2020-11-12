# getx_sample
Get centralizes the main resources for development (State, dependency, and route management), allowing you to add a single package to your pubspec, and start working. The only thing you need to do is update the Get dependency.

Getx is unorthodox with the standard approach, and while it does not completely ban the use of StatefulWidgets, InitState, etc., it always has a similar approach that can be cleaner. Controllers have life cycles, and when you need to make an API REST request, for example, you don’t depend on anything in the view. You can use onInit to initiate the Http call, and when the data arrives, the variables will be populated. As GetX is fully reactive (really, and works under streams), once the items are filled, all widgets that use that variable will be automatically updated in the view.

The Trident of GetX

    State Management
    Route Management
    Dependency Management

State Management

Currently, there are several state management for a flutter. Get isn’t better or worse than any other state manager, you can choose whatever you are comfortable with. and not the enemy of others.

Get has two different state managers:

    Simple state manager (known as GetBuilder).
    Reactive state manager (known as GetX).


