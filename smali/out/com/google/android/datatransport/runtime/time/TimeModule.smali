.class public abstract Lcom/google/android/datatransport/runtime/time/TimeModule;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-runtime@@2.2.0"


# direct methods
.method static eventClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .registers 1

    .line 25
    new-instance v0, Lcom/google/android/datatransport/runtime/time/WallTimeClock;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/WallTimeClock;-><init>()V

    return-object v0
.end method

.method static uptimeClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .registers 1

    .line 31
    new-instance v0, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/UptimeClock;-><init>()V

    return-object v0
.end method
