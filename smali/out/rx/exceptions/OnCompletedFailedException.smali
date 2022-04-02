.class public final Lrx/exceptions/OnCompletedFailedException;
.super Ljava/lang/RuntimeException;
.source "OnCompletedFailedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    if-eqz p2, :cond_3

    goto :goto_8

    .line 47
    :cond_3
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-direct {p2}, Ljava/lang/NullPointerException;-><init>()V

    :goto_8
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
