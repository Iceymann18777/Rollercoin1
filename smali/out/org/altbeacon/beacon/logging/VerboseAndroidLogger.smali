.class final Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;
.super Lorg/altbeacon/beacon/logging/AbstractAndroidLogger;
.source "VerboseAndroidLogger.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/altbeacon/beacon/logging/AbstractAndroidLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 42
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 72
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 77
    invoke-virtual {p0, p3, p4}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 52
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 62
    invoke-virtual {p0, p2, p3}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 67
    invoke-virtual {p0, p3, p4}, Lorg/altbeacon/beacon/logging/VerboseAndroidLogger;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
