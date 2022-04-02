.class abstract Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-runtime@@2.2.0"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/TransportRuntimeComponent$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/TransportRuntimeComponent;->getEventStore()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->close()V

    return-void
.end method

.method abstract getEventStore()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
.end method

.method abstract getTransportRuntime()Lcom/google/android/datatransport/runtime/TransportRuntime;
.end method
