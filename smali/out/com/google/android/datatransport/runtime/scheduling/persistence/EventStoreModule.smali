.class public abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-runtime@@2.2.0"


# direct methods
.method static schemaVersion()I
    .registers 1

    .line 42
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->SCHEMA_VERSION:I

    return v0
.end method

.method static storeConfig()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;
    .registers 1

    .line 30
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    return-object v0
.end method
