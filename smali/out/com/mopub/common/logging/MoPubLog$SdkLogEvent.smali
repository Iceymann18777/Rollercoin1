.class public final enum Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;
.super Ljava/lang/Enum;
.source "MoPubLog.java"

# interfaces
.implements Lcom/mopub/common/logging/MoPubLog$MPLogEventType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/logging/MoPubLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkLogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;",
        ">;",
        "Lcom/mopub/common/logging/MoPubLog$MPLogEventType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum INIT_FAILED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum INIT_FINISHED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

.field public static final enum INIT_STARTED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;


# instance fields
.field private mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field private mMessageFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 546
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "INIT_STARTED"

    const/4 v3, 0x0

    const-string v4, "SDK initialization started"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_STARTED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 551
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "INIT_FINISHED"

    const/4 v4, 0x1

    const-string v5, "SDK initialized and ready to display ads.\nInitialized adapters:\n{0}"

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FINISHED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 553
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "INIT_FAILED"

    const/4 v5, 0x2

    const-string v6, "SDK initialization failed - {0}\n{1}"

    invoke-direct {v0, v2, v5, v1, v6}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FAILED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 557
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "CUSTOM"

    const/4 v6, 0x3

    const-string v7, "SDK Log - {0}"

    invoke-direct {v0, v2, v6, v1, v7}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 562
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "CUSTOM_WITH_THROWABLE"

    const/4 v7, 0x4

    const-string v8, "SDK Log With Throwable - {0}, {1}"

    invoke-direct {v0, v2, v7, v1, v8}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 566
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "ERROR"

    const/4 v8, 0x5

    const-string v9, "SDK Error Log - {0}"

    invoke-direct {v0, v2, v8, v1, v9}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 571
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "ERROR_WITH_THROWABLE"

    const/4 v9, 0x6

    const-string v10, "SDK Error Log - {0}, {1}"

    invoke-direct {v0, v2, v9, v1, v10}, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    .line 542
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_STARTED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FINISHED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    aput-object v2, v1, v4

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FAILED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    aput-object v2, v1, v5

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    aput-object v2, v1, v6

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    aput-object v2, v1, v7

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/common/logging/MoPubLog$LogLevel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 576
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 577
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 578
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 580
    iput-object p3, p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 581
    iput-object p4, p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->mMessageFormat:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;
    .registers 2

    .line 542
    const-class v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;
    .registers 1

    .line 542
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    return-object v0
.end method


# virtual methods
.method public getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public varargs getMessage([Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 587
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->INIT_FINISHED:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    if-ne p0, v0, :cond_1d

    array-length v0, p1

    if-lez v0, :cond_1d

    const/4 v0, 0x0

    .line 588
    aget-object v1, p1, v0

    const-string v2, "\n"

    invoke-static {v1, v2}, Lcom/mopub/common/util/Strings;->getDelimitedString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v1, "No adapters initialized."

    .line 591
    aput-object v1, p1, v0

    goto :goto_1d

    .line 593
    :cond_1b
    aput-object v1, p1, v0

    .line 597
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->mMessageFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
