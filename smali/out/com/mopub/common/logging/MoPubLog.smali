.class public Lcom/mopub/common/logging/MoPubLog;
.super Ljava/lang/Object;
.source "MoPubLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;,
        Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;,
        Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;,
        Lcom/mopub/common/logging/MoPubLog$AdLogEvent;,
        Lcom/mopub/common/logging/MoPubLog$MPLogEventType;,
        Lcom/mopub/common/logging/MoPubLog$LogLevel;,
        Lcom/mopub/common/logging/MoPubLog$LogLevelInt;
    }
.end annotation


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "MoPub"

.field private static final STACK_TRACE_LEVEL:I = 0x4

.field private static final sInstance:Lcom/mopub/common/logging/MoPubLog;


# instance fields
.field private mDefaultLogger:Lcom/mopub/common/logging/MoPubLogger;

.field private mLoggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mopub/common/logging/MoPubLogger;",
            "Lcom/mopub/common/logging/MoPubLog$LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private sLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 86
    new-instance v0, Lcom/mopub/common/logging/MoPubLog;

    invoke-direct {v0}, Lcom/mopub/common/logging/MoPubLog;-><init>()V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    iput-object v0, p0, Lcom/mopub/common/logging/MoPubLog;->sLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/logging/MoPubLog;->mLoggers:Ljava/util/Map;

    .line 89
    new-instance v0, Lcom/mopub/common/logging/MoPubDefaultLogger;

    invoke-direct {v0}, Lcom/mopub/common/logging/MoPubDefaultLogger;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/logging/MoPubLog;->mDefaultLogger:Lcom/mopub/common/logging/MoPubLogger;

    return-void
.end method

.method public static addLogger(Lcom/mopub/common/logging/MoPubLogger;)V
    .registers 2

    .line 104
    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->sLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->addLogger(Lcom/mopub/common/logging/MoPubLogger;Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    return-void
.end method

.method public static addLogger(Lcom/mopub/common/logging/MoPubLogger;Lcom/mopub/common/logging/MoPubLog$LogLevel;)V
    .registers 3

    .line 108
    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->mLoggers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 159
    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->logDeprecated(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->logDeprecated(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->logDeprecated(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getClassAndMethod()Landroidx/core/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 153
    new-instance v1, Landroidx/core/util/Pair;

    const/4 v2, 0x4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    aget-object v0, v0, v2

    .line 154
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .registers 1

    .line 120
    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->sLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->logDeprecated(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static varargs log(Landroidx/core/util/Pair;Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/logging/MoPubLog$MPLogEventType;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_6

    return-void

    .line 142
    :cond_6
    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->mLoggers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/logging/MoPubLogger;

    .line 143
    sget-object v2, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    iget-object v2, v2, Lcom/mopub/common/logging/MoPubLog;->mLoggers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    iget-object v2, v2, Lcom/mopub/common/logging/MoPubLog;->mLoggers:Ljava/util/Map;

    .line 144
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-virtual {v2}, Lcom/mopub/common/logging/MoPubLog$LogLevel;->intValue()I

    move-result v2

    invoke-interface {p2}, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;->getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/common/logging/MoPubLog$LogLevel;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_12

    .line 145
    iget-object v2, p0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 146
    invoke-interface {p2, p3}, Lcom/mopub/common/logging/MoPubLog$MPLogEventType;->getMessage([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-interface {v1, v2, v3, p1, v4}, Lcom/mopub/common/logging/MoPubLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_50
    return-void
.end method

.method public static varargs log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    .registers 4

    .line 124
    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->getClassAndMethod()Landroidx/core/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1, p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Landroidx/core/util/Pair;Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    .registers 4

    .line 130
    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->getClassAndMethod()Landroidx/core/util/Pair;

    move-result-object v0

    .line 131
    invoke-static {v0, p0, p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Landroidx/core/util/Pair;Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method private static logDeprecated(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 95
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    if-eqz p1, :cond_f

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_f
    const-string p0, ""

    :goto_11
    const/4 p1, 0x1

    aput-object p0, v1, p1

    .line 95
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method private static removeLogger(Lcom/mopub/common/logging/MoPubLogger;)V
    .registers 2

    .line 100
    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->mLoggers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V
    .registers 2

    .line 112
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/mopub/common/logging/MoPubLog;->sInstance:Lcom/mopub/common/logging/MoPubLog;

    iput-object p0, v0, Lcom/mopub/common/logging/MoPubLog;->sLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 115
    iget-object v0, v0, Lcom/mopub/common/logging/MoPubLog;->mDefaultLogger:Lcom/mopub/common/logging/MoPubLogger;

    invoke-static {v0, p0}, Lcom/mopub/common/logging/MoPubLog;->addLogger(Lcom/mopub/common/logging/MoPubLogger;Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 164
    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->logDeprecated(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->logDeprecated(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
