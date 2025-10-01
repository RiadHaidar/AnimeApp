# cleanarch
This is an example of implementing Clean Architecture in Flutter.

Before jumping into explaining how I implemented Clean Architecture, I'd like to explain the project structure first:
We have mainly 2 Important folders:
1. Features Folder: Contains all the features of the App, where each feature follows the Clean Architecture Pattern.
2. Core Folder: Contains all the core components of the app, such as Utils, Constants, dependency injection, General Models like Error Handling etc..
    1. di folder: Contains all the dependency injection-related files.
        - I have added the injection of the datasource at the top of the class in this way, so i can use the same injected instance with any other injection needed.
        - Using LazySingleton() method,I used it so I can make sure that the instance is only created when it's needed, and reused if it already exists.
        - get_it works like this to register dependencies, registerationType(could be facotry singelton etc..)<TypeToRegister>(
        () => ConcreteImplementation(dependencies...)
        );

    2. Theming folder: Contains all the theming-related files.
    3. errir folder: Contains a generated error model just to simulate error handling.
    4. Widgets folder: Contains all the global widgets that are used across multiple screens.
   





As we all know, Clean Architecture focuses on the separation of concerns. It consists of 3 layers:
1. Presentation Layer (UI)
2. Domain Layer (Business Logic)
3. Data Layer (Data Access)

As shown in the photo below:




<img width="350" height="500" alt="https___dev-to-uploads s3 amazonaws com_uploads_articles_fqeiepngw5aeco73r3wx (1)" src="https://github.com/user-attachments/assets/9841601b-d917-4337-948f-ad4301941518" />





Im gonna Start explainging my thought process and implemntation a lyaer by layer, starting from the Data Layer.

## Data Layer is based on:
1. Data Sources.
2. Repositories.
3. Models.


### Data Source:
A data source can be either Remote or Local, each one has its own implementation for fetching data from different sources like API's or Database. However, since its just an example app, we dont really have any API or DB included, i just generated some dummy data needed for the app as a datasource.

- **Generated Mock Data**: [View Code](./lib/features/shows/data/data_sources/mock_data_source.dart#L8-L123)



### Repository:
The repository acts as a bridge between the domain layer and the data layer; it provides methods to fetch data from the data sources and returns them to the domain layer. The repository also handles caching and error handling.

The Repository here has to implement the Actual Repository Interface, which contains the raw methods that we need for our app.

In the Repository class, we usually don't add logic related to data manipulation; we focus on getting the data transferred between the two layers (DOMAIN & DATA).


The repository has a dependency on the data sources, so I inject it using Dependency Injection. [get_it package] [https://pub.dev/packages/get_it]

- **Repo Implementation**: [View Code](.lib/features/shows/data/repositories/shows_repository_implemntation.dart#L13-L77)

I have highlighted only the functions that I used basically, and added other functions as exmaples of what else can be done.

**Note: The reason for returning the Entity type of response is that the Entity, which is a major part of the domain layer, is what we want to send to the Presentation layer, or let's say, show the End User. The mapping is added here manually because it's just a small example, but usually, I'd create a Mapper class and call it to convert the response from the actual data object of the data source to the entity object of the domain layer, which I eventually need.**


**Note: I wrapped the response with Either, which is a part of functional programming to provide isolation of the results into LEFT, RIGHT, or let's say, Failure or Success. This help us in handling errors at any Layer.**


### Model:
Models are used to represent the data returned from the data sources. They should contain only the necessary fields and no business logic. In this case, I created a model called `ShowsResponse` which show an object has basic details like showId, Name, and some other details.
We have to consider that Models, reflect the pure raw data coming from data sources, even data we might not need later on a higher layer.








## Domain Layer is based on:
1. Use Cases.
2. Entities.
3. Interfaces (The Abstract Repo Class).
4. Mappers (Optional, or it depends on how big your app actually is and your business needs).



Considering that the domain layer is the middle layer, it transmits data between the presentation layer and the data layer; it doesn't do anything except pass the data around. It does not contain any UI related code or any business logic that is specific to the UI.
The logic it may contain is basically in the Use Cases, because Use Cases are defined by the busniess requirements, they decide what goes to the presentation layer, to be displayed to the user, and what stays hidden behind the scenes.


### Use Case:
Use cases are responsible for implementing the business logic of the application. Each use case represents a single action that can be performed by the user. For example, fetching shows a list, searching for a show, adding a show to favorites etc..

I only created a single usecase here, since we are just trying to portray the usage of clean architecture.

- **UseCase Implementation**: [View Code](./lib/features/shows/domain/use_cases/get_shows_use_case.dart#L13-L57)

Here you can see I have added around 4 functions in the class, and No its not Single Responsibility Principle Violation, because these functions are related to the same use case, and they are all part of the same business requirement. 

The Return Type of the function is Future<Either<Failure, List<Entity>>>, where Entity is the Entity Object that we will pass to the Presentation Layer, and Failure is the Error Handling Model that we have created earlier, which is the main point of using fpdart package.

**Note: The UseCase has a dependency on the Repository Interface, which is why I injected it in the DI class and passed it to the constructor of the UseCase. check reference  [View Code](./lib/core/di/dependency_injection.dart#L22-L25)**

### Entity:
Entities are similar to models, but they represent the data that is presented to the user. They should contain only the necessary fields and no business logic. In this case, I created an entity called `ShowResponseEntity` and `CharacterEntity`, which are the entities that we will pass to the Presentation Layer, which contains the same fields as the model, but with some modifications where we may add some additional fields or remove some fields that we don't need to display to the user.


### Interface [Repository Interface]:
Interfaces are used to define the contract between the domain layer and the data layer. They specify the methods that must be implemented by the repositories. In this case, I created an interface called `ShowRepository` which defines the methods that must be implemented by the repository.







## Presentation Layer is based on:
1. Screens.
2. Widgets.
3. Logic Holders (In case of flutter, it will be based on your state management solution; here I used Bloc, Cubit).


## Logic Holders:
I defined the ShowsBloc class, which extends Cubit<ShowsState>, and depends on the GetShowsUseCase, which is the use case that we created earlier.
It emits states to the UI, listens to events from the UI, and calls the use case methods accordingly.

For instance, once the shows screen is opened, after the initial shows sstate is emitted, the function getShows() is called, which calls the use case method getShows(), and emits the state accordingly.
If there is an error, it catches the error and emits the state accordingly.

This is the most important part of the presentation layer, where we handle the UI logic and listen to events from the UI, and emit states to the UI using BlocBuilder, BlocListeneter, or BlocConsumer.


- **Cubit Implementation**: [View Code](./lib/features/shows/presentation/logic/shows_cubit.dart#L8-L66)


### Screens:
Screens are the UI components that users interact with. They are responsible for displaying the data to the user and allowing them to perform actions. In this case, I created a screen called `ShowsScreen` which displays the list of shows fetched from the data layer.


### Widgets:
Widgets are reusable UI components that can be used throughout the same features, and not the ones I'm going to use globally.


**Note: The screen has to be wrapped in a bloc provider, so the bloc can be accessed by the child widgets and the screen can get updated based on the states emitted by the bloc. See Reference [View Code](./lib/features/shows/presentation/screen/shows_screen.dart#L20-L26) [Notice the usage of dependecy injection as well]**





App Video:

https://github.com/user-attachments/assets/eb932810-dfca-4df1-aedc-304158f49aaf



Figma Design:

https://www.figma.com/design/yfU8SiZ263VG5eaDZscomn/Flutter-Task-1?node-id=1-8&t=If1imZBhdaMFVe9h-0

