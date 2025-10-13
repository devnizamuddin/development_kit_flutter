# Development Kit Flutter

A comprehensive starter kit for Flutter developers designed to accelerate app development. This project provides a solid foundation, reusable components, pre-configured architecture, and best practices that can be leveraged across all your future Flutter projects.

## Features:

1. ### Architecture

- CLEAN Architecture Example

- SOLID Principle Example

2. ### Utilities

- Isolate Service

- API Service

- Theme Manager

3. ### Testing

- Unit testing

- Widget testing

- Integration testing

4. ### CI/CD

- GitHub Workflow

## Folder Architecture

```bash
lib/
├── main.dart
├── app.dart
├── injection*container.dart
│
├── core/
│ ├── constants/
│ │ ├── app_constants.dart
│ │ ├── api_constants.dart
│ │ └── storage_constants.dart
│ │
│ ├── errors/
│ │ ├── exceptions.dart
│ │ └── failures.dart
│ │
│ ├── network/
│ │ ├── network_info.dart
│ │ └── api_client.dart
│ │
│ ├── usecases/
│ │ └── usecase.dart
│ │
│ ├── utils/
│ │ ├── helpers.dart
│ │ ├── validators.dart
│ │ └── extensions.dart
│ │
│ └── theme/
│ ├── app_theme.dart
│ ├── app_colors.dart
│ └── app_text_styles.dart
│
├── features/
│ └── [feature_name]/
│ ├── data/
│ │ ├── datasources/
│ │ │ ├── [feature]\_local_datasource.dart
│ │ │ └── [feature]\_remote_datasource.dart
│ │ │
│ │ ├── models/
│ │ │ └── [feature]\_model.dart
│ │ │
│ │ └── repositories/
│ │ └── [feature]\_repository_impl.dart
│ │
│ ├── domain/
│ │ ├── entities/
│ │ │ └── [feature]\_entity.dart
│ │ │
│ │ ├── repositories/
│ │ │ └── [feature]\_repository.dart
│ │ │
│ │ └── usecases/
│ │ ├── get*[feature].dart
│ │ ├── create*[feature].dart
│ │ └── update*[feature].dart
│ │
│ └── presentation/
│ ├── bloc/
│ │ ├── [feature]\_bloc.dart
│ │ ├── [feature]\_event.dart
│ │ └── [feature]\_state.dart
│ │
│ ├── pages/
│ │ ├── [feature]\_page.dart
│ │ └── [feature]\_detail_page.dart
│ │
│ └── widgets/
│ ├── [feature]\_list_item.dart
│ └── [feature]\_form.dart
│
├── config/
│ ├── routes/
│ │ ├── app_router.dart
│ │ └── route_names.dart
│ │
│ └── environment/
│ ├── env_config.dart
│ └── env_constants.dart
│
└── shared/
├── widgets/
│ ├── loading_widget.dart
│ ├── error_widget.dart
│ └── custom_button.dart
│
└── utils/
└── shared_helpers.dart

test/
├── core/
│ ├── network/
│ │ └── network*info_test.dart
│ │
│ └── utils/
│ └── helpers_test.dart
│
├── features/
│ └── [feature_name]/
│ ├── data/
│ │ ├── datasources/
│ │ │ ├── [feature]\_local_datasource_test.dart
│ │ │ └── [feature]\_remote_datasource_test.dart
│ │ │
│ │ ├── models/
│ │ │ └── [feature]\_model_test.dart
│ │ │
│ │ └── repositories/
│ │ └── [feature]\_repository_impl_test.dart
│ │
│ ├── domain/
│ │ └── usecases/
│ │ ├── get*[feature]_test.dart
│ │ ├── create_[feature]_test.dart
│ │ └── update_[feature]\_test.dart
│ │
│ └── presentation/
│ └── bloc/
│ └── [feature]\_bloc_test.dart
│
└── fixtures/
└── [feature]\_fixtures.dart

```
