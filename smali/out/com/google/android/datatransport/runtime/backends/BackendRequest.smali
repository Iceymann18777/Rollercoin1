.class public abstract Lcom/google/android/datatransport/runtime/backends/BackendRequest;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-runtime@@2.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/datatransport/runtime/backends/BackendRequest$Builder;
    .registers 1

    .line 36
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/backends/AutoValue_BackendRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getEvents()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/EventInternal;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtras()[B
.end method
