.class public Lcom/android/volley/NoConnectionError;
.super Lcom/android/volley/NetworkError;
.source "NoConnectionError.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/android/volley/NetworkError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/android/volley/NetworkError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
