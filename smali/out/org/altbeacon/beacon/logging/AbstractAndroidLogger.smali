.class abstract Lorg/altbeacon/beacon/logging/AbstractAndroidLogger;
.super Ljava/lang/Object;
.source "AbstractAndroidLogger.java"

# interfaces
.implements Lorg/altbeacon/beacon/logging/Logger;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 6
    array-length v0, p2

    if-nez v0, :cond_4

    goto :goto_8

    :cond_4
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    return-object p1
.end method
