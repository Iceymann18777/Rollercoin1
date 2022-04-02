.class public final Lorg/altbeacon/beacon/logging/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static sLogger:Lorg/altbeacon/beacon/logging/Logger;

.field private static sVerboseLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    invoke-static {}, Lorg/altbeacon/beacon/logging/Loggers;->infoLogger()Lorg/altbeacon/beacon/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lorg/altbeacon/beacon/logging/LogManager;->sVerboseLoggingEnabled:Z

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 112
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 193
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 207
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/altbeacon/beacon/logging/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 139
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isVerboseLoggingEnabled()Z
    .registers 1

    .line 62
    sget-boolean v0, Lorg/altbeacon/beacon/logging/LogManager;->sVerboseLoggingEnabled:Z

    return v0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 166
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2}, Lorg/altbeacon/beacon/logging/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 180
    sget-object v0, Lorg/altbeacon/beacon/logging/LogManager;->sLogger:Lorg/altbeacon/beacon/logging/Logger;

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/altbeacon/beacon/logging/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
